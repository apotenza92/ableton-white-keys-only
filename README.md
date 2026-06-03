# White Keys Only

Max for Live MIDI effect that maps only the white keys of a MIDI keyboard to a selected target key and scale.

## What it does

- White keys are treated as scale degrees: C D E F G A B.
- The selected root transposes those degrees into another key.
- The selected scale changes the interval pattern.
- Black keys are ignored.
- Note-off messages are paired with their remapped note-on messages, so sustained notes release correctly.

## Files

- `white-keys-only.maxpat` - Max patch for the MIDI effect.
- `white-keys-only.js` - mapping logic used by the Max `js` object.
- `white-keys-only-test.maxpat` - Max test patch with an on-screen keyboard.

## Try it in Live

1. Open Ableton Live Suite.
2. Create a MIDI track with an instrument.
3. Open `white-keys-only.maxpat` in Max.
4. Save it as a Max for Live MIDI device, usually as `White Keys Only.amxd`.
5. Put the device before your instrument on the MIDI track.
6. Set `Root` from `0` to `11`, where `0=C`, `1=C#`, `2=D`, and so on.
7. Pick a scale.
8. Play only the white keys.

## Test it in Max first

Open `white-keys-only-test.maxpat` in Max. It has an on-screen keyboard, so you can click notes without setting up Live first.

If you do not hear anything, open Max's MIDI setup and choose a MIDI output, or use the Max default synth if it is available.

The test patch proves the note mapping logic. The `.amxd` device is the version that belongs inside an Ableton MIDI track.

## Root Values

| Value | Root |
| --- | --- |
| 0 | C |
| 1 | C# / Db |
| 2 | D |
| 3 | D# / Eb |
| 4 | E |
| 5 | F |
| 6 | F# / Gb |
| 7 | G |
| 8 | G# / Ab |
| 9 | A |
| 10 | A# / Bb |
| 11 | B |

## Notes

This is intentionally a Max for Live device rather than an Ableton Extension SDK project. The Extensions SDK is useful for one-shot operations on clips and Sets; this project needs real-time MIDI processing in the track signal path.
