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
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "attrs": {
          "name": {
            "text": "Sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n    var timer: integer\n    const DEL_BTN: integer = 20\n\ninterface: \n    in event tick\n    in event EV_BTN_PRESSED\n    in event EV_BTN_RELEASED\n    out event EV_SYS_ON\n    out event EV_SYS_OFF"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 222.5,
          "y": 125
        },
        "size": {
          "width": 20,
          "height": 20
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 2,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
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
          "x": 222.5,
          "y": 145
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 3,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
      },
      {
        "position": {
          "x": 173,
          "y": 204
        },
        "size": {
          "height": 60,
          "width": 118
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_OFF",
            "fontSize": 11
          }
        },
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 7
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
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
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 8
      },
      {
        "position": {
          "x": 532,
          "y": 203
        },
        "size": {
          "height": 60,
          "width": 112
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_FALLING",
            "fontSize": 11
          }
        },
        "id": "68b977d8-aa8d-43c2-affd-c4821368483a",
        "z": 11,
        "embeds": [
          "9c07e60d-4cae-4acd-aadd-15000d0594c7"
        ]
      },
      {
        "position": {
          "x": 538,
          "y": 361
        },
        "size": {
          "height": 60,
          "width": 106
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_ON",
            "fontSize": 11
          }
        },
        "id": "7902e9c7-d865-4ad5-9693-c63cc9d7f31c",
        "z": 23
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "68b977d8-aa8d-43c2-affd-c4821368483a"
        },
        "target": {
          "id": "7902e9c7-d865-4ad5-9693-c63cc9d7f31c"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "tick [timer >= DEL_BTN] / raise EV_SYS_ON; \r\ntimer = 0"
              }
            },
            "position": {
              "distance": 0.4897959183673469,
              "offset": -129,
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
        "id": "67acaa61-1541-4534-bbf8-f932cc150add",
        "z": 24,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 175,
          "y": 363
        },
        "size": {
          "height": 60,
          "width": 117
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_RISING",
            "fontSize": 11
          }
        },
        "id": "0bdad83d-666d-4edb-b91d-16b52a591139",
        "z": 33,
        "embeds": [
          "a69711dc-6159-4f93-8ba4-b0802a399eb9"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7902e9c7-d865-4ad5-9693-c63cc9d7f31c"
        },
        "target": {
          "id": "0bdad83d-666d-4edb-b91d-16b52a591139"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_RELEASED"
              }
            },
            "position": {
              "distance": 0.4959349593495935,
              "offset": 9,
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
        "id": "8b3e82ab-02c6-4cff-9da8-79df39426635",
        "z": 34,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0bdad83d-666d-4edb-b91d-16b52a591139"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "51.695%",
              "dy": "98.333%",
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
                "text": "tick [timer >= DEL_BTN] / raise EV_SYS_OFF;\ntimer = 0"
              }
            },
            "position": {
              "distance": 0.4696969696969697,
              "offset": -125,
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
        "id": "8bc05472-4075-4594-bcfd-2ceb76de37b3",
        "z": 35,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "68b977d8-aa8d-43c2-affd-c4821368483a"
        },
        "target": {
          "id": "68b977d8-aa8d-43c2-affd-c4821368483a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "87.5%",
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
                "text": "tick / timer++"
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
        "id": "9c07e60d-4cae-4acd-aadd-15000d0594c7",
        "z": 38,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 588,
            "y": 181
          }
        ],
        "parent": "68b977d8-aa8d-43c2-affd-c4821368483a"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0bdad83d-666d-4edb-b91d-16b52a591139"
        },
        "target": {
          "id": "0bdad83d-666d-4edb-b91d-16b52a591139",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "11.966%",
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
                "text": "tick / timer++"
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
        "id": "a69711dc-6159-4f93-8ba4-b0802a399eb9",
        "z": 39,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "0bdad83d-666d-4edb-b91d-16b52a591139"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "68b977d8-aa8d-43c2-affd-c4821368483a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "2.679%",
              "dy": "51.667%",
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
                "text": "EV_BTN_PRESSED"
              }
            },
            "position": {
              "distance": 0.520746887966805,
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
        "id": "5cb12497-3b35-48ce-b629-400be52a0f16",
        "z": 40,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0bdad83d-666d-4edb-b91d-16b52a591139"
        },
        "target": {
          "id": "7902e9c7-d865-4ad5-9693-c63cc9d7f31c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "1.887%",
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
                "text": "EV_BTN_PRESSED / timer = 0"
              }
            },
            "position": {
              "distance": 0.5284552845528455,
              "offset": 13,
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
        "id": "d566cd75-e64b-47fb-939a-963359d132ce",
        "z": 41,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "68b977d8-aa8d-43c2-affd-c4821368483a"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "94.915%",
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
                "text": "EV_BTN_RELEASED / timer = 0"
              }
            },
            "position": {}
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
        "id": "556d6312-3dbd-4a4f-990d-80a44dc87d96",
        "z": 42,
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
          "moduleName": "MyFirstStatechart",
          "statemachinePrefix": "myFirstStatechart",
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