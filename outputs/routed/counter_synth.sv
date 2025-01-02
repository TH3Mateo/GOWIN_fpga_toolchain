{
  "creator": "Next Generation Place and Route (Version nextpnr-0.7-138-gf01465f6)",
  "modules": {
    "top": {
      "settings": {
        "route": "00000000000000000000000000000001",
        "router/tmg_ripup": "0 ",
        "router1/useEstimate": "1 ",
        "router1/fullCleanupReroute": "1 ",
        "router1/cleanupReroute": "1 ",
        "router1/maxIterCnt": "200",
        "place": "00000000000000000000000000000001",
        "placer1/startTemp": "1.000000",
        "placer1/minBelsForGridPick": "64",
        "placer1/netShareWeight": "0.000000",
        "placer1/constraintWeight": "10.000000",
        "placerHeap/cellPlacementTimeout": "8",
        "placerHeap/netShareWeight": "0.000000",
        "placerHeap/parallelRefine": "0 ",
        "pack": "00000000000000000000000000000001",
        "synth": "00000000000000000000000000000001",
        "placerHeap/timingWeight": "10 ",
        "placerHeap/criticalityExponent": "2",
        "placerHeap/beta": "0.900000",
        "placerHeap/alpha": "0.100000",
        "seed": "0011000101000001010110010010011001010011010110001001011110010011",
        "arch.type": " ",
        "arch.name": "ARCHNAME",
        "router": "router1",
        "placer": "heap",
        "auto_freq": "00000000000000000000000000000000",
        "slack_redist_iter": "00000000000000000000000000000000",
        "timing_driven": "00000000000000000000000000000001",
        "target_freq": "12000000.000000",
        "cst.filename": "constraints.ucf",
        "packer.partno": "GW2AR-LV18QN88C8/I7",
        "packer.chipdb": "GW2A-18C",
        "packer.arch": "himbaechel/gowin"
      },
      "attributes": {
        "top": "00000000000000000000000000000001",
        "src": "src/modules/counter.sv:1.1-20.10",
        "hdlname": "\\counter"
      },
      "ports": {
        "rst": {
          "direction": "input",
          "bits": [ 9373 ]
        },
        "count": {
          "direction": "output",
          "bits": [ 9396, 9391, 9385, 9382 ]
        },
        "clk": {
          "direction": "input",
          "bits": [ 9371 ]
        }
      },
      "cells": {
        "temp_ALU_I1_DUMMY_ALULC": {
          "hide_name": 0,
          "type": "ALU",
          "parameters": {
            "ALU_MODE": "C2L"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/ALU5"
          },
          "port_directions": {
          },
          "connections": {
          }
        },
        "temp_ALU_I1_3_HEAD_ALULC": {
          "hide_name": 0,
          "type": "ALU",
          "parameters": {
            "ALU_MODE": "C2L"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/ALU0"
          },
          "port_directions": {
            "I2": "input",
            "COUT": "output"
          },
          "connections": {
            "I2": [ 9441 ],
            "COUT": [ 9446 ]
          }
        },
        "GSR": {
          "hide_name": 0,
          "type": "GSR",
          "parameters": {
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X50Y27/GSR"
          },
          "port_directions": {
            "GSRI": "input"
          },
          "connections": {
            "GSRI": [ 9441 ]
          }
        },
        "temp_DFFC_Q_3": {
          "hide_name": 0,
          "type": "DFFC",
          "parameters": {
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/DFF1",
            "src": "src/modules/counter.sv:8.5-14.8|/usr/local/bin/../share/yosys/gowin/cells_map.v:91.7-91.59",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "Q": "output",
            "D": "input",
            "CLK": "input",
            "CLEAR": "input"
          },
          "connections": {
            "Q": [ 9398 ],
            "D": [ 9419 ],
            "CLK": [ 9378 ],
            "CLEAR": [ 9402 ]
          }
        },
        "temp_DFFC_Q_2": {
          "hide_name": 0,
          "type": "DFFC",
          "parameters": {
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/DFF2",
            "src": "src/modules/counter.sv:8.5-14.8|/usr/local/bin/../share/yosys/gowin/cells_map.v:91.7-91.59",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "Q": "output",
            "D": "input",
            "CLK": "input",
            "CLEAR": "input"
          },
          "connections": {
            "Q": [ 9393 ],
            "D": [ 9417 ],
            "CLK": [ 9378 ],
            "CLEAR": [ 9402 ]
          }
        },
        "temp_DFFC_Q_1": {
          "hide_name": 0,
          "type": "DFFC",
          "parameters": {
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/DFF3",
            "src": "src/modules/counter.sv:8.5-14.8|/usr/local/bin/../share/yosys/gowin/cells_map.v:91.7-91.59",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "Q": "output",
            "D": "input",
            "CLK": "input",
            "CLEAR": "input"
          },
          "connections": {
            "Q": [ 9387 ],
            "D": [ 9413 ],
            "CLK": [ 9378 ],
            "CLEAR": [ 9402 ]
          }
        },
        "temp_DFFC_Q": {
          "hide_name": 0,
          "type": "DFFC",
          "parameters": {
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/DFF4",
            "src": "src/modules/counter.sv:8.5-14.8|/usr/local/bin/../share/yosys/gowin/cells_map.v:91.7-91.59",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "Q": "output",
            "D": "input",
            "CLK": "input",
            "CLEAR": "input"
          },
          "connections": {
            "Q": [ 9400 ],
            "D": [ 9409 ],
            "CLK": [ 9378 ],
            "CLEAR": [ 9402 ]
          }
        },
        "$PACKER_GND_DRV": {
          "hide_name": 1,
          "type": "GOWIN_GND",
          "parameters": {
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X0Y0/GND"
          },
          "port_directions": {
            "G": "output"
          },
          "connections": {
            "G": [ 9442 ]
          }
        },
        "$PACKER_VCC_DRV": {
          "hide_name": 1,
          "type": "GOWIN_VCC",
          "parameters": {
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X0Y0/VCC"
          },
          "port_directions": {
            "V": "output"
          },
          "connections": {
            "V": [ 9441 ]
          }
        },
        "temp_ALU_I1_3": {
          "hide_name": 0,
          "type": "ALU",
          "parameters": {
            "ALU_MODE": "00000000000000000000000000000010"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/ALU1",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:57.7-63.5",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "I2": "input",
            "SUM": "output",
            "I3": "input",
            "I1": "input",
            "I0": "input",
            "COUT": "output",
            "CIN": "input"
          },
          "connections": {
            "I2": [ 9441 ],
            "SUM": [ 9419 ],
            "I3": [ 9441 ],
            "I1": [ 9398 ],
            "I0": [ 9441 ],
            "COUT": [ 9416 ],
            "CIN": [ 9446 ]
          }
        },
        "temp_ALU_I1_2": {
          "hide_name": 0,
          "type": "ALU",
          "parameters": {
            "ALU_MODE": "00000000000000000000000000000010"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/ALU2",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:57.7-63.5",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "I2": "input",
            "SUM": "output",
            "I3": "input",
            "I1": "input",
            "I0": "input",
            "COUT": "output",
            "CIN": "input"
          },
          "connections": {
            "I2": [ 9441 ],
            "SUM": [ 9417 ],
            "I3": [ 9441 ],
            "I1": [ 9393 ],
            "I0": [ 9442 ],
            "COUT": [ 9412 ],
            "CIN": [ 9416 ]
          }
        },
        "temp_ALU_I1_1": {
          "hide_name": 0,
          "type": "ALU",
          "parameters": {
            "ALU_MODE": "00000000000000000000000000000010"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/ALU3",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:57.7-63.5",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "I2": "input",
            "SUM": "output",
            "I3": "input",
            "I1": "input",
            "I0": "input",
            "COUT": "output",
            "CIN": "input"
          },
          "connections": {
            "I2": [ 9441 ],
            "SUM": [ 9413 ],
            "I3": [ 9441 ],
            "I1": [ 9387 ],
            "I0": [ 9442 ],
            "COUT": [ 9405 ],
            "CIN": [ 9412 ]
          }
        },
        "temp_ALU_I1": {
          "hide_name": 0,
          "type": "ALU",
          "parameters": {
            "ALU_MODE": "00000000000000000000000000000010"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/ALU4",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:57.7-63.5",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "I2": "input",
            "SUM": "output",
            "I3": "input",
            "I1": "input",
            "I0": "input",
            "COUT": "output",
            "CIN": "input"
          },
          "connections": {
            "I2": [ 9441 ],
            "SUM": [ 9409 ],
            "I3": [ 9441 ],
            "I1": [ 9400 ],
            "I0": [ 9442 ],
            "COUT": [ 9406 ],
            "CIN": [ 9405 ]
          }
        },
        "rst_IBUF_I": {
          "hide_name": 0,
          "type": "IBUF",
          "parameters": {
            "NET_I": "NET",
            "NET_O": "NET"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000101",
            "NEXTPNR_BEL": "X55Y29/IOBA",
            "src": "src/modules/counter.sv:3.16-3.19",
            "&PULL_MODE=UP": "00000000000000000000000000000001",
            "&BANK_VCCIO=1.8": "00000000000000000000000000000001",
            "keep": "00000000000000000000000000000001"
          },
          "port_directions": {
            "O": "output",
            "I": "input"
          },
          "connections": {
            "O": [ 9402 ],
            "I": [ 9373 ]
          }
        },
        "count_OBUF_O_I_LUT1_F": {
          "hide_name": 0,
          "type": "LUT1",
          "parameters": {
            "INIT": "01"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y47/LUT1",
            "src": "/usr/local/bin/../share/yosys/gowin/cells_map.v:135.23-136.15",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "I0": "input",
            "F": "output"
          },
          "connections": {
            "I0": [ 9400 ],
            "F": [ 9381 ]
          }
        },
        "count_OBUF_O_3_I_LUT1_F": {
          "hide_name": 0,
          "type": "LUT1",
          "parameters": {
            "INIT": "01"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y44/LUT6",
            "src": "/usr/local/bin/../share/yosys/gowin/cells_map.v:135.23-136.15",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "I0": "input",
            "F": "output"
          },
          "connections": {
            "I0": [ 9398 ],
            "F": [ 9395 ]
          }
        },
        "count_OBUF_O_3": {
          "hide_name": 0,
          "type": "OBUF",
          "parameters": {
            "NET_I": "NET",
            "NET_O": "NET"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000101",
            "NEXTPNR_BEL": "X0Y46/IOBA",
            "src": "src/modules/counter.sv:4.22-4.27",
            "&PULL_MODE=NONE": "00000000000000000000000000000001",
            "&DRIVE=4": "00000000000000000000000000000001",
            "&BANK_VCCIO=1.8": "00000000000000000000000000000001",
            "&IO_TYPE=LVCMOS33": "00000000000000000000000000000001",
            "keep": "00000000000000000000000000000001"
          },
          "port_directions": {
            "O": "output",
            "I": "input"
          },
          "connections": {
            "O": [ 9396 ],
            "I": [ 9395 ]
          }
        },
        "count_OBUF_O_2_I_LUT1_F": {
          "hide_name": 0,
          "type": "LUT1",
          "parameters": {
            "INIT": "01"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y46/LUT1",
            "src": "/usr/local/bin/../share/yosys/gowin/cells_map.v:135.23-136.15",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "I0": "input",
            "F": "output"
          },
          "connections": {
            "I0": [ 9393 ],
            "F": [ 9390 ]
          }
        },
        "count_OBUF_O_2": {
          "hide_name": 0,
          "type": "OBUF",
          "parameters": {
            "NET_I": "NET",
            "NET_O": "NET"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000101",
            "NEXTPNR_BEL": "X0Y46/IOBB",
            "src": "src/modules/counter.sv:4.22-4.27",
            "&PULL_MODE=NONE": "00000000000000000000000000000001",
            "&DRIVE=4": "00000000000000000000000000000001",
            "&BANK_VCCIO=1.8": "00000000000000000000000000000001",
            "&IO_TYPE=LVCMOS33": "00000000000000000000000000000001",
            "keep": "00000000000000000000000000000001"
          },
          "port_directions": {
            "O": "output",
            "I": "input"
          },
          "connections": {
            "O": [ 9391 ],
            "I": [ 9390 ]
          }
        },
        "count_OBUF_O_1_I_LUT1_F": {
          "hide_name": 0,
          "type": "LUT1",
          "parameters": {
            "INIT": "01"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000001",
            "NEXTPNR_BEL": "X1Y47/LUT6",
            "src": "/usr/local/bin/../share/yosys/gowin/cells_map.v:135.23-136.15",
            "module_not_derived": "00000000000000000000000000000001"
          },
          "port_directions": {
            "I0": "input",
            "F": "output"
          },
          "connections": {
            "I0": [ 9387 ],
            "F": [ 9384 ]
          }
        },
        "count_OBUF_O_1": {
          "hide_name": 0,
          "type": "OBUF",
          "parameters": {
            "NET_I": "NET",
            "NET_O": "NET"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000101",
            "NEXTPNR_BEL": "X0Y48/IOBA",
            "src": "src/modules/counter.sv:4.22-4.27",
            "&PULL_MODE=NONE": "00000000000000000000000000000001",
            "&DRIVE=4": "00000000000000000000000000000001",
            "&BANK_VCCIO=1.8": "00000000000000000000000000000001",
            "&IO_TYPE=LVCMOS33": "00000000000000000000000000000001",
            "keep": "00000000000000000000000000000001"
          },
          "port_directions": {
            "O": "output",
            "I": "input"
          },
          "connections": {
            "O": [ 9385 ],
            "I": [ 9384 ]
          }
        },
        "count_OBUF_O": {
          "hide_name": 0,
          "type": "OBUF",
          "parameters": {
            "NET_I": "NET",
            "NET_O": "NET"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000101",
            "NEXTPNR_BEL": "X0Y48/IOBB",
            "src": "src/modules/counter.sv:4.22-4.27",
            "&PULL_MODE=NONE": "00000000000000000000000000000001",
            "&DRIVE=4": "00000000000000000000000000000001",
            "&BANK_VCCIO=1.8": "00000000000000000000000000000001",
            "&IO_TYPE=LVCMOS33": "00000000000000000000000000000001",
            "keep": "00000000000000000000000000000001"
          },
          "port_directions": {
            "O": "output",
            "I": "input"
          },
          "connections": {
            "O": [ 9382 ],
            "I": [ 9381 ]
          }
        },
        "clk_IBUF_I": {
          "hide_name": 0,
          "type": "IBUF",
          "parameters": {
            "NET_I": "NET",
            "NET_O": "NET"
          },
          "attributes": {
            "BEL_STRENGTH": "00000000000000000000000000000101",
            "NEXTPNR_BEL": "X55Y29/IOBB",
            "src": "src/modules/counter.sv:2.16-2.19",
            "&PULL_MODE=UP": "00000000000000000000000000000001",
            "&BANK_VCCIO=1.8": "00000000000000000000000000000001",
            "keep": "00000000000000000000000000000001"
          },
          "port_directions": {
            "O": "output",
            "I": "input"
          },
          "connections": {
            "O": [ 9378 ],
            "I": [ 9371 ]
          }
        }
      },
      "netnames": {
        "temp_ALU_I1_3_HEAD_ALULC": {
          "hide_name": 0,
          "bits": [ 9446 ] ,
          "attributes": {
            "ROUTING": "X1Y44/COUT0;;1"
          }
        },
        "temp_DFFC_Q_D[0]": {
          "hide_name": 0,
          "bits": [ 9419 ] ,
          "attributes": {
            "ROUTING": "X1Y44/F1;;1;X1Y44/XD1;X1Y44/XD1/F1;1",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:34.28-34.29",
            "force_downto": "00000000000000000000000000000001"
          }
        },
        "temp_DFFC_Q_D[1]": {
          "hide_name": 0,
          "bits": [ 9417 ] ,
          "attributes": {
            "ROUTING": "X1Y44/F2;;1;X1Y44/XD2;X1Y44/XD2/F2;1",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:34.28-34.29",
            "force_downto": "00000000000000000000000000000001"
          }
        },
        "temp_ALU_I1_3_COUT[1]": {
          "hide_name": 0,
          "bits": [ 9416 ] ,
          "attributes": {
            "ROUTING": "X1Y44/COUT1;;1",
            "unused_bits": "3",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:38.25-38.27",
            "force_downto": "00000000000000000000000000000001"
          }
        },
        "temp_DFFC_Q_D[2]": {
          "hide_name": 0,
          "bits": [ 9413 ] ,
          "attributes": {
            "ROUTING": "X1Y44/F3;;1;X1Y44/XD3;X1Y44/XD3/F3;1",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:34.28-34.29",
            "force_downto": "00000000000000000000000000000001"
          }
        },
        "temp_ALU_I1_3_COUT[2]": {
          "hide_name": 0,
          "bits": [ 9412 ] ,
          "attributes": {
            "ROUTING": "X1Y44/COUT2;;1",
            "unused_bits": "3",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:38.25-38.27",
            "force_downto": "00000000000000000000000000000001"
          }
        },
        "temp_DFFC_Q_D[3]": {
          "hide_name": 0,
          "bits": [ 9409 ] ,
          "attributes": {
            "ROUTING": "X1Y44/F4;;1;X1Y44/XD4;X1Y44/XD4/F4;1",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:34.28-34.29",
            "force_downto": "00000000000000000000000000000001"
          }
        },
        "$PACKER_GND": {
          "hide_name": 1,
          "bits": [ 9442 ] ,
          "attributes": {
            "ROUTING": "X1Y44/W210;X1Y44/W210/VSS;1;X1Y44/A4;X1Y44/A4/W210;1;X1Y44/A2;X1Y44/A2/N210;1;X0Y0/VSS;;1;X1Y44/N210;X1Y44/N210/VSS;1;X1Y44/A3;X1Y44/A3/N210;1"
          }
        },
        "$PACKER_VCC": {
          "hide_name": 1,
          "bits": [ 9441 ] ,
          "attributes": {
            "ROUTING": "X1Y44/C3;X1Y44/C3/X04;1;X1Y44/C2;X1Y44/C2/X04;1;X1Y44/N200;X1Y44/N200/VCC;1;X1Y44/A1;X1Y44/A1/N200;1;X1Y44/D2;X1Y44/D2/X08;1;X50Y27/S220;X50Y27/S220/VCC;1;X50Y27/C4;X50Y27/C4/S220;1;X1Y44/D3;X1Y44/D3/X08;1;X1Y44/X04;X1Y44/X04/VCC;1;X1Y44/D4;X1Y44/D4/X04;1;X1Y44/C1;X1Y44/C1/N220;1;X1Y44/X08;X1Y44/X08/VCC;1;X1Y44/C4;X1Y44/C4/X08;1;X1Y44/N220;X1Y44/N220/VCC;1;X1Y44/C0;X1Y44/C0/N220;1;X0Y0/VCC;;1;X1Y44/S260;X1Y44/S260/VCC;1;X1Y44/D1;X1Y44/D1/S260;1"
          }
        },
        "temp_ALU_I1_COUT[3]": {
          "hide_name": 0,
          "bits": [ 9406 ] ,
          "attributes": {
            "ROUTING": " ",
            "unused_bits": "3",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:38.25-38.27",
            "force_downto": "00000000000000000000000000000001"
          }
        },
        "temp_ALU_I1_3_COUT[3]": {
          "hide_name": 0,
          "bits": [ 9405 ] ,
          "attributes": {
            "ROUTING": "X1Y44/COUT3;;1",
            "unused_bits": "3",
            "src": "src/modules/counter.sv:12.21-12.29|/usr/local/bin/../share/yosys/gowin/arith_map.v:38.25-38.27",
            "force_downto": "00000000000000000000000000000001"
          }
        },
        "rst_IBUF_I_O": {
          "hide_name": 0,
          "bits": [ 9402 ] ,
          "attributes": {
            "ROUTING": "X1Y44/LSR2;X1Y44/LSR2/X07;1;X1Y44/LSR1;X1Y44/LSR1/X07;1;X55Y29/F6;;1;X55Y29/S830;X55Y29/S830/F6;1;X55Y37/E830;X55Y37/E830/S838;1;X48Y37/S830;X48Y37/S830/W838;1;X48Y45/W830;X48Y45/W830/S838;1;X40Y45/W800;X40Y45/W800/W838;1;X32Y45/W800;X32Y45/W800/W808;1;X24Y45/W800;X24Y45/W800/W808;1;X16Y45/W800;X16Y45/W800/W808;1;X8Y45/W800;X8Y45/W800/W808;1;X0Y45/E100;X0Y45/E100/W808;1;X1Y45/N200;X1Y45/N200/E101;1;X1Y44/X07;X1Y44/X07/N201;1;X1Y44/LSR0;X1Y44/LSR0/X07;1"
          }
        },
        "rst": {
          "hide_name": 0,
          "bits": [ 9373 ] ,
          "attributes": {
            "ROUTING": " ",
            "src": "src/modules/counter.sv:3.16-3.19"
          }
        },
        "temp[3]": {
          "hide_name": 0,
          "bits": [ 9400 ] ,
          "attributes": {
            "ROUTING": "X1Y44/S130;X1Y44/S130/Q4;1;X1Y45/S270;X1Y45/S270/S131;1;X1Y47/A1;X1Y47/A1/S272;1;X1Y44/Q4;;1;X1Y44/X03;X1Y44/X03/Q4;1;X1Y44/B4;X1Y44/B4/X03;1",
            "src": "src/modules/counter.sv:7.17-7.21"
          }
        },
        "temp[0]": {
          "hide_name": 0,
          "bits": [ 9398 ] ,
          "attributes": {
            "ROUTING": "X1Y44/E130;X1Y44/E130/Q1;1;X1Y44/A6;X1Y44/A6/E130;1;X1Y44/Q1;;1;X1Y44/B1;X1Y44/B1/Q1;1",
            "src": "src/modules/counter.sv:7.17-7.21"
          }
        },
        "count[0]": {
          "hide_name": 0,
          "bits": [ 9396 ] ,
          "attributes": {
            "ROUTING": " ",
            "src": "src/modules/counter.sv:4.22-4.27"
          }
        },
        "count_OBUF_O_3_I": {
          "hide_name": 0,
          "bits": [ 9395 ] ,
          "attributes": {
            "ROUTING": "X1Y44/F6;;1;X1Y44/EW10;X1Y44/EW10/F6;1;X0Y44/S250;X0Y44/S250/W111;1;X0Y46/A0;X0Y46/A0/S252;1"
          }
        },
        "temp[1]": {
          "hide_name": 0,
          "bits": [ 9393 ] ,
          "attributes": {
            "ROUTING": "X1Y44/S220;X1Y44/S220/Q2;1;X1Y46/X01;X1Y46/X01/S222;1;X1Y46/A1;X1Y46/A1/X01;1;X1Y44/Q2;;1;X1Y44/X01;X1Y44/X01/Q2;1;X1Y44/B2;X1Y44/B2/X01;1",
            "src": "src/modules/counter.sv:7.17-7.21"
          }
        },
        "count[1]": {
          "hide_name": 0,
          "bits": [ 9391 ] ,
          "attributes": {
            "ROUTING": " ",
            "src": "src/modules/counter.sv:4.22-4.27"
          }
        },
        "count_OBUF_O_2_I": {
          "hide_name": 0,
          "bits": [ 9390 ] ,
          "attributes": {
            "ROUTING": "X1Y46/F1;;1;X1Y46/EW20;X1Y46/EW20/F1;1;X0Y46/D1;X0Y46/D1/W121;1"
          }
        },
        "temp[2]": {
          "hide_name": 0,
          "bits": [ 9387 ] ,
          "attributes": {
            "ROUTING": "X1Y44/S230;X1Y44/S230/Q3;1;X1Y46/S230;X1Y46/S230/S232;1;X1Y47/A6;X1Y47/A6/S231;1;X1Y44/Q3;;1;X1Y44/B3;X1Y44/B3/Q3;1",
            "src": "src/modules/counter.sv:7.17-7.21"
          }
        },
        "count[2]": {
          "hide_name": 0,
          "bits": [ 9385 ] ,
          "attributes": {
            "ROUTING": " ",
            "src": "src/modules/counter.sv:4.22-4.27"
          }
        },
        "count_OBUF_O_1_I": {
          "hide_name": 0,
          "bits": [ 9384 ] ,
          "attributes": {
            "ROUTING": "X1Y47/F6;;1;X1Y47/EW10;X1Y47/EW10/F6;1;X0Y47/S250;X0Y47/S250/W111;1;X0Y48/A0;X0Y48/A0/S251;1"
          }
        },
        "count[3]": {
          "hide_name": 0,
          "bits": [ 9382 ] ,
          "attributes": {
            "ROUTING": " ",
            "src": "src/modules/counter.sv:4.22-4.27"
          }
        },
        "count_OBUF_O_I": {
          "hide_name": 0,
          "bits": [ 9381 ] ,
          "attributes": {
            "ROUTING": "X1Y47/F1;;1;X1Y47/EW20;X1Y47/EW20/F1;1;X0Y47/S220;X0Y47/S220/W121;1;X0Y48/D1;X0Y48/D1/S221;1"
          }
        },
        "clk_IBUF_I_O": {
          "hide_name": 0,
          "bits": [ 9378 ] ,
          "attributes": {
            "ROUTING": "X1Y44/CLK0;X1Y44/CLK0/X02;1;X1Y44/CLK1;X1Y44/CLK1/X02;1;X55Y29/Q6;;1;X55Y29/W830;X55Y29/W830/Q6;1;X47Y29/W800;X47Y29/W800/W838;1;X39Y29/W800;X39Y29/W800/W808;1;X31Y29/W800;X31Y29/W800/W808;1;X23Y29/W810;X23Y29/W810/W808;1;X15Y29/W810;X15Y29/W810/W818;1;X7Y29/W820;X7Y29/W820/W818;1;X0Y29/S820;X0Y29/S820/E828;1;X0Y37/S830;X0Y37/S830/S828;1;X0Y45/N130;X0Y45/N130/S838;1;X0Y44/W230;X0Y44/W230/N131;1;X1Y44/X02;X1Y44/X02/E232;1;X1Y44/CLK2;X1Y44/CLK2/X02;1"
          }
        },
        "clk": {
          "hide_name": 0,
          "bits": [ 9371 ] ,
          "attributes": {
            "ROUTING": " ",
            "src": "src/modules/counter.sv:2.16-2.19"
          }
        }
      }
    }
  }
}
