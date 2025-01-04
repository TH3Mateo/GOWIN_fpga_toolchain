# Makefile for Verilog compilation, simulation, and FPGA synthesis

# Variables
FILE?= counter.sv


OUT_FILE = $(FILE:.sv=)_out.vvp
# append the TESTBENCH variable with _out
TESTBENCH = $(FILE:.sv=)_tb.sv
SYNTH_FILE = $(FILE:.sv=)_synth.sv
BINARY_FILE = $(FILE:.sv=)_bin.fs

# Tools
IVERILOG = iverilog
VVP = vvp
YOSYS = yosys
NEXTPNR = nextpnr-himbaechel
APYCULA = gowin_pack

DEVICE = GW2AR-LV18QN88C8/I7
DEV_FAMILY = GW2A-18C


# Default target: Runs both simulate and synthesize
all: compile synthesize flash

# Simulation target
compile:
	@echo "Compiling and simulating Verilog testbench..."
	$(IVERILOG) -g2009 -o outputs/compiled/$(OUT_FILE) src/tests/$(TESTBENCH) -I src/modules 
	$(VVP) outputs/compiled/$(OUT_FILE)


# Synthesis, place-and-route, and bitstream generation target
synthesize:
	@echo "Running Yosys synthesis..."
	$(YOSYS) -p "synth_gowin  -json outputs/synth/$(SYNTH_FILE)" src/modules/$(FILE)
	@echo "Running nextpnr for place-and-route..."
	$(NEXTPNR) --json outputs/synth/$(SYNTH_FILE) \
                   --write outputs/routed/$(SYNTH_FILE) \
                   --device $(DEVICE) \
				   --vopt family=$(DEV_FAMILY)\
                   --vopt cst=src/ucf/$(FILE:.sv=).ucf
	@echo "Generating bitstream with apycula..."
	$(APYCULA)  -d $(DEV_FAMILY)  -o outputs/bin/$(BINARY_FILE) outputs/routed/$(SYNTH_FILE)

view:
	gtkwave outputs/sim/$(FILE:.sv=)_data.vcd --script=commands.tcl



flash:
	@echo "Flashing the FPGA..."
	openFPGALoader -b tangnano20k outputs/bin/$(BINARY_FILE)

	

# board tag for openfpgaloader: tangnano20k

# Clean target
clean:
	@echo "Cleaning up..."
	grep -rl "$(FILE:.v=)" outputs/ | xargs rm -f
	rm -f outputs/bin/$(BINARY_FILE)


