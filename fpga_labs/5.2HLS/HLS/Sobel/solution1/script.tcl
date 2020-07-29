############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Sobel
set_top hls_sobel
add_files Sobel/src/Top.cpp
add_files Sobel/src/Top.h
add_files -tb Sobel/src/Opencv_top.cpp
add_files -tb Sobel/src/Opencv_top.h
add_files -tb Sobel/src/test.cpp
add_files -tb Sobel/test_1080p.bmp
open_solution "solution1"
set_part {xcku115-flvd1517-2-e} -tool vivado
create_clock -period 10 -name default
#source "./Sobel/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -display_name "hls_sobel"
