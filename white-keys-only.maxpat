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
      100,
      100,
      420,
      300
    ],
    "bglocked": 0,
    "openinpresentation": 1,
    "default_fontsize": 12,
    "default_fontface": 0,
    "default_fontname": "Arial",
    "gridonopen": 1,
    "gridsize": [
      15,
      15
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
            60,
            80,
            54,
            22
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
            60,
            105,
            120,
            22
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
            60,
            150,
            78,
            22
          ],
          "text": "pack 0 0 1"
        }
      },
      {
        "box": {
          "id": "obj-js",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            60,
            205,
            145,
            22
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
            60,
            270,
            86,
            22
          ],
          "text": "unpack 0 0 1"
        }
      },
      {
        "box": {
          "id": "obj-route-status",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 4,
          "outlettype": [
            "",
            "",
            "",
            ""
          ],
          "patching_rect": [
            220,
            240,
            190,
            22
          ],
          "text": "route scaleinfo inputkey outputkey"
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
            60,
            335,
            86,
            22
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
            60,
            390,
            58,
            22
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
            300,
            72,
            120,
            20
          ],
          "text": "Root",
          "presentation": 0,
          "presentation_rect": [
            12,
            10,
            34,
            18
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
            300,
            100,
            70,
            22
          ],
          "presentation": 0,
          "presentation_rect": [
            50,
            8,
            54,
            22
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Root",
              "parameter_mmin": 0,
              "parameter_mmax": 11,
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
            300,
            145,
            58,
            22
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
            470,
            72,
            120,
            20
          ],
          "text": "Scale",
          "presentation": 0,
          "presentation_rect": [
            114,
            10,
            36,
            18
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
            470,
            100,
            160,
            22
          ],
          "presentation": 0,
          "presentation_rect": [
            154,
            8,
            128,
            22
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
            470,
            145,
            62,
            22
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
            300,
            220,
            24,
            24
          ],
          "presentation": 0,
          "presentation_rect": [
            468,
            8,
            20,
            20
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
            330,
            220,
            120,
            20
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
            300,
            260,
            74,
            22
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
            520,
            220,
            86,
            22
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
            520,
            260,
            52,
            22
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
            610,
            220,
            78,
            22
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
            610,
            260,
            24,
            22
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
            610,
            300,
            52,
            22
          ],
          "text": "polllive"
        }
      },
      {
        "box": {
          "id": "obj-scale-info-label",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            320,
            270,
            80,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            6,
            178,
            18
          ],
          "text": "Scale",
          "annotation_name": "Scale",
          "annotation": "The Live scale currently shaping the white keys. Shows Enable Scale Mode when Live Scale Mode is off.",
          "parameter_enable": 0,
          "textjustification": 0,
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "obj-scale-info-display",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            320,
            295,
            160,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            24,
            178,
            22
          ],
          "text": "C major",
          "annotation_name": "Scale",
          "annotation": "The Live scale currently shaping the white keys. Shows Enable Scale Mode when Live Scale Mode is off.",
          "parameter_enable": 0,
          "textjustification": 0,
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "obj-input-key-label",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            320,
            330,
            80,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            52,
            84,
            18
          ],
          "text": "Key input",
          "annotation_name": "Key input",
          "annotation": "The most recent key played. Black keys are marked as ignored.",
          "parameter_enable": 0,
          "textjustification": 0,
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "obj-input-key-display",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            320,
            355,
            80,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            70,
            84,
            22
          ],
          "text": "-",
          "annotation_name": "Key input",
          "annotation": "The most recent key played. Black keys are marked as ignored.",
          "parameter_enable": 0,
          "textjustification": 0,
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "obj-output-key-label",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430,
            330,
            80,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            92,
            52,
            94,
            18
          ],
          "text": "Key output",
          "annotation_name": "Key output",
          "annotation": "The note sent to the instrument. Shows Disabled when Live Scale Mode is off.",
          "parameter_enable": 0,
          "textjustification": 0,
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "obj-output-key-display",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            430,
            355,
            80,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            92,
            70,
            94,
            22
          ],
          "text": "-",
          "annotation_name": "Key output",
          "annotation": "The note sent to the instrument. Shows Disabled when Live Scale Mode is off.",
          "parameter_enable": 0,
          "textjustification": 0,
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "obj-scale-info-set",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            320,
            292,
            72,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-input-key-set",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            320,
            352,
            72,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-output-key-set",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            430,
            352,
            72,
            22
          ],
          "text": "prepend set"
        }
      },
      {
        "box": {
          "id": "obj-note-unpack",
          "maxclass": "newobj",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "int",
            "int"
          ],
          "patching_rect": [
            60,
            130,
            68,
            22
          ],
          "text": "unpack 0 0"
        }
      },
      {
        "box": {
          "id": "obj-scale-info-hover",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            320,
            430,
            157,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            24,
            178,
            22
          ],
          "mode": 0,
          "parameter_enable": 1,
          "parameter_mappable": 0,
          "text": "",
          "texton": "",
          "annotation_name": "Scale",
          "annotation": "The Live scale currently shaping the white keys. Shows Enable Scale Mode when Live Scale Mode is off.",
          "bgcolor": [
            0,
            0,
            0,
            0
          ],
          "bgoncolor": [
            0,
            0,
            0,
            0
          ],
          "bordercolor": [
            0,
            0,
            0,
            0
          ],
          "textcolor": [
            0,
            0,
            0,
            0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Scale",
              "parameter_shortname": "Scale",
              "parameter_type": 2,
              "parameter_mmax": 1,
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_invisible": 0,
              "parameter_mappable": 0,
              "parameter_annotation_name": "Scale",
              "parameter_info": "The Live scale currently shaping the white keys. Shows Enable Scale Mode when Live Scale Mode is off.",
              "parameter_modmode": 0,
              "parameter_osc_name": "<default>",
              "parameter_order": 102
            }
          },
          "activebgcolor": [
            0,
            0,
            0,
            0
          ],
          "activebgoncolor": [
            0,
            0,
            0,
            0
          ],
          "focusbordercolor": [
            0,
            0,
            0,
            0
          ],
          "activetextcolor": [
            0,
            0,
            0,
            0
          ],
          "textoncolor": [
            0,
            0,
            0,
            0
          ],
          "accentcolor": [
            0,
            0,
            0,
            0
          ],
          "tricolor": [
            0,
            0,
            0,
            0
          ]
        }
      },
      {
        "box": {
          "id": "obj-input-key-hover",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            320,
            430,
            157,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            70,
            84,
            22
          ],
          "mode": 0,
          "parameter_enable": 1,
          "parameter_mappable": 0,
          "text": "",
          "texton": "",
          "annotation_name": "Key input",
          "annotation": "The most recent key played. Black keys are marked as ignored.",
          "bgcolor": [
            0,
            0,
            0,
            0
          ],
          "bgoncolor": [
            0,
            0,
            0,
            0
          ],
          "bordercolor": [
            0,
            0,
            0,
            0
          ],
          "textcolor": [
            0,
            0,
            0,
            0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Key input",
              "parameter_shortname": "Key input",
              "parameter_type": 2,
              "parameter_mmax": 1,
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_invisible": 0,
              "parameter_mappable": 0,
              "parameter_annotation_name": "Key input",
              "parameter_info": "The most recent key played. Black keys are marked as ignored.",
              "parameter_modmode": 0,
              "parameter_osc_name": "<default>",
              "parameter_order": 104
            }
          },
          "activebgcolor": [
            0,
            0,
            0,
            0
          ],
          "activebgoncolor": [
            0,
            0,
            0,
            0
          ],
          "focusbordercolor": [
            0,
            0,
            0,
            0
          ],
          "activetextcolor": [
            0,
            0,
            0,
            0
          ],
          "textoncolor": [
            0,
            0,
            0,
            0
          ],
          "accentcolor": [
            0,
            0,
            0,
            0
          ],
          "tricolor": [
            0,
            0,
            0,
            0
          ]
        }
      },
      {
        "box": {
          "id": "obj-output-key-hover",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            320,
            430,
            157,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            92,
            70,
            94,
            22
          ],
          "mode": 0,
          "parameter_enable": 1,
          "parameter_mappable": 0,
          "text": "",
          "texton": "",
          "annotation_name": "Key output",
          "annotation": "The note sent to the instrument. Shows Disabled when Live Scale Mode is off.",
          "bgcolor": [
            0,
            0,
            0,
            0
          ],
          "bgoncolor": [
            0,
            0,
            0,
            0
          ],
          "bordercolor": [
            0,
            0,
            0,
            0
          ],
          "textcolor": [
            0,
            0,
            0,
            0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Key output",
              "parameter_shortname": "Key output",
              "parameter_type": 2,
              "parameter_mmax": 1,
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_invisible": 0,
              "parameter_mappable": 0,
              "parameter_annotation_name": "Key output",
              "parameter_info": "The note sent to the instrument. Shows Disabled when Live Scale Mode is off.",
              "parameter_modmode": 0,
              "parameter_osc_name": "<default>",
              "parameter_order": 106
            }
          },
          "activebgcolor": [
            0,
            0,
            0,
            0
          ],
          "activebgoncolor": [
            0,
            0,
            0,
            0
          ],
          "focusbordercolor": [
            0,
            0,
            0,
            0
          ],
          "activetextcolor": [
            0,
            0,
            0,
            0
          ],
          "textoncolor": [
            0,
            0,
            0,
            0
          ],
          "accentcolor": [
            0,
            0,
            0,
            0
          ],
          "tricolor": [
            0,
            0,
            0,
            0
          ]
        }
      },
      {
        "box": {
          "id": "obj-note-format-pack",
          "maxclass": "newobj",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            60,
            305,
            58,
            22
          ],
          "text": "pack 0 0"
        }
      },
      {
        "box": {
          "id": "obj-scale-label-hover",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            320,
            430,
            157,
            18
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            6,
            178,
            18
          ],
          "mode": 0,
          "parameter_enable": 1,
          "parameter_mappable": 0,
          "text": "",
          "texton": "",
          "annotation_name": "Scale",
          "annotation": "The Live scale currently shaping the white keys. Shows Enable Scale Mode when Live Scale Mode is off.",
          "bgcolor": [
            0,
            0,
            0,
            0
          ],
          "bgoncolor": [
            0,
            0,
            0,
            0
          ],
          "bordercolor": [
            0,
            0,
            0,
            0
          ],
          "textcolor": [
            0,
            0,
            0,
            0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Scale",
              "parameter_shortname": "Scale",
              "parameter_type": 2,
              "parameter_mmax": 1,
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_invisible": 0,
              "parameter_mappable": 0,
              "parameter_annotation_name": "Scale",
              "parameter_info": "The Live scale currently shaping the white keys. Shows Enable Scale Mode when Live Scale Mode is off.",
              "parameter_modmode": 0,
              "parameter_osc_name": "<default>",
              "parameter_order": 101
            }
          },
          "activebgcolor": [
            0,
            0,
            0,
            0
          ],
          "activebgoncolor": [
            0,
            0,
            0,
            0
          ],
          "focusbordercolor": [
            0,
            0,
            0,
            0
          ],
          "activetextcolor": [
            0,
            0,
            0,
            0
          ],
          "textoncolor": [
            0,
            0,
            0,
            0
          ],
          "accentcolor": [
            0,
            0,
            0,
            0
          ],
          "tricolor": [
            0,
            0,
            0,
            0
          ]
        }
      },
      {
        "box": {
          "id": "obj-input-label-hover",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            320,
            430,
            157,
            18
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            52,
            84,
            18
          ],
          "mode": 0,
          "parameter_enable": 1,
          "parameter_mappable": 0,
          "text": "",
          "texton": "",
          "annotation_name": "Key input",
          "annotation": "The most recent key played. Black keys are marked as ignored.",
          "bgcolor": [
            0,
            0,
            0,
            0
          ],
          "bgoncolor": [
            0,
            0,
            0,
            0
          ],
          "bordercolor": [
            0,
            0,
            0,
            0
          ],
          "textcolor": [
            0,
            0,
            0,
            0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Key input",
              "parameter_shortname": "Key input",
              "parameter_type": 2,
              "parameter_mmax": 1,
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_invisible": 0,
              "parameter_mappable": 0,
              "parameter_annotation_name": "Key input",
              "parameter_info": "The most recent key played. Black keys are marked as ignored.",
              "parameter_modmode": 0,
              "parameter_osc_name": "<default>",
              "parameter_order": 103
            }
          },
          "activebgcolor": [
            0,
            0,
            0,
            0
          ],
          "activebgoncolor": [
            0,
            0,
            0,
            0
          ],
          "focusbordercolor": [
            0,
            0,
            0,
            0
          ],
          "activetextcolor": [
            0,
            0,
            0,
            0
          ],
          "textoncolor": [
            0,
            0,
            0,
            0
          ],
          "accentcolor": [
            0,
            0,
            0,
            0
          ],
          "tricolor": [
            0,
            0,
            0,
            0
          ]
        }
      },
      {
        "box": {
          "id": "obj-output-label-hover",
          "maxclass": "live.text",
          "numinlets": 1,
          "numoutlets": 2,
          "outlettype": [
            "",
            ""
          ],
          "patching_rect": [
            320,
            430,
            157,
            18
          ],
          "presentation": 1,
          "presentation_rect": [
            92,
            52,
            94,
            18
          ],
          "mode": 0,
          "parameter_enable": 1,
          "parameter_mappable": 0,
          "text": "",
          "texton": "",
          "annotation_name": "Key output",
          "annotation": "The note sent to the instrument. Shows Disabled when Live Scale Mode is off.",
          "bgcolor": [
            0,
            0,
            0,
            0
          ],
          "bgoncolor": [
            0,
            0,
            0,
            0
          ],
          "bordercolor": [
            0,
            0,
            0,
            0
          ],
          "textcolor": [
            0,
            0,
            0,
            0
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Key output",
              "parameter_shortname": "Key output",
              "parameter_type": 2,
              "parameter_mmax": 1,
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_invisible": 0,
              "parameter_mappable": 0,
              "parameter_annotation_name": "Key output",
              "parameter_info": "The note sent to the instrument. Shows Disabled when Live Scale Mode is off.",
              "parameter_modmode": 0,
              "parameter_osc_name": "<default>",
              "parameter_order": 105
            }
          },
          "activebgcolor": [
            0,
            0,
            0,
            0
          ],
          "activebgoncolor": [
            0,
            0,
            0,
            0
          ],
          "focusbordercolor": [
            0,
            0,
            0,
            0
          ],
          "activetextcolor": [
            0,
            0,
            0,
            0
          ],
          "textoncolor": [
            0,
            0,
            0,
            0
          ],
          "accentcolor": [
            0,
            0,
            0,
            0
          ],
          "tricolor": [
            0,
            0,
            0,
            0
          ]
        }
      },
      {
        "box": {
          "id": "obj-chord-mode",
          "maxclass": "toggle",
          "numinlets": 1,
          "numoutlets": 1,
          "outlettype": [
            "int"
          ],
          "parameter_enable": 0,
          "patching_rect": [
            650,
            100,
            22,
            22
          ],
          "presentation": 1,
          "presentation_rect": [
            92,
            98,
            20,
            20
          ],
          "saved_attribute_attributes": {
            "valueof": {
              "parameter_longname": "Chord Mode",
              "parameter_shortname": "Chord Mode",
              "parameter_type": 2,
              "parameter_mmax": 1,
              "parameter_enum": [
                "off",
                "on"
              ],
              "parameter_annotation_name": "Chord Mode",
              "parameter_info": "When enabled, each white key plays the diatonic triad for that scale degree.",
              "parameter_order": 7
            }
          },
          "varname": "chord_mode"
        }
      },
      {
        "box": {
          "id": "obj-chord-mode-label",
          "maxclass": "live.comment",
          "numinlets": 1,
          "numoutlets": 0,
          "patching_rect": [
            680,
            100,
            90,
            20
          ],
          "presentation": 1,
          "presentation_rect": [
            8,
            98,
            80,
            18
          ],
          "text": "Chord mode",
          "annotation_name": "Chord Mode",
          "annotation": "When enabled, each white key plays the diatonic triad for that scale degree.",
          "parameter_enable": 0,
          "textjustification": 0,
          "fontsize": 12
        }
      },
      {
        "box": {
          "id": "obj-chord-mode-message",
          "maxclass": "message",
          "numinlets": 2,
          "numoutlets": 1,
          "outlettype": [
            ""
          ],
          "patching_rect": [
            650,
            145,
            88,
            22
          ],
          "text": "chordmode $1"
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
            "obj-scale-info-set",
            0
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
            "obj-input-key-set",
            0
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
            "obj-output-key-set",
            0
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
            "obj-js",
            0
          ],
          "destination": [
            "obj-unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-js",
            1
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
            "obj-route-status",
            0
          ],
          "destination": [
            "obj-scale-info-set",
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
            "obj-input-key-set",
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
            "obj-output-key-set",
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
            "obj-note-unpack",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-note-unpack",
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
            "obj-note-unpack",
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
            "obj-unpack",
            0
          ],
          "destination": [
            "obj-note-format-pack",
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
            "obj-note-format-pack",
            1
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-note-format-pack",
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
            2
          ],
          "destination": [
            "obj-midiformat",
            6
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-chord-mode",
            0
          ],
          "destination": [
            "obj-chord-mode-message",
            0
          ]
        }
      },
      {
        "patchline": {
          "source": [
            "obj-chord-mode-message",
            0
          ],
          "destination": [
            "obj-js",
            0
          ]
        }
      }
    ],
    "openrect": [
      0,
      0,
      186,
      124
    ],
    "devicewidth": 186,
    "description": "",
    "digest": ""
  }
}