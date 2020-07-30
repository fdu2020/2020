// ==============================================================
// File generated on Sat Jul 25 15:55:00 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHLS_SOBEL_H
#define XHLS_SOBEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xhls_sobel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XHls_sobel_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XHls_sobel;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHls_sobel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHls_sobel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHls_sobel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHls_sobel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XHls_sobel_Initialize(XHls_sobel *InstancePtr, u16 DeviceId);
XHls_sobel_Config* XHls_sobel_LookupConfig(u16 DeviceId);
int XHls_sobel_CfgInitialize(XHls_sobel *InstancePtr, XHls_sobel_Config *ConfigPtr);
#else
int XHls_sobel_Initialize(XHls_sobel *InstancePtr, const char* InstanceName);
int XHls_sobel_Release(XHls_sobel *InstancePtr);
#endif

void XHls_sobel_Start(XHls_sobel *InstancePtr);
u32 XHls_sobel_IsDone(XHls_sobel *InstancePtr);
u32 XHls_sobel_IsIdle(XHls_sobel *InstancePtr);
u32 XHls_sobel_IsReady(XHls_sobel *InstancePtr);
void XHls_sobel_EnableAutoRestart(XHls_sobel *InstancePtr);
void XHls_sobel_DisableAutoRestart(XHls_sobel *InstancePtr);

void XHls_sobel_SetRows(XHls_sobel *InstancePtr, u32 Data);
u32 XHls_sobel_GetRows(XHls_sobel *InstancePtr);
void XHls_sobel_SetCols(XHls_sobel *InstancePtr, u32 Data);
u32 XHls_sobel_GetCols(XHls_sobel *InstancePtr);

void XHls_sobel_InterruptGlobalEnable(XHls_sobel *InstancePtr);
void XHls_sobel_InterruptGlobalDisable(XHls_sobel *InstancePtr);
void XHls_sobel_InterruptEnable(XHls_sobel *InstancePtr, u32 Mask);
void XHls_sobel_InterruptDisable(XHls_sobel *InstancePtr, u32 Mask);
void XHls_sobel_InterruptClear(XHls_sobel *InstancePtr, u32 Mask);
u32 XHls_sobel_InterruptGetEnabled(XHls_sobel *InstancePtr);
u32 XHls_sobel_InterruptGetStatus(XHls_sobel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
