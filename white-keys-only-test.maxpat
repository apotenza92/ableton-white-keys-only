{
  "patcher": {
    "fileversion": 1,
    "appversion": {
      "major": 8,
      "minor": 6,
      "revision": 0,
      "architecture": "x64",
      "modernui": 1
    },
    "classnamespace": "box",
    "rect": [100.0, 100.0, 720.0, 420.0],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "boxes": [
      {
        "box": {
          "id": "obj-kslider",
          "maxclass": "kslider",
          "numinlets": 2,
          "numoutlets": 2,
          "outlettype": ["int", "int"],
          "parameter_enable": 0,
          "patching_rect": [48.0, 86.0, 336.0, 78.0],
          "presentation": 1,
          "presentation_rect": [24.0, 78.0, 336.0, 78.0]
        }
      },
      {
        "box": {
          "id": "obj-pack",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [48.0, 190.0, 78.0, 22.0],
          "text": "pack 0 0 1"
        }
      },
      {
        "box": {
          "id": "obj-js",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [48.0, 238.0, 145.0, 22.0],
          "text": "js white-keys-only.js"
        }
      },
      {
        "box": {
          "id": "obj-unpack",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "int", "int"],
          "patching_rect": [48.0, 286.0, 86.0, 22.0],
          "text": "unpack 0 0 1"
        }
      },
      {
        "box": {
          "id": "obj-noteout",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 0,
          "patching_rect": [48.0, 336.0, 58.0, 22.0],
          "text": "noteout"
        }
      },
      {
        "box": {
          "id": "obj-output-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [185.0, 286.0, 120.0, 20.0],
          "presentation": 1,
          "presentation_rect": [24.0, 178.0, 120.0, 20.0],
          "text": "Mapped output"
        }
      },
      {
        "box": {
          "id": "obj-output-pitch",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "bang"],
          "patching_rect": [185.0, 314.0, 52.0, 22.0],
          "presentation": 1,
          "presentation_rect": [24.0, 204.0, 52.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-output-velocity",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "bang"],
          "patching_rect": [250.0, 314.0, 52.0, 22.0],
          "presentation": 1,
          "presentation_rect": [88.0, 204.0, 52.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-output-help",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [185.0, 342.0, 280.0, 20.0],
          "presentation": 1,
          "presentation_rect": [154.0, 207.0, 280.0, 20.0],
          "text": "pitch / velocity"
        }
      },
      {
        "box": {
          "id": "obj-root-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [430.0, 72.0, 120.0, 20.0],
          "presentation": 1,
          "presentation_rect": [386.0, 78.0, 120.0, 20.0],
          "text": "Root (0=C, 11=B)"
        }
      },
      {
        "box": {
          "id": "obj-root",
          "maxclass": "number",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": ["", "bang"],
          "patching_rect": [430.0, 100.0, 52.0, 22.0],
          "presentation": 1,
          "presentation_rect": [386.0, 104.0, 52.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-root-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [430.0, 145.0, 58.0, 22.0],
          "text": "root $1"
        }
      },
      {
        "box": {
          "id": "obj-scale-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [540.0, 72.0, 120.0, 20.0],
          "presentation": 1,
          "presentation_rect": [484.0, 78.0, 120.0, 20.0],
          "text": "Scale"
        }
      },
      {
        "box": {
          "id": "obj-scale",
          "items": ["major", ",", "natural_minor", ",", "harmonic_minor", ",", "melodic_minor", ",", "dorian", ",", "phrygian", ",", "lydian", ",", "mixolydian", ",", "locrian", ",", "major_pentatonic", ",", "minor_pentatonic"],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": ["int", "", ""],
          "patching_rect": [540.0, 100.0, 160.0, 22.0],
          "presentation": 1,
          "presentation_rect": [484.0, 104.0, 160.0, 22.0]
        }
      },
      {
        "box": {
          "id": "obj-scale-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [""],
          "patching_rect": [540.0, 145.0, 62.0, 22.0],
          "text": "scale $1"
        }
      }
    ],
    "lines": [
      { "patchline": { "source": ["obj-kslider", 0], "destination": ["obj-pack", 0] } },
      { "patchline": { "source": ["obj-kslider", 1], "destination": ["obj-pack", 1] } },
      { "patchline": { "source": ["obj-pack", 0], "destination": ["obj-js", 0] } },
      { "patchline": { "source": ["obj-js", 0], "destination": ["obj-unpack", 0] } },
      { "patchline": { "source": ["obj-unpack", 0], "destination": ["obj-noteout", 0] } },
      { "patchline": { "source": ["obj-unpack", 1], "destination": ["obj-noteout", 1] } },
      { "patchline": { "source": ["obj-unpack", 2], "destination": ["obj-noteout", 2] } },
      { "patchline": { "source": ["obj-unpack", 0], "destination": ["obj-output-pitch", 0] } },
      { "patchline": { "source": ["obj-unpack", 1], "destination": ["obj-output-velocity", 0] } },
      { "patchline": { "source": ["obj-root", 0], "destination": ["obj-root-message", 0] } },
      { "patchline": { "source": ["obj-root-message", 0], "destination": ["obj-js", 0] } },
      { "patchline": { "source": ["obj-scale", 0], "destination": ["obj-scale-message", 0] } },
      { "patchline": { "source": ["obj-scale-message", 0], "destination": ["obj-js", 0] } }
    ]
  }
}
