quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "C:/EDA/fsm_tri"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/fsm_tri.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/stimulus/test_fsmtri.v"

vsim -L proasic3 -L presynth  -t 1ps presynth.test_fsmtri
add wave /test_fsmtri/*
run 1000ns
