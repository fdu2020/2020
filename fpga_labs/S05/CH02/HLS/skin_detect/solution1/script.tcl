############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project skin_detect
set_top ImgProcess_Top
add_files skin_detect/src/top.cpp
add_files skin_detect/src/top.h
add_files -tb skin_detect/src/test.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb skin_detect/test.jpg
open_solution "solution1"
set_part {xa7a12tcsg325-1q}
create_clock -period 10 -name default
#source "./skin_detect/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
