autowatch = 1;
inlets = 1;
outlets = 1;
setoutletassist(0, "mapped MIDI notes or status messages");

var rootNote = 0;
var scaleName = "major";
var liveScaleMode = 1;
var liveScaleIntervals = null;
var liveApis = [];
var activeNotes = {};

var WHITE_KEY_TO_DEGREE = {
  0: { degree: 0, octaveShift: 0 },
  2: { degree: 1, octaveShift: 0 },
  4: { degree: 2, octaveShift: 0 },
  5: { degree: 3, octaveShift: 0 },
  7: { degree: 4, octaveShift: 0 },
  9: { degree: 5, octaveShift: 0 },
  11: { degree: 6, octaveShift: 0 }
};

var SCALES = {
  major: [0, 2, 4, 5, 7, 9, 11],
  natural_minor: [0, 2, 3, 5, 7, 8, 10],
  harmonic_minor: [0, 2, 3, 5, 7, 8, 11],
  melodic_minor: [0, 2, 3, 5, 7, 9, 11],
  dorian: [0, 2, 3, 5, 7, 9, 10],
  phrygian: [0, 1, 3, 5, 7, 8, 10],
  lydian: [0, 2, 4, 6, 7, 9, 11],
  mixolydian: [0, 2, 4, 5, 7, 9, 10],
  locrian: [0, 1, 3, 5, 6, 8, 10],
  major_pentatonic: [0, 2, 4, 7, 9],
  minor_pentatonic: [0, 3, 5, 7, 10]
};

var SCALE_ORDER = [
  "major",
  "natural_minor",
  "harmonic_minor",
  "melodic_minor",
  "dorian",
  "phrygian",
  "lydian",
  "mixolydian",
  "locrian",
  "major_pentatonic",
  "minor_pentatonic"
];

var NOTE_NAMES = ["C", "C#", "D", "Eb", "E", "F", "F#", "G", "Ab", "A", "Bb", "B"];

function root(value) {
  rootNote = clamp(Math.floor(value), 0, 11);
  scaleinfo();
}

function scale(value) {
  if (typeof value === "number") {
    scaleName = SCALE_ORDER[clamp(Math.floor(value), 0, SCALE_ORDER.length - 1)];
    scaleinfo();
    return;
  }

  var normalised = String(value).toLowerCase().replace(/[\s-]+/g, "_");
  if (SCALES[normalised]) {
    scaleName = normalised;
    scaleinfo();
  }
}

function initlive() {
  if (typeof LiveAPI === "undefined") {
    return;
  }

  liveApis = [
    observeLiveProperty("root_note", handleLiveRootNote),
    observeLiveProperty("scale_name", handleLiveScaleName),
    observeLiveProperty("scale_intervals", handleLiveScaleIntervals),
    observeLiveProperty("scale_mode", handleLiveScaleMode)
  ];

  polllive();
}

function polllive() {
  if (typeof LiveAPI === "undefined") {
    return;
  }

  readLiveProperty("root_note", handleLiveRootNote);
  readLiveProperty("scale_name", handleLiveScaleName);
  readLiveProperty("scale_intervals", handleLiveScaleIntervals);
  readLiveProperty("scale_mode", handleLiveScaleMode);
}

function observeLiveProperty(propertyName, callback) {
  var api = new LiveAPI(function(args) {
    callback(args);
  }, "live_set");

  api.property = propertyName;
  readLiveProperty(propertyName, callback);
  return api;
}

function readLiveProperty(propertyName, callback) {
  try {
    var api = new LiveAPI(null, "live_set");
    callback(api.get(propertyName));
  } catch (error) {
    post("White Keys Only: could not read Live property " + propertyName + "\n");
  }
}

function handleLiveRootNote(value) {
  var parsed = firstNumber(value);
  if (parsed !== null) {
    rootNote = clamp(parsed, 0, 11);
    scaleinfo();
  }
}

function handleLiveScaleName(value) {
  var parsed = firstString(value);
  if (parsed) {
    scaleName = String(parsed);
    scaleinfo();
  }
}

function handleLiveScaleIntervals(value) {
  var intervals = numbersFrom(value);
  if (intervals.length > 0) {
    liveScaleIntervals = intervals.map(function(interval) {
      return clamp(Math.floor(interval), 0, 11);
    });
  }
}

