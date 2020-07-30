// ==============================================================
// File generated on Sat Jul 25 15:55:00 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xhls_sobel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XHls_sobel_CfgInitialize(XHls_sobel *InstancePtr, XHls_sobel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XHls_sobel_Start(XHls_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XHls_sobel_IsDone(XHls_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XHls_sobel_IsIdle(XHls_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XHls_sobel_IsReady(XHls_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XHls_sobel_EnableAutoRestart(XHls_sobel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XHls_sobel_DisableAutoRestart(XHls_sobel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XHls_sobel_SetRows(XHls_sobel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_ROWS_DATA, Data);
}

u32 XHls_sobel_GetRows(XHls_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_ROWS_DATA);
    return Data;
}

void XHls_sobel_SetCols(XHls_sobel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_COLS_DATA, Data);
}

u32 XHls_sobel_GetCols(XHls_sobel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_COLS_DATA);
    return Data;
}

void XHls_sobel_InterruptGlobalEnable(XHls_sobel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_GIE, 1);
}

void XHls_sobel_InterruptGlobalDisable(XHls_sobel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_GIE, 0);
}

void XHls_sobel_InterruptEnable(XHls_sobel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_IER);
    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XHls_sobel_InterruptDisable(XHls_sobel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_IER);
    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XHls_sobel_InterruptClear(XHls_sobel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XHls_sobel_WriteReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XHls_sobel_InterruptGetEnabled(XHls_sobel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_IER);
}

u32 XHls_sobel_InterruptGetStatus(XHls_sobel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XHls_sobel_ReadReg(InstancePtr->Control_bus_BaseAddress, XHLS_SOBEL_CONTROL_BUS_ADDR_ISR);
}

