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
            "text": "Actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninternal:\n  var timer: integer\n  const DEL_ACT_START: integer = 20\n  const DEL_ACT_STOP: integer = 20\n\ninterface:\n  in event tick\n  in event EV_ACT_START\n  in event EV_ACT_STOP\n  out event EV_SYS_STARTING\n  out event EV_SYS_STARTED\n  out event EV_SYS_STOPPING\n  out event EV_SYS_STOPPED\n\noperation LED_toggle(): void"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -213,
          "y": -127
        },
        "size": {
          "width": -1,
          "height": -1
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
          "x": 149,
          "y": -127
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_BLINK_STARTING",
            "fontSize": 11
          }
        },
        "id": "156c5246-6025-4849-8ae2-cae33108546f",
        "z": 3,
        "embeds": [
          "02e970ea-624a-490e-a7e1-921e40e625f3"
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
                "text": "EV_ACT_START / raise EV_SYS_STARTING"
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
        "z": 6,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -194,
          "y": -216
        },
        "size": {
          "width": 24,
          "height": 24
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
          "x": 182,
          "y": 86
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_ON",
            "fontSize": 11
          }
        },
        "id": "9419b85f-c5cf-41e3-a226-8cde10fef28a",
        "z": 22
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
                "text": "tick [timer >= DEL_ACT_START] / raise EV_SYS_STARTED;\ntimer = 0"
              }
            },
            "position": {
              "distance": 0.4673202614379085,
              "offset": -158,
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
        "z": 23,
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
          "id": "156c5246-6025-4849-8ae2-cae33108546f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "93.176%",
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
                "text": "tick / timer++; LED_toggle()"
              }
            },
            "position": {
              "distance": 0.38445834148390473,
              "offset": -14,
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
        "id": "02e970ea-624a-490e-a7e1-921e40e625f3",
        "z": 24,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 330,
            "y": -152
          }
        ],
        "parent": "156c5246-6025-4849-8ae2-cae33108546f"
      },
      {
        "position": {
          "x": -250,
          "y": 85
        },
        "size": {
          "width": -1,
          "height": -1
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LED_BLINK_STOPPING",
            "fontSize": 11
          }
        },
        "id": "d380661e-4c97-4c5b-b788-8f623957a1e1",
        "z": 25,
        "embeds": [
          "b258e775-e964-4718-98b5-022d27a581e8"
        ]
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
                "text": "EV_ACT_STOP / raise EV_SYS_STOPPING"
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
        "z": 26,
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
                "text": "tick [timer >= DEL_ACT_STOP] / raise EV_SYS_STOPPED;\ntimer = 0"
              }
            },
            "position": {
              "distance": 0.5131578947368421,
              "offset": -151.99999450683595,
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
        "z": 26,
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
                "text": "tick / timer++; LED_toggle()"
              }
            },
            "position": {
              "distance": 0.39186241123575727,
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
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -293,
            "y": 169
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
          "moduleName": "ActuatorStatechart",
          "statemachinePrefix": "actuatorStatechart",
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