// ==============================================================
// File generated on Tue Jul 28 15:49:19 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHLS_FAST_CORNER_H
#define XHLS_FAST_CORNER_H

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
#include "xhls_fast_corner_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XHls_fast_corner_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XHls_fast_corner;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHls_fast_corner_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHls_fast_corner_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHls_fast_corner_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHls_fast_corner_ReadReg(BaseAddress, RegOffset) \
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
int XHls_fast_corner_Initialize(XHls_fast_corner *InstancePtr, u16 DeviceId);
XHls_fast_corner_Config* XHls_fast_corner_LookupConfig(u16 DeviceId);
int XHls_fast_corner_CfgInitialize(XHls_fast_corner *InstancePtr, XHls_fast_corner_Config *ConfigPtr);
#else
int XHls_fast_corner_Initialize(XHls_fast_corner *InstancePtr, const char* InstanceName);
int XHls_fast_corner_Release(XHls_fast_corner *InstancePtr);
#endif

void XHls_fast_corner_Start(XHls_fast_corner *InstancePtr);
u32 XHls_fast_corner_IsDone(XHls_fast_corner *InstancePtr);
u32 XHls_fast_corner_IsIdle(XHls_fast_corner *InstancePtr);
u32 XHls_fast_corner_IsReady(XHls_fast_corner *InstancePtr);
void XHls_fast_corner_EnableAutoRestart(XHls_fast_corner *InstancePtr);
void XHls_fast_corner_DisableAutoRestart(XHls_fast_corner *InstancePtr);

void XHls_fast_corner_SetRows(XHls_fast_corner *InstancePtr, u32 Data);
u32 XHls_fast_corner_GetRows(XHls_fast_corner *InstancePtr);
void XHls_fast_corner_SetCols(XHls_fast_corner *InstancePtr, u32 Data);
u32 XHls_fast_corner_GetCols(XHls_fast_corner *InstancePtr);
void XHls_fast_corner_SetThrehold(XHls_fast_corner *InstancePtr, u32 Data);
u32 XHls_fast_corner_GetThrehold(XHls_fast_corner *InstancePtr);

void XHls_fast_corner_InterruptGlobalEnable(XHls_fast_corner *InstancePtr);
void XHls_fast_corner_InterruptGlobalDisable(XHls_fast_corner *InstancePtr);
void XHls_fast_corner_InterruptEnable(XHls_fast_corner *InstancePtr, u32 Mask);
void XHls_fast_corner_InterruptDisable(XHls_fast_corner *InstancePtr, u32 Mask);
void XHls_fast_corner_InterruptClear(XHls_fast_corner *InstancePtr, u32 Mask);
u32 XHls_fast_corner_InterruptGetEnabled(XHls_fast_corner *InstancePtr);
u32 XHls_fast_corner_InterruptGetStatus(XHls_fast_corner *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
