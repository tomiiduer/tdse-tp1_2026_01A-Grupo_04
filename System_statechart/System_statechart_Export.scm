{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "System_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n  in event EV_SYS_ON\n  in event EV_SYS_OFF\n  in event EV_SYS_STARTING\n  in event EV_SYS_STARTED\n  in event EV_SYS_STOPPING\n  in event EV_SYS_STOPPED\n  out event EV_ACT_START\n  out event EV_ACT_STOP"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 348,
          "y": -44
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_ON",
            "fontSize": 11
          }
        },
        "id": "e59b8e19-f90f-4734-991b-17f11c6fe6ba",
        "z": 3,
        "embeds": [
          "57d17faf-dd84-436b-bbb8-b94fc4b707ff"
        ]
      },
      {
        "position": {
          "x": 52,
          "y": -165
        },
        "size": {
          "width": 24,
          "height": 24
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "3e153800-ff64-4369-8241-03a2e7abb14f",
        "z": 8,
        "embeds": [
          "d528aa21-0b59-42c5-88e1-0ec953e1b7b4"
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
          "x": 58,
          "y": -144
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "d528aa21-0b59-42c5-88e1-0ec953e1b7b4",
        "z": 9,
        "parent": "3e153800-ff64-4369-8241-03a2e7abb14f"
      },
      {
        "position": {
          "x": 29,
          "y": -45
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_IDLE",
            "fontSize": 11
          }
        },
        "id": "d116677b-ea87-44ce-8717-c3988bc50233",
        "z": 15
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e59b8e19-f90f-4734-991b-17f11c6fe6ba"
        },
        "target": {
          "id": "d116677b-ea87-44ce-8717-c3988bc50233",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "86.667%",
              "dy": "75%",
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
                "text": "EV_SYS_STARTED"
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
        "id": "fda83f63-dd50-4ce5-8d6d-398f45fbc4d6",
        "z": 16,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e153800-ff64-4369-8241-03a2e7abb14f"
        },
        "target": {
          "id": "d116677b-ea87-44ce-8717-c3988bc50233",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "48.333%",
              "dy": "45%",
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
        "id": "74f8dce4-bcdb-4f9b-b57c-62b9cacf1565",
        "z": 16,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d116677b-ea87-44ce-8717-c3988bc50233"
        },
        "target": {
          "id": "e59b8e19-f90f-4734-991b-17f11c6fe6ba",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "55%",
              "dy": "30%",
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
                "text": "EV_SYS_ON / raise EV_ACT_START"
              }
            },
            "position": {}
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
        "id": "d1334e13-e3f9-4abe-a90e-8c844f282fba",
        "z": 16,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e59b8e19-f90f-4734-991b-17f11c6fe6ba"
        },
        "target": {
          "id": "e59b8e19-f90f-4734-991b-17f11c6fe6ba",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "81.667%",
              "dy": "55%",
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
                "text": "EV_SYS_STARTING"
              }
            },
            "position": {
              "distance": 0.3374368759902564,
              "offset": 11.04681396484375,
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
        "id": "57d17faf-dd84-436b-bbb8-b94fc4b707ff",
        "z": 17,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 372,
            "y": 50
          },
          {
            "x": 429,
            "y": 50
          },
          {
            "x": 470,
            "y": 13
          }
        ],
        "parent": "e59b8e19-f90f-4734-991b-17f11c6fe6ba"
      },
      {
        "position": {
          "x": -273,
          "y": -43
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_STOP",
            "fontSize": 11
          }
        },
        "id": "3e698275-fa4c-476c-b477-56025264ecde",
        "z": 19,
        "embeds": [
          "d6edfd8f-fdd1-47b9-ac5c-6c3aa6ed7352"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d116677b-ea87-44ce-8717-c3988bc50233"
        },
        "target": {
          "id": "3e698275-fa4c-476c-b477-56025264ecde",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "75%",
              "dy": "26.667%",
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
                "text": "EV_SYS_OFF / raise EV_ACT_STOP"
              }
            },
            "position": {
              "distance": 0.49433331790305185,
              "offset": 13,
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
        "id": "143e021b-ec43-4dff-bc65-48c717785929",
        "z": 20,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e698275-fa4c-476c-b477-56025264ecde"
        },
        "target": {
          "id": "d116677b-ea87-44ce-8717-c3988bc50233",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "18.333%",
              "dy": "78.333%",
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
                "text": "EV_SYS_STOPPED"
              }
            },
            "position": {
              "distance": 0.4999999973517093,
              "offset": 13,
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
        "id": "6d1ff897-409b-4fe7-b675-07bab6c0e74d",
        "z": 20,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e698275-fa4c-476c-b477-56025264ecde"
        },
        "target": {
          "id": "3e698275-fa4c-476c-b477-56025264ecde",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "18.174%",
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
                "text": "EV_SYS_STOPPING"
              }
            },
            "position": {
              "distance": 0.6808955463364583,
              "offset": 12.615310668945312,
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
        "id": "d6edfd8f-fdd1-47b9-ac5c-6c3aa6ed7352",
        "z": 20,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -348,
            "y": 28
          }
        ],
        "parent": "3e698275-fa4c-476c-b477-56025264ecde"
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
          "moduleName": "SystemStatechart",
          "statemachinePrefix": "systemStatechart",
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