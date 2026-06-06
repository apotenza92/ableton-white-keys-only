# White Keys Only

Max for Live MIDI effect that maps only the white keys of a MIDI keyboard to a selected target key and scale.

## What it does

- White keys are treated as scale degrees: C D E F G A B.
- The selected root transposes those degrees into another key.
- The selected scale changes the interval pattern.
- Black keys are ignored.
- Note-off messages are paired with their remapped note-on messages, so sustained notes release correctly.
- The device shows `Now`, `In`, and `Out`: the current Live scale, the latest input note, and the mapped output note.

## Files

- `white-keys-only.maxpat` - Max patch for the MIDI effect.
- `white-keys-only.js` - mapping logic used by the Max `js` object.
- `White Keys Only.amxd` - Max for Live MIDI device generated from the master patch.

## Install and try it in Live

1. Keep this project folder together so `White Keys Only.amxd` and `white-keys-only.js` stay in the same folder.
2. In Live's Browser, add this whole folder to `Places`, or drag the folder somewhere you normally keep Max for Live devices.
3. Create a MIDI track with an instrument.
4. Drag `White Keys Only.amxd` from the folder onto the MIDI track, before the instrument.
5. Enable Live Scale Mode and choose a root and scale.
6. Play only the white keys.

You only need to open `white-keys-only.maxpat` in Max if you want to edit the patch and regenerate the device.

## Check it in Live

Put the device before an instrument on a MIDI track and play a few white keys.

The compact display shows the active scale, the latest input note, and the mapped output note. `Now` shows `Enable Scale Mode` when Live Scale Mode is off.

## Notes

This is intentionally a Max for Live device rather than an Ableton Extension SDK project. The Extensions SDK is useful for one-shot operations on clips and Sets; this project needs real-time MIDI processing in the track signal path.
