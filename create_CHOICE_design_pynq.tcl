#*****************************************************************************************
# @author: Streit Franz-Josef
# @date:   13.04.20
# @brief:  TCL script to generate CHOICE HW/SW Design on the PYNQ-Z2 board
#*****************************************************************************************

# Create project (force overwrite if it already exists)
set project_name "CHOICE_design"
create_project -force $project_name ./CHOICE_design -part xc7z020clg400-1

# Set project properties
set_property default_lib xil_defaultlib [current_project]
set_property part xc7z020clg400-1 [current_project]
set_property board_part tul.com.tw:pynq-z2:part0:1.0 [current_project]
set_property sim.ip.auto_export_scripts 1 [current_project]
set_property simulator_language Mixed [current_project]
set_property target_language VHDL [current_project]

# Project directory
set proj_dir [get_property directory [current_project]]

# Add constraints
add_files -fileset constrs_1 -norecurse "$proj_dir/../hw_src/constraints/base_constraints.xdc"
add_files -fileset constrs_1 -norecurse "$proj_dir/../hw_src/constraints/PUF_constraints.xdc"

# Add HDL source files
add_files -norecurse "$proj_dir/../hw_src/hdl/CHOICE_PUF.vhd"
add_files -norecurse "$proj_dir/../hw_src/hdl/CHOICE_PUF_gen.vhd"
add_files -norecurse "$proj_dir/../hw_src/hdl/PUF_controller.vhd"
add_files -norecurse "$proj_dir/../hw_src/hdl/pattern_ctrl_unit.vhd"
add_files -norecurse "$proj_dir/../hw_src/hdl/request_ctrl_unit.vhd"
add_files -norecurse "$proj_dir/../hw_src/hdl/tune_ctrl_unit.vhd"

# Add simulation testbench
add_files -fileset sim_1 -norecurse "$proj_dir/../hw_sim/PUF_controller_tb.vhd"

# Set IP repository path
set_property ip_repo_paths "$proj_dir/../hw_src/ip_repo" [current_project]

# Update IP catalog
update_ip_catalog -rebuild -scan_changes

# Create block design
set bd_design_name "design_1"
create_bd_design $bd_design_name

# Source the block design creation script
source "$proj_dir/../hw_src/bd/create_bd.tcl"

# Generate wrapper and set top
make_wrapper -files [get_files $bd_design_name.bd] -top -import
set_property top ${bd_design_name}_wrapper [current_fileset]

# Final setup
puts "INFO: Project created: $project_name"
update_compile_order -fileset sources_1
update_ip_catalog -rebuild -scan_changes
