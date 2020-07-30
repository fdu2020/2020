############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project otsu_threshold
set_top hls_counter_color
add_files otsu_threshold/src/top.cpp
add_files otsu_threshold/src/top.h
add_files -tb otsu_threshold/src/car.bmp
add_files -tb otsu_threshold/src/test.cpp
open_solution "solution1"
set_part {xcku115-flvd1517-2-e} -tool vivado
create_clock -period 10 -name default
#source "./otsu_threshold/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
