quietly set ACTELLIBNAME ProASIC3
quietly set PROJECT_DIR "C:/EDA/cpu74hc4511"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   file delete -force postsynth 
   vlib postsynth
}
vmap postsynth postsynth
vmap proasic3 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/proasic3"

vlog -vlog01compat -work postsynth "${PROJECT_DIR}/synthesis/hc4511.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postsynth "${PROJECT_DIR}/stimulus/testhc4511.v"

vsim -L proasic3 -L postsynth  -t 1ps postsynth.testhc4511
add wave /testhc4511/*
run 1000ns
