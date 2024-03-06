# Created by Microsemi Libero Software 11.9.0.4
# Mon Dec 04 01:03:20 2023

# (OPEN DESIGN)

open_design "hc00.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "hc00_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\EDA\74hc00\cpu74hc00\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
