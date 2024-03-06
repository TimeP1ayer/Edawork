# Created by Microsemi Libero Software 11.9.0.4
# Tue Jan 02 22:46:21 2024

# (OPEN DESIGN)

open_design "hc148.adb"

# set default back-annotation base-name
set_defvar "BA_NAME" "hc148_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {C:\EDA\cpu74HC148\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

backannotate -format "SDF" -language "VERILOG" -netlist

save_design
