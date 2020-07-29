# ==============================================================
# File generated on Sat Jul 25 15:33:13 +0800 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../test_1080p.bmp -cflags { -Wno-unknown-pragmas}
add_files -tb ../src/test.cpp -cflags { -Wno-unknown-pragmas}
add_files -tb ../src/Opencv_top.h -cflags { -Wno-unknown-pragmas}
add_files -tb ../src/Opencv_top.cpp -cflags { -Wno-unknown-pragmas}
add_files Sobel/src/Top.h
add_files Sobel/src/Top.cpp
set_part xcku115-flvd1517-2-e
create_clock -name default -period 10
