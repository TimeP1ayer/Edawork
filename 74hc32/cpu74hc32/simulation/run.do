quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "C:/EDA/74hc32/cpu74hc32"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap SmartFusion2 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/SmartFusion2"

vlog -vlog01compat -work presynth "${PROJECT_DIR}/hdl/hc32.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work presynth "${PROJECT_DIR}/stimulus/testhc32.v"

vsim -L SmartFusion2 -L presynth  -t 1fs presynth.testhc32
add wave /testhc32/*
run 1000ns
