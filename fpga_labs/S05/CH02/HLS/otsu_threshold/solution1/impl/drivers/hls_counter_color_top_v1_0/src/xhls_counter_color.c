// ==============================================================
// File generated on Tue Jul 28 16:41:06 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhls_counter_color.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHls_counter_color_CfgInitialize(XHls_counter_color *InstancePtr, XHls_counter_color_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHls_counter_color_Start(XHls_counter_color *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_counter_color_IsDone(XHls_counter_color *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHls_counter_color_IsIdle(XHls_counter_color *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHls_counter_color_IsReady(XHls_counter_color *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHls_counter_color_EnableAutoRestart(XHls_counter_color *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XHls_counter_color_DisableAutoRestart(XHls_counter_color *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XHls_counter_color_SetRows(XHls_counter_color *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_ROWS_DATA, Data);
}

u32 XHls_counter_color_GetRows(XHls_counter_color *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_ROWS_DATA);
    return Data;
}

void XHls_counter_color_SetCols(XHls_counter_color *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_COLS_DATA, Data);
}

u32 XHls_counter_color_GetCols(XHls_counter_color *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_COLS_DATA);
    return Data;
}

void XHls_counter_color_InterruptGlobalEnable(XHls_counter_color *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_GIE, 1);
}

void XHls_counter_color_InterruptGlobalDisable(XHls_counter_color *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_GIE, 0);
}

void XHls_counter_color_InterruptEnable(XHls_counter_color *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_IER);
    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XHls_counter_color_InterruptDisable(XHls_counter_color *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_IER);
    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XHls_counter_color_InterruptClear(XHls_counter_color *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_counter_color_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XHls_counter_color_InterruptGetEnabled(XHls_counter_color *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_IER);
}

u32 XHls_counter_color_InterruptGetStatus(XHls_counter_color *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_counter_color_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_COUNTER_COLOR_CONTROL_BUS_ADDR_ISR);
}

