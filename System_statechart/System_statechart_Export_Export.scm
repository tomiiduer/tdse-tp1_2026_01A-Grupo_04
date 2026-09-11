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
            "text": "System_statechart Export Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n  in event tick\n  in event EV_BTN_ON\n  in event EV_BTN_OFF\n  in event EV_CAM_ON\n  in event EV_CAM_OFF\n  in event EV_COIL_ON\n  in event EV_COIL_OFF\n  out event EV_ACT_DISP_ON\n  out event EV_ACT_DISP_OFF\n  out event EV_ACT_PRINT_TICKET\n  out event EV_ACT_BARR_UP\n  out event EV_ACT_BARR_DOWN"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 26,
          "y": 37
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
        "id": "3e899f18-c975-48c4-a015-7ac272a89537",
        "z": 25
      },
      {
        "position": {
          "x": 460,
          "y": 39
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_BTN_ON",
            "fontSize": 11
          }
        },
        "id": "2ed0dad6-bd09-4b6a-87e2-66fab4b64ae3",
        "z": 46
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537"
        },
        "target": {
          "id": "2ed0dad6-bd09-4b6a-87e2-66fab4b64ae3",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "17.937%",
              "dy": "41.667%",
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
                "text": "EV_BTN_ON"
              }
            },
            "position": {
              "distance": 0.7350806260141396,
              "offset": -9.000000000000002,
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
        "id": "7929dbda-908b-4627-9cd0-b5c541d39921",
        "z": 47,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "2ed0dad6-bd09-4b6a-87e2-66fab4b64ae3"
        },
        "target": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "90.869%",
              "dy": "63.333%",
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
                "text": "tick / raise EV_ACT_PRINT_TICKET; raise EV_ACT_BARR_UP"
              }
            },
            "position": {
              "distance": 0.4845148586919693,
              "offset": -11,
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
        "id": "ae264627-43cd-420c-9ae6-03c77917ae1b",
        "z": 47,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -381,
          "y": 33
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_BTN_OFF",
            "fontSize": 11
          }
        },
        "id": "257bf382-231a-46bb-883d-2fb2e8afcf8a",
        "z": 48
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537"
        },
        "target": {
          "id": "257bf382-231a-46bb-883d-2fb2e8afcf8a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "79.178%",
              "dy": "48.333%",
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
                "text": "EV_BTN_OFF"
              }
            },
            "position": {
              "distance": 0.7731597085457887,
              "offset": 10,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "4"
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
        "id": "38998212-8340-4c01-8ce8-9c3c6516f36a",
        "z": 49,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "257bf382-231a-46bb-883d-2fb2e8afcf8a"
        },
        "target": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "15.378%",
              "dy": "61.667%",
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
                "text": "tick"
              }
            },
            "position": {
              "distance": 0.2268402914542112,
              "offset": 8,
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
        "id": "9a1306c7-91e5-47f7-b04d-22c7f802e7bb",
        "z": 49,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -382,
          "y": -133
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_CAM_OFF",
            "fontSize": 11
          }
        },
        "id": "e5b29b07-740b-4820-85a3-4499348da3f1",
        "z": 50
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "11.184%",
              "dy": "15%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "e5b29b07-740b-4820-85a3-4499348da3f1",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "88.099%",
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
                "text": "EV_CAM_OFF"
              }
            },
            "position": {
              "distance": 0.7903401050908081,
              "offset": -7.834999084472656,
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
        "id": "d6ef1ace-ff6a-4dec-88bb-6dba7bede7f7",
        "z": 51,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -40,
            "y": 40
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "e5b29b07-740b-4820-85a3-4499348da3f1"
        },
        "target": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "18.174%",
              "dy": "11.667%",
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
                "text": "tick / raise EV_ACT_DISP_OFF"
              }
            },
            "position": {
              "distance": 0.3146922116367352,
              "offset": -9,
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
        "id": "05f9f78d-71e8-4bae-877d-21b792db1b1f",
        "z": 51,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -389,
          "y": 210
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_COIL_OFF",
            "fontSize": 11
          }
        },
        "id": "faf3f6c6-7fd6-4b15-b42b-c9b302735c44",
        "z": 54
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "13.98%",
              "dy": "83.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "faf3f6c6-7fd6-4b15-b42b-c9b302735c44",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "95.07%",
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
                "text": "EV_COIL_OFF"
              }
            },
            "position": {
              "distance": 0.6268335644105831,
              "offset": 9.860000610351591,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "6"
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
        "id": "86c75975-5999-4fa2-b275-a2519beee867",
        "z": 55,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 34.39,
            "y": 194
          },
          {
            "x": -107,
            "y": 226
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "faf3f6c6-7fd6-4b15-b42b-c9b302735c44"
        },
        "target": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "36.348%",
              "dy": "88.333%",
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
                "text": "tick / raise EV_ACT_BARR_DOWN"
              }
            },
            "position": {
              "distance": 0.3369488778382807,
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
        "id": "9a7de009-e55a-4e50-9d68-a8638144e80e",
        "z": 57,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 461,
          "y": -129
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_CAM_ON",
            "fontSize": 11
          }
        },
        "id": "d7273a7e-c4bf-46bc-959f-2d79ba63569a",
        "z": 58
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "96.461%",
              "dy": "21.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "d7273a7e-c4bf-46bc-959f-2d79ba63569a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "4.783%",
              "dy": "90%",
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
                "text": "EV_CAM_ON"
              }
            },
            "position": {
              "distance": 0.7658579412254097,
              "offset": 10.235000610351562,
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
        "id": "095301e9-6616-4eb8-92e2-80f2cb5dbfd6",
        "z": 59,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 161,
            "y": 29
          },
          {
            "x": 219,
            "y": -75
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d7273a7e-c4bf-46bc-959f-2d79ba63569a"
        },
        "target": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "86.675%",
              "dy": "1.667%",
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
                "text": "tick / raise EV_ACT_DISP_ON"
              }
            },
            "position": {
              "distance": 0.36501591947347506,
              "offset": 10,
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
        "id": "51085d31-3225-457b-896b-42a79e56b6c9",
        "z": 59,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 458,
          "y": 204
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SYS_COIL_ON",
            "fontSize": 11
          }
        },
        "id": "53bf0a98-f846-4488-ae60-4a1e59d8b2e6",
        "z": 60
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "95.063%",
              "dy": "78.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "53bf0a98-f846-4488-ae60-4a1e59d8b2e6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "6.691%",
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
                "text": "EV_COIL_ON"
              }
            },
            "position": {
              "distance": 0.6843218988948104,
              "offset": -10.735000610351562,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "5"
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
        "id": "9b83adc9-9c5b-413d-96ca-785e69049e1a",
        "z": 61,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 83.04,
            "y": 179
          },
          {
            "x": 168,
            "y": 220
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "53bf0a98-f846-4488-ae60-4a1e59d8b2e6"
        },
        "target": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "72.696%",
              "dy": "86.667%",
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
                "text": "tick"
              }
            },
            "position": {
              "distance": 0.2960882252473745,
              "offset": -10,
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
        "id": "212967ca-4c60-4be7-a605-f7373c5ad4e0",
        "z": 61,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 51,
          "y": -186
        },
        "size": {
          "height": 24,
          "width": 24
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "3e153800-ff64-4369-8241-03a2e7abb14f",
        "z": 65,
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
          "x": 57,
          "y": -165
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
        "z": 66,
        "parent": "3e153800-ff64-4369-8241-03a2e7abb14f"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3e153800-ff64-4369-8241-03a2e7abb14f"
        },
        "target": {
          "id": "3e899f18-c975-48c4-a015-7ac272a89537",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "53.124%",
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
        "id": "cd65bd21-1d44-4c54-984e-cab36d4f9a17",
        "z": 67,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
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
          "moduleName": "SystemStatechartExport",
          "statemachinePrefix": "systemStatechartExport",
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