# ==============================================================
# File generated on Tue Jul 28 15:49:20 +0800 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../src/test_1080p.bmp -cflags { -Wno-unknown-pragmas}
add_files -tb ../src/Test.cpp -cflags { -Wno-unknown-pragmas}
add_files fast_corner/src/top.h
add_files fast_corner/src/Top.cpp
set_part xcku115-flvd1517-2-e
create_clock -name default -period 10
