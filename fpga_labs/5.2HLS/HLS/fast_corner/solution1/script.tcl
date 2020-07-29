############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fast_corner
set_top hls_fast_corner
add_files fast_corner/src/Top.cpp
add_files fast_corner/src/top.h
add_files -tb fast_corner/src/Test.cpp
add_files -tb fast_corner/src/test_1080p.bmp
open_solution "solution1"
set_part {xcku115-flvd1517-2-e} -tool vivado
create_clock -period 10 -name default
#source "./fast_corner/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
