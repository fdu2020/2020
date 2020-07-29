// ==============================================================
// File generated on Tue Jul 28 15:49:19 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhls_fast_corner.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHls_fast_corner_CfgInitialize(XHls_fast_corner *InstancePtr, XHls_fast_corner_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHls_fast_corner_Start(XHls_fast_corner *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_fast_corner_IsDone(XHls_fast_corner *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHls_fast_corner_IsIdle(XHls_fast_corner *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHls_fast_corner_IsReady(XHls_fast_corner *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHls_fast_corner_EnableAutoRestart(XHls_fast_corner *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XHls_fast_corner_DisableAutoRestart(XHls_fast_corner *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XHls_fast_corner_SetRows(XHls_fast_corner *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_ROWS_DATA, Data);
}

u32 XHls_fast_corner_GetRows(XHls_fast_corner *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_ROWS_DATA);
    return Data;
}

void XHls_fast_corner_SetCols(XHls_fast_corner *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_COLS_DATA, Data);
}

u32 XHls_fast_corner_GetCols(XHls_fast_corner *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_COLS_DATA);
    return Data;
}

void XHls_fast_corner_SetThrehold(XHls_fast_corner *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_THREHOLD_DATA, Data);
}

u32 XHls_fast_corner_GetThrehold(XHls_fast_corner *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_THREHOLD_DATA);
    return Data;
}

void XHls_fast_corner_InterruptGlobalEnable(XHls_fast_corner *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_GIE, 1);
}

void XHls_fast_corner_InterruptGlobalDisable(XHls_fast_corner *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_GIE, 0);
}

void XHls_fast_corner_InterruptEnable(XHls_fast_corner *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_IER);
    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XHls_fast_corner_InterruptDisable(XHls_fast_corner *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_IER);
    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XHls_fast_corner_InterruptClear(XHls_fast_corner *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_fast_corner_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XHls_fast_corner_InterruptGetEnabled(XHls_fast_corner *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_IER);
}

u32 XHls_fast_corner_InterruptGetStatus(XHls_fast_corner *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_fast_corner_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_FAST_CORNER_CONTROL_BUS_ADDR_ISR);
}

