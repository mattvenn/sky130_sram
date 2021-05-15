# Design
set ::env(DESIGN_NAME) "sky130_sram"

set ::env(VERILOG_FILES) "$::env(DESIGN_DIR)/sky130_sram.v"

set ::env(VERILOG_FILES_BLACKBOX) "$::env(DESIGN_DIR)/sky130_sram_1kbyte_1rw1r_32x256_8/sky130_sram_1kbyte_1rw1r_32x256_8.v"

set ::env(RUN_KLAYOUT_XOR) 0
set ::env(RUN_KLAYOUT_DRC) 0

#set ::env(PL_BASIC_PLACEMENT) 1
#set ::env(PL_SKIP_INITIAL_PLACEMENT) 1
#set ::env(PL_RANDOM_GLB_PLACEMENT) 1

set ::env(FP_PDN_VOFFSET) 5
set ::env(FP_PDN_VPITCH) 20
set ::env(FP_PDN_HPITCH) 50

set ::env(VDD_NETS) [list {vccd1} {vccd2} {vdda1} {vdda2}]
set ::env(GND_NETS) [list {vssd1} {vssd2} {vssa1} {vssa2}]

#set ::env(PL_TARGET_DENSITY) 0.4
set ::env(DIE_AREA) "0 0 700 700"
set ::env(FP_SIZING) absolute

#set ::env(CLOCK_PERIOD) "10.000"
#set ::env(CLOCK_PORT) "clk0"
set ::env(CLOCK_TREE_SYNTH) 0
set ::env(CLOCK_PORT) ""

set ::env(EXTRA_LEFS)       [glob $::env(DESIGN_DIR)/sky130_sram_1kbyte_1rw1r_32x256_8/*.lef]
set ::env(EXTRA_GDS_FILES) [glob $::env(DESIGN_DIR)/sky130_sram_1kbyte_1rw1r_32x256_8/*.gds]
set ::env(MACRO_PLACEMENT_CFG) "$::env(DESIGN_DIR)/macro.cfg"

set filename $::env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