function handleLiveScaleMode(value) {
  var parsed = firstNumber(value);
  if (parsed !== null) {
    liveScaleMode = parsed ? 1 : 0;
    status();
  }
}

function status() {
  scaleinfo();
}

function scaleinfo() {
  if (liveScaleMode) {
    outlet(0, ["scaleinfo", noteName(rootNote)].concat(displayScaleName(scaleName)));
  } else {
    outlet(0, ["scaleinfo", "Enable", "Scale", "Mode"]);
  }
}

function list() {
  var args = arrayfromargs(arguments);
  if (args.length < 2) {
    return;
  }

  var inputPitch = Math.floor(args[0]);
  var velocity = Math.floor(args[1]);
  var channel = args.length > 2 ? Math.floor(args[2]) : 1;
  var key = channel + ":" + inputPitch;

  if (velocity <= 0) {
    var mappedOff = activeNotes[key];
    if (mappedOff !== undefined) {
      delete activeNotes[key];
      outlet(0, [mappedOff, 0, channel]);
    }
    return;
  }

  if (!liveScaleMode) {
    scaleinfo();
    return;
  }

  var mappedPitch = mapPitch(inputPitch);
  if (mappedPitch === null) {
    outlet(0, ["inputkey", noteName(inputPitch) + "-ignored"]);
    outlet(0, ["outputkey", "-"]);
    return;
  }

  activeNotes[key] = mappedPitch;
  outlet(0, ["inputkey", noteNameWithOctave(inputPitch)]);
  outlet(0, ["outputkey", noteNameWithOctave(mappedPitch)]);
  outlet(0, [mappedPitch, velocity, channel]);
}

function allnotesoff() {
  for (var key in activeNotes) {
    if (!activeNotes.hasOwnProperty(key)) {
      continue;
    }

    var parts = key.split(":");
    outlet(0, [activeNotes[key], 0, parseInt(parts[0], 10)]);
  }
  activeNotes = {};
}

function mapPitch(inputPitch) {
  var pitchClass = positiveModulo(inputPitch, 12);
  var degreeInfo = WHITE_KEY_TO_DEGREE[pitchClass];

  if (!degreeInfo) {
    return null;
  }

  var sourceOctave = Math.floor(inputPitch / 12);
  var scale = liveScaleMode && liveScaleIntervals && liveScaleIntervals.length
    ? liveScaleIntervals
    : SCALES[scaleName] || SCALES.major;
  var degree = degreeInfo.degree % scale.length;
  var wrappedOctave = Math.floor(degreeInfo.degree / scale.length);
  var mapped = sourceOctave * 12 + rootNote + scale[degree] + wrappedOctave * 12;

  return clamp(mapped, 0, 127);
}

function positiveModulo(value, divisor) {
  return ((value % divisor) + divisor) % divisor;
}

function clamp(value, min, max) {
  return Math.max(min, Math.min(max, value));
}

function noteName(value) {
  return NOTE_NAMES[positiveModulo(Math.floor(value), 12)];
}

function noteNameWithOctave(value) {
  var pitch = clamp(Math.floor(value), 0, 127);
  return noteName(pitch) + String(Math.floor(pitch / 12) - 1);
}

function displayScaleName(value) {
  return String(value).replace(/_/g, " ").split(/\s+/);
}

function firstNumber(value) {
  var values = numbersFrom(value);
  return values.length ? values[0] : null;
}

function firstString(value) {
  if (value === null || value === undefined) {
    return null;
  }

  if (typeof value === "string") {
    return value;
  }

  if (value instanceof Array) {
    for (var i = 0; i < value.length; i++) {
      if (typeof value[i] === "string" && isNaN(Number(value[i]))) {
        return value[i];
      }
    }
  }

  return String(value);
}

function numbersFrom(value) {
  if (value === null || value === undefined) {
    return [];
  }

  var source = value instanceof Array ? value : [value];
  var result = [];

  for (var i = 0; i < source.length; i++) {
    var number = Number(source[i]);
    if (!isNaN(number)) {
      result.push(number);
    }
  }

  return result;
}
