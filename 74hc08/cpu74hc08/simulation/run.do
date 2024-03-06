quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "C:/EDA/74hc08/cpu74hc08"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap SmartFusion2 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/SmartFusion2"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/hc08.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/stimulus/testhc08.v"

vsim -L SmartFusion2 -L presynth  -t 1fs presynth.testhc08
add wave /testhc08/*
run 1000ns
