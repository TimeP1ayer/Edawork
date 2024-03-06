quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "C:/EDA/74hc02/cpu74hc02"

if {[file exists ../designer/hc02/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/hc02/simulation/postlayout already exists"
} else {
   file delete -force ../designer/hc02/simulation/postlayout 
   vlib ../designer/hc02/simulation/postlayout
}
vmap postlayout ../designer/hc02/simulation/postlayout
vmap SmartFusion2 "C:/Microsemi/Libero_SoC_v11.9/Designer/lib/modelsim/precompiled/vlog/SmartFusion2"

vlog -vlog01compat -work postlayout "${PROJECT_DIR}/designer/hc02/hc02_ba.v"
vlog "+incdir+${PROJECT_DIR}/stimulus" -vlog01compat -work postlayout "${PROJECT_DIR}/stimulus/testhc02.v"

vsim -L SmartFusion2 -L postlayout  -t 1fs -sdfmax /hc02_0=${PROJECT_DIR}/designer/hc02/hc02_ba.sdf postlayout.testhc02
add wave /testhc02/*
run 1000ns
