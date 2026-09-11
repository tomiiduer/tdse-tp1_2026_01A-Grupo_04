{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 33,
          "y": 18
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "Actuator_statechart Export Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n  var timer: integer\n  var BlinkTimer: integer\n  const DEL_ACT_START: integer = 20\n  const DEL_ACT_STOP: integer = 20\n  const DEL_BLINK_STARTING: integer = 5\n  const DEL_BLINK_STOPPING: integer =10\n\ninterface:\n  in event tick\n  in event EV_ACT_START\n  in event EV_ACT_STOP\n  \n  out event EV_LED_ON\n  out event EV_LED_OFF\n\noperation LED_toggle(): void"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -294,
          "y": -127
        },
        "size": {
          "height": 60,
          "width": 141
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_OFF",
            "fontSize": 11
          }
        },
        "id": "c0e3c142-7c7e-40f6-a085-90a7c54ebd7f",
        "z": 2
      },
      {
        "position": {
          "x": -194,
          "y": -216
        },
        "size": {
          "height": 24,
          "width": 24
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "afc5215f-f54c-41fd-8fcc-a5ead6d75442",
        "z": 13,
        "embeds": [
          "a6aa2e8b-392d-4171-968d-84e050be8f69"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -194,
          "y": -201
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "a6aa2e8b-392d-4171-968d-84e050be8f69",
        "z": 14,
        "parent": "afc5215f-f54c-41fd-8fcc-a5ead6d75442"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "afc5215f-f54c-41fd-8fcc-a5ead6d75442"
        },
        "target": {
          "id": "c0e3c142-7c7e-40f6-a085-90a7c54ebd7f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50%",
              "dy": "18.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "2d890a1e-20c4-445d-b324-d25e5cc8712b",
        "z": 15,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -315,
          "y": 86
        },
        "size": {
          "height": 60,
          "width": 144
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_BLINK_STOPPING",
            "fontSize": 11
          }
        },
        "id": "d380661e-4c97-4c5b-b788-8f623957a1e1",
        "z": 27,
        "embeds": [
          "587cd760-ab79-4a4e-b796-144b9a3a2554",
          "b258e775-e964-4718-98b5-022d27a581e8"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d380661e-4c97-4c5b-b788-8f623957a1e1"
        },
        "target": {
          "id": "c0e3c142-7c7e-40f6-a085-90a7c54ebd7f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50%",
              "dy": "80%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick [timer >= DEL_ACT_STOP] / raise EV_LED_OFF"
              }
            },
            "position": {
              "distance": 0.48701410355910757,
              "offset": -186,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "c878ad16-abe4-4772-ada4-cb3038986ecf",
        "z": 28,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d380661e-4c97-4c5b-b788-8f623957a1e1"
        },
        "target": {
          "id": "d380661e-4c97-4c5b-b788-8f623957a1e1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "38.333%",
              "dy": "60%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick[BlinkTimer >= DEL_BLINK_STOPPING] / timer ++; LED_toggle(); BlinkTimer = 0 "
              }
            },
            "position": {
              "distance": 0.37046316805220325,
              "offset": -42.30645751953125,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b258e775-e964-4718-98b5-022d27a581e8",
        "z": 28,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -386,
            "y": 195
          }
        ],
        "parent": "d380661e-4c97-4c5b-b788-8f623957a1e1"
      },
      {
        "position": {
          "x": 168,
          "y": 86
        },
        "size": {
          "height": 64,
          "width": 122
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_ON",
            "fontSize": 11
          }
        },
        "id": "9419b85f-c5cf-41e3-a226-8cde10fef28a",
        "z": 29
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9419b85f-c5cf-41e3-a226-8cde10fef28a"
        },
        "target": {
          "id": "d380661e-4c97-4c5b-b788-8f623957a1e1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "60%",
              "dy": "58.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_STOP/ timer = 0; BlinkTimer = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "8d48ace6-f00f-49cd-95ae-93f0b2046ba6",
        "z": 30,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 172,
          "y": -124
        },
        "size": {
          "height": 62,
          "width": 149
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_BLINK_STARTING",
            "fontSize": 11
          }
        },
        "id": "156c5246-6025-4849-8ae2-cae33108546f",
        "z": 32,
        "embeds": [
          "62abaa3a-2692-4c26-b351-00eb89eba430",
          "4e0c7b11-a116-4abe-b4ba-f06e9c511db5"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c0e3c142-7c7e-40f6-a085-90a7c54ebd7f"
        },
        "target": {
          "id": "156c5246-6025-4849-8ae2-cae33108546f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "43.333%",
              "dy": "58.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ACT_START/ timer = 0; BlinkTimer = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "23ce291c-defc-4f43-a077-5ef559bf7319",
        "z": 33,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "156c5246-6025-4849-8ae2-cae33108546f"
        },
        "target": {
          "id": "9419b85f-c5cf-41e3-a226-8cde10fef28a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "51.667%",
              "dy": "20%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick [timer >= DEL_ACT_START] / raise EV_LED_ON"
              }
            },
            "position": {
              "distance": 0.4673202614379085,
              "offset": -169,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "f66cdf8c-bb6e-4995-ab9d-41c00db520f5",
        "z": 33,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "156c5246-6025-4849-8ae2-cae33108546f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "53.691%",
              "dy": "22.581%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "156c5246-6025-4849-8ae2-cae33108546f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "99.329%",
              "dy": "75.806%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick / timer++; BlinkTimer++"
              }
            },
            "position": {
              "distance": 0.4935874890283053,
              "offset": -29,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4e0c7b11-a116-4abe-b4ba-f06e9c511db5",
        "z": 37,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 252,
            "y": -150
          },
          {
            "x": 397,
            "y": -174
          }
        ],
        "parent": "156c5246-6025-4849-8ae2-cae33108546f"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "156c5246-6025-4849-8ae2-cae33108546f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "65.101%",
              "dy": "48.387%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "156c5246-6025-4849-8ae2-cae33108546f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "91.946%",
              "dy": "40.323%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick [BlinkTimer >= DEL_BLINK_STARTING] / timer++; LED_toggle(); BlinkTimer = 0"
              }
            },
            "position": {
              "distance": 0.37018381759199653,
              "offset": -23.99999999999997,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "62abaa3a-2692-4c26-b351-00eb89eba430",
        "z": 38,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 342,
            "y": -192
          },
          {
            "x": 432,
            "y": -99
          }
        ],
        "parent": "156c5246-6025-4849-8ae2-cae33108546f"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d380661e-4c97-4c5b-b788-8f623957a1e1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "36.111%",
              "dy": "98.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "d380661e-4c97-4c5b-b788-8f623957a1e1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "56.25%",
              "dy": "95%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick /timer++; BlinkTimer++"
              }
            },
            "position": {
              "distance": 0.35114950285587954,
              "offset": -47.605712890625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "587cd760-ab79-4a4e-b796-144b9a3a2554",
        "z": 39,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -405,
            "y": 207
          }
        ],
        "parent": "d380661e-4c97-4c5b-b788-8f623957a1e1"
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "ActuatorStatechartExport",
          "statemachinePrefix": "actuatorStatechartExport",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}