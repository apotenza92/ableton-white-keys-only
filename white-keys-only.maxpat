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
    "rect": [
      100.0,
      100.0,
      420.0,
      300.0
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12.0,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15.0,
      15.0
    ],
    "objectsnaponopen": 1,
    "boxes": [
      {
        "box": {
          "id": "obj-midiin",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            60.0,
            80.0,
            54.0,
            22.0
          ],
          "text": "midiin"
        }
      },
      {
        "box": {
          "id": "obj-midiparse",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 8,
          "outlettype": [
            "int",
            "int",
            "int",
            "int",
            "int",
            "list",
            "int",
            ""
          ],
          "patching_rect": [
            60.0,
            105.0,
            120.0,
            22.0
          ],
          "text": "midiparse"
        }
      },
      {
        "box": {
          "id": "obj-pack",
          "maxclass": "newobj",
          "numinlets": 3,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            60.0,
            150.0,
            78.0,
            22.0
          ],
          "text": "pack 0 0 1"
        }
      },
      {
        "box": {
          "id": "obj-js",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            60.0,
            205.0,
            145.0,
            22.0
          ],
          "text": "js white-keys-only.js"
        }
      },
      {
        "box": {
          "id": "obj-unpack",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "int",
            "int"
          ],
          "patching_rect": [
            60.0,
            270.0,
            86.0,
            22.0
          ],
          "text": "unpack 0 0 1"
        }
      },
      {
        "box": {
          "id": "obj-route-status",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 5,
          "outlettype": [
            "",
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            60.0,
            240.0,
            230.0,
            22.0
          ],
          "text": "route status scaleinfo inputkey outputkey"
        }
      },
      {
        "box": {
          "id": "obj-midiformat",
          "maxclass": "newobj",
          "numinlets": 7,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            60.0,
            335.0,
            86.0,
            22.0
          ],
          "text": "midiformat"
        }
      },
      {
        "box": {
          "id": "obj-midiout",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            60.0,
            390.0,
            58.0,
            22.0
          ],
          "text": "midiout"
        }
      },
      {
        "box": {
          "id": "obj-root-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            300.0,
            72.0,
            120.0,
            20.0
          ],
          "text": "Root",
          "presentation": 0,
          "presentation_rect": [
            12.0,
            10.0,
            34.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-root",
          "maxclass": "live.numbox",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            "float"
          ],
          "parameter_enable": 1,
          "patching_rect": [
            300.0,
            100.0,
            70.0,
            22.0
          ],
          "presentation": 0,
          "presentation_rect": [
            50.0,
            8.0,
            54.0,
            22.0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Root",
              "parameter_mmin": 0.0,
              "parameter_mmax": 11.0,
              "parameter_type": 1,
              "parameter_unitstyle": 0
            }
          },
          "varname": "root"
        }
      },
      {
        "box": {
          "id": "obj-root-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            300.0,
            145.0,
            58.0,
            22.0
          ],
          "text": "root $1"
        }
      },
      {
        "box": {
          "id": "obj-scale-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            470.0,
            72.0,
            120.0,
            20.0
          ],
          "text": "Scale",
          "presentation": 0,
          "presentation_rect": [
            114.0,
            10.0,
            36.0,
            18.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-scale",
          "items": [
            "major",
            ",",
            "natural_minor",
            ",",
            "harmonic_minor",
            ",",
            "melodic_minor",
            ",",
            "dorian",
            ",",
            "phrygian",
            ",",
            "lydian",
            ",",
            "mixolydian",
            ",",
            "locrian",
            ",",
            "major_pentatonic",
            ",",
            "minor_pentatonic"
          ],
          "maxclass": "umenu",
          "numinlets": 1,
          "numoutlets": 3,
          "outlettype": [
            "int",
            "",
            ""
          ],
          "patching_rect": [
            470.0,
            100.0,
            160.0,
            22.0
          ],
          "presentation": 0,
          "presentation_rect": [
            154.0,
            8.0,
            128.0,
            22.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-scale-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            470.0,
            145.0,
            62.0,
            22.0
          ],
          "text": "scale $1"
        }
      },
      {
        "box": {
          "id": "obj-panic",
          "maxclass": "button",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            300.0,
            220.0,
            24.0,
            24.0
          ],
          "presentation": 0,
          "presentation_rect": [
            468.0,
            8.0,
            20.0,
            20.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-panic-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            330.0,
            220.0,
            120.0,
            20.0
          ],
          "presentation": 0,
          "text": "All notes off"
        }
      },
      {
        "box": {
          "id": "obj-panic-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            300.0,
            260.0,
            74.0,
            22.0
          ],
          "text": "allnotesoff"
        }
      },
      {
        "box": {
          "id": "obj-thisdevice",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            520.0,
            220.0,
            86.0,
            22.0
          ],
          "text": "live.thisdevice"
        }
      },
      {
        "box": {
          "id": "obj-initlive-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            520.0,
            260.0,
            52.0,
            22.0
          ],
          "text": "initlive"
        }
      },
      {
        "box": {
          "id": "obj-poll-metro",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            "bang"
          ],
          "patching_rect": [
            610.0,
            220.0,
            78.0,
            22.0
          ],
          "text": "metro 500"
        }
      },
      {
        "box": {
          "id": "obj-start-poll-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            610.0,
            260.0,
            24.0,
            22.0
          ],
          "text": "1"
        }
      },
      {
        "box": {
          "id": "obj-polllive-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            610.0,
            300.0,
            52.0,
            22.0
          ],
          "text": "polllive"
        }
      },
      {
        "box": {
          "id": "obj-scale-info-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            320.0,
            270.0,
            80.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            6.0,
            157.0,
            18.0
          ],
          "text": "Scale",
          "annotation_name": "Scale",
          "annotation": "Shows the current Live Scale Mode root and scale. Displays Enable Scale Mode when Scale Mode is off.",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Scale",
              "parameter_shortname": "Scale",
              "parameter_type": 2,
              "parameter_invisible": 1,
              "parameter_annotation_name": "Scale",
              "parameter_info": "Shows the current Live Scale Mode root and scale. Displays Enable Scale Mode when Scale Mode is off.",
              "parameter_order": 1,
              "parameter_mmax": 1.0,
              "parameter_enum": [
                "off",
                "on"
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-scale-info-display",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            320.0,
            295.0,
            160.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            24.0,
            157.0,
            22.0
          ],
          "text": "C major",
          "annotation_name": "Scale",
          "annotation": "Current Live Scale Mode root and scale used for white-key mapping.",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Scale",
              "parameter_shortname": "Scale",
              "parameter_type": 2,
              "parameter_invisible": 1,
              "parameter_annotation_name": "Scale",
              "parameter_info": "Current Live Scale Mode root and scale used for white-key mapping.",
              "parameter_order": 2,
              "parameter_mmax": 1.0,
              "parameter_enum": [
                "off",
                "on"
              ]
            }
          },
          "textjustification": 0,
          "textcolor": [
            0.82,
            0.82,
            0.82,
            1.0
          ],
          "bgcolor": [
            0.12,
            0.12,
            0.12,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-input-key-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            320.0,
            330.0,
            80.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            52.0,
            157.0,
            18.0
          ],
          "text": "Key input",
          "annotation_name": "Key input",
          "annotation": "Shows the most recent MIDI note received by the device.",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Key input",
              "parameter_shortname": "Key input",
              "parameter_type": 2,
              "parameter_invisible": 1,
              "parameter_annotation_name": "Key input",
              "parameter_info": "Shows the most recent MIDI note received by the device.",
              "parameter_order": 3,
              "parameter_mmax": 1.0,
              "parameter_enum": [
                "off",
                "on"
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-input-key-display",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            320.0,
            355.0,
            80.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            70.0,
            157.0,
            22.0
          ],
          "text": "-",
          "annotation_name": "Key input",
          "annotation": "Most recent MIDI note received. Black keys are shown as ignored.",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Key input",
              "parameter_shortname": "Key input",
              "parameter_type": 2,
              "parameter_invisible": 1,
              "parameter_annotation_name": "Key input",
              "parameter_info": "Most recent MIDI note received. Black keys are shown as ignored.",
              "parameter_order": 4,
              "parameter_mmax": 1.0,
              "parameter_enum": [
                "off",
                "on"
              ]
            }
          },
          "textjustification": 0,
          "textcolor": [
            0.82,
            0.82,
            0.82,
            1.0
          ],
          "bgcolor": [
            0.12,
            0.12,
            0.12,
            1.0
          ]
        }
      },
      {
        "box": {
          "id": "obj-output-key-label",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430.0,
            330.0,
            80.0,
            20.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            98.0,
            157.0,
            18.0
          ],
          "text": "Key output",
          "annotation_name": "Key output",
          "annotation": "Shows the note sent after mapping the white key into the current scale.",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Key output",
              "parameter_shortname": "Key output",
              "parameter_type": 2,
              "parameter_invisible": 1,
              "parameter_annotation_name": "Key output",
              "parameter_info": "Shows the note sent after mapping the white key into the current scale.",
              "parameter_order": 5,
              "parameter_mmax": 1.0,
              "parameter_enum": [
                "off",
                "on"
              ]
            }
          }
        }
      },
      {
        "box": {
          "id": "obj-output-key-display",
          "maxclass": "comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430.0,
            355.0,
            80.0,
            22.0
          ],
          "presentation": 1,
          "presentation_rect": [
            8.0,
            116.0,
            157.0,
            22.0
          ],
          "text": "-",
          "annotation_name": "Key output",
          "annotation": "Mapped MIDI note sent to the instrument, or - when the input note is ignored.",
          "parameter_enable": 1,
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Key output",
              "parameter_shortname": "Key output",
              "parameter_type": 2,
              "parameter_invisible": 1,
              "parameter_annotation_name": "Key output",
              "parameter_info": "Mapped MIDI note sent to the instrument, or - when the input note is ignored.",
              "parameter_order": 6,
              "parameter_mmax": 1.0,
              "parameter_enum": [
                "off",
                "on"
              ]
            }
          },
          "textjustification": 0,
          "textcolor": [
            0.82,
            0.82,
            0.82,
            1.0
          ],
          "bgcolor": [
            0.12,
            0.12,
            0.12,
            1.0
          ]
        }
      }
    ],
    "lines": [
      {
        "patchline": {
          "source": [
            "obj-midiin",
            0
          ],
          "destination": [
            "obj-midiparse",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-midiparse",
            0
          ],
          "destination": [
            "obj-pack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-midiparse",
            1
          ],
          "destination": [
            "obj-pack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-midiparse",
            2
          ],
          "destination": [
            "obj-pack",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-pack",
            0
          ],
          "destination": [
            "obj-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-js",
            0
          ],
          "destination": [
            "obj-route-status",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-unpack",
            0
          ],
          "destination": [
            "obj-midiformat",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-unpack",
            1
          ],
          "destination": [
            "obj-midiformat",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-unpack",
            2
          ],
          "destination": [
            "obj-midiformat",
            2
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-midiformat",
            0
          ],
          "destination": [
            "obj-midiout",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-root",
            0
          ],
          "destination": [
            "obj-root-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-root-message",
            0
          ],
          "destination": [
            "obj-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-scale",
            0
          ],
          "destination": [
            "obj-scale-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-scale-message",
            0
          ],
          "destination": [
            "obj-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-panic",
            0
          ],
          "destination": [
            "obj-panic-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-panic-message",
            0
          ],
          "destination": [
            "obj-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-thisdevice",
            0
          ],
          "destination": [
            "obj-initlive-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-thisdevice",
            0
          ],
          "destination": [
            "obj-start-poll-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-initlive-message",
            0
          ],
          "destination": [
            "obj-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-start-poll-message",
            0
          ],
          "destination": [
            "obj-poll-metro",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-poll-metro",
            0
          ],
          "destination": [
            "obj-polllive-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-polllive-message",
            0
          ],
          "destination": [
            "obj-js",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-route-status",
            1
          ],
          "destination": [
            "obj-scale-info-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-route-status",
            2
          ],
          "destination": [
            "obj-input-key-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-route-status",
            3
          ],
          "destination": [
            "obj-output-key-display",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-route-status",
            4
          ],
          "destination": [
            "obj-unpack",
            0
          ]
        }
      }
    ],
    "openrect": [
      0.0,
      0.0,
      171.0,
      146.0
    ],
    "devicewidth": 171.0,
    "description": "",
    "digest": ""
  }
}
