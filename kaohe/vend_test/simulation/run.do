quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "C:/EDA/kaohe/vend_test"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap proasic3 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/vend_mealy.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/vend_moore.v"
vlog -vlog01compat -work presynth "${PROJECT_DIR}/component/work/vend_test/vend_test.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/stimulus/testbench_vend.v"

vsim -L proasic3 -L presynth  -t 1ps presynth.testbench_vend
add wave /testbench_vend/*
run 1000ns
