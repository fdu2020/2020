############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project video_test
add_files -tb video_test/src/test.cpp
add_files -tb video_test/test_1080p.bmp
open_solution "solution1"
set_part {xcku115-flva1517-2-e} -tool vivado
create_clock -period 10 -name default
#source "./video_test/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
