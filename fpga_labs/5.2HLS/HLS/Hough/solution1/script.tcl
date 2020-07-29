############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Hough
set_top hls_hough
add_files Hough/src/top.h
add_files Hough/src/top.cpp
add_files -tb Hough/src/test.cpp -cflags "-Wno-unknown-pragmas"
add_files -tb Hough/src/circle2.bmp -cflags "-Wno-unknown-pragmas"
add_files -tb Hough/src/Opencv_top.h -cflags "-Wno-unknown-pragmas"
add_files -tb Hough/src/Opencv_top.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xcku115-flvd1517-2-e} -tool vivado
create_clock -period 10 -name default
#source "./Hough/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
