#!/usr/bin/env node

const fs = require("fs");
const path = require("path");

const repoRoot = path.resolve(__dirname, "..");
const patchPath = path.join(repoRoot, "white-keys-only.maxpat");
const amxdPath = path.join(repoRoot, "White Keys Only.amxd");
const jsPath = path.join(repoRoot, "white-keys-only.js");

function readJson(filePath) {
  return JSON.parse(fs.readFileSync(filePath, "utf8"));
}

function boxesById(patch) {
  const boxes = {};
  for (const item of patch.patcher.boxes) {
    boxes[item.box.id] = item.box;
  }
  return boxes;
}

function hasLine(patch, sourceId, sourceOutlet, destinationId, destinationInlet) {
  return patch.patcher.lines.some((item) => {
    const line = item.patchline;
    return (
      line.source[0] === sourceId &&
      line.source[1] === sourceOutlet &&
      line.destination[0] === destinationId &&
      line.destination[1] === destinationInlet
    );
  });
}

function assertLine(patch, sourceId, sourceOutlet, destinationId, destinationInlet) {
  if (!hasLine(patch, sourceId, sourceOutlet, destinationId, destinationInlet)) {
    throw new Error(
      `Missing patch cord: ${sourceId}:${sourceOutlet} -> ${destinationId}:${destinationInlet}`,
    );
  }
}

function extractAmxdPatch(filePath) {
  const data = fs.readFileSync(filePath);
  if (data.subarray(0, 4).toString("ascii") !== "ampf") {
    throw new Error("AMXD does not start with ampf header");
  }

  const chunkIndex = data.indexOf(Buffer.from("ptch"));
  if (chunkIndex < 0) {
    throw new Error("AMXD does not contain a ptch chunk");
  }

  const size = data.readUInt32LE(chunkIndex + 4);
  return JSON.parse(data.subarray(chunkIndex + 8, chunkIndex + 8 + size).toString("utf8"));
}

function validatePatch(patch, label) {
  const boxes = boxesById(patch);

  if (boxes["obj-js"].numoutlets !== 2) {
    throw new Error(`${label}: JS object must have two outlets`);
  }

  if (boxes["obj-note-unpack"].text !== "unpack 0 0") {
    throw new Error(`${label}: midiparse note list must unpack pitch and velocity only`);
  }

  if (boxes["obj-note-format-pack"].text !== "pack 0 0") {
    throw new Error(`${label}: MIDI output must repack pitch and velocity into a note list`);
  }

  assertLine(patch, "obj-midiin", 0, "obj-midiparse", 0);
  assertLine(patch, "obj-midiparse", 0, "obj-note-unpack", 0);
  assertLine(patch, "obj-note-unpack", 0, "obj-pack", 0);
  assertLine(patch, "obj-note-unpack", 1, "obj-pack", 1);
  assertLine(patch, "obj-pack", 0, "obj-js", 0);

  assertLine(patch, "obj-js", 0, "obj-unpack", 0);
  assertLine(patch, "obj-unpack", 0, "obj-note-format-pack", 0);
  assertLine(patch, "obj-unpack", 1, "obj-note-format-pack", 1);
  assertLine(patch, "obj-note-format-pack", 0, "obj-midiformat", 0);
  assertLine(patch, "obj-unpack", 2, "obj-midiformat", 6);
  assertLine(patch, "obj-midiformat", 0, "obj-midiout", 0);

  assertLine(patch, "obj-js", 1, "obj-route-status", 0);

  for (const badInlet of [1, 2]) {
    if (hasLine(patch, "obj-unpack", badInlet, "obj-midiformat", badInlet)) {
      throw new Error(`${label}: MIDI velocity/channel is wired to the wrong midiformat inlet`);
    }
  }
}

function validateJsMidiOutput() {
  const events = [];
  global.outlet = (index, ...args) => events.push({ index, args });
  global.post = () => {};
  global.setoutletassist = () => {};
  global.setinletassist = () => {};
  global.arrayfromargs = (args) => Array.prototype.slice.call(args);

  eval(`${fs.readFileSync(jsPath, "utf8")}
handleLiveRootNote(0);
handleLiveScaleName(["Phrygian Dominant"]);
handleLiveScaleIntervals([0, 1, 4, 5, 7, 8, 11]);
list(64, 100, 1);
list(64, 0, 1);
list(61, 100, 1);
`);

  const normalisedEvents = events.map((event) => ({
    index: event.index,
    args: Array.isArray(event.args[0]) ? event.args[0] : event.args,
  }));
  const midiEvents = normalisedEvents.filter((event) => event.index === 0);

  if (!midiEvents.some((event) => JSON.stringify(event.args) === "[64,100,1]")) {
    throw new Error("JS did not emit a note-on MIDI list for E4");
  }

  if (!midiEvents.some((event) => JSON.stringify(event.args) === "[64,0,1]")) {
    throw new Error("JS did not emit a note-off MIDI list for E4");
  }

  if (midiEvents.some((event) => event.args.some((value) => typeof value === "string"))) {
    throw new Error("JS emitted display text on the MIDI outlet");
  }

  if (
    !normalisedEvents.some(
      (event) => event.index === 1 && event.args.join(" ") === "inputkey C# ignored",
    )
  ) {
    throw new Error("JS did not report ignored black-key input");
  }

  if (
    !normalisedEvents.some(
      (event) => event.index === 1 && event.args.join(" ") === "outputkey C# ignored",
    )
  ) {
    throw new Error("JS did not mirror ignored black-key output");
  }
}

validatePatch(readJson(patchPath), "maxpat");
validatePatch(extractAmxdPatch(amxdPath), "amxd");
validateJsMidiOutput();

console.log("Device validation passed");
