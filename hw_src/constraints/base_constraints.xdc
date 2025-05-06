# === Pblock Floorplanning for CHOICE PUF ===
create_pblock PUF_Block_Zone

add_cells_to_pblock [get_pblocks PUF_Block_Zone] \
  [get_cells -hierarchical -regexp {GEN_PUF\[.*\].PUF/.*}]

resize_pblock [get_pblocks PUF_Block_Zone] -add {CLOCKREGION_X0Y1:CLOCKREGION_X0Y1}
set_property CONTAIN_ROUTING 1 [get_pblocks PUF_Block_Zone]
set_property EXCLUDE_PLACEMENT 1 [get_pblocks PUF_Block_Zone]

# === Minimal CHOICE PUF I/O Constraints for PYNQ-Z2 (Test Setup) ===

# Clock and reset
set_property PACKAGE_PIN V5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property PACKAGE_PIN U7 [get_ports ff_reset]
set_property IOSTANDARD LVCMOS33 [get_ports ff_reset]

set_property PACKAGE_PIN V7 [get_ports chip_enable]
set_property IOSTANDARD LVCMOS33 [get_ports chip_enable]

# ASR data configuration (lower 2 bits)
set_property PACKAGE_PIN T9 [get_ports ASR_data_conf[0]]
set_property PACKAGE_PIN U10 [get_ports ASR_data_conf[1]]
set_property IOSTANDARD LVCMOS33 [get_ports ASR_data_conf[*]]

# ASR length configuration (lower 2 bits)
set_property PACKAGE_PIN Y7 [get_ports ASR_length_conf[0]]
set_property PACKAGE_PIN Y6 [get_ports ASR_length_conf[1]]
set_property IOSTANDARD LVCMOS33 [get_ports ASR_length_conf[*]]

# PUF response outputs (first 4 bits)
set_property PACKAGE_PIN Y9 [get_ports puf_response[0]]
set_property PACKAGE_PIN Y8 [get_ports puf_response[1]]
set_property PACKAGE_PIN W8 [get_ports puf_response[2]]
set_property PACKAGE_PIN W10 [get_ports puf_response[3]]
set_property IOSTANDARD LVCMOS33 [get_ports puf_response[*]]