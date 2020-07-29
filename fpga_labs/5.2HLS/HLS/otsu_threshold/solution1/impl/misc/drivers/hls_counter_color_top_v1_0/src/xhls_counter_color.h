// ==============================================================
// File generated on Tue Jul 28 16:41:06 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XHLS_COUNTER_COLOR_H
#define XHLS_COUNTER_COLOR_H

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
#include "xhls_counter_color_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_bus_BaseAddress;
} XHls_counter_color_Config;
#endif

typedef struct {
    u32 Control_bus_BaseAddress;
    u32 IsReady;
} XHls_counter_color;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XHls_counter_color_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XHls_counter_color_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XHls_counter_color_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XHls_counter_color_ReadReg(BaseAddress, RegOffset) \
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
int XHls_counter_color_Initialize(XHls_counter_color *InstancePtr, u16 DeviceId);
XHls_counter_color_Config* XHls_counter_color_LookupConfig(u16 DeviceId);
int XHls_counter_color_CfgInitialize(XHls_counter_color *InstancePtr, XHls_counter_color_Config *ConfigPtr);
#else
int XHls_counter_color_Initialize(XHls_counter_color *InstancePtr, const char* InstanceName);
int XHls_counter_color_Release(XHls_counter_color *InstancePtr);
#endif

void XHls_counter_color_Start(XHls_counter_color *InstancePtr);
u32 XHls_counter_color_IsDone(XHls_counter_color *InstancePtr);
u32 XHls_counter_color_IsIdle(XHls_counter_color *InstancePtr);
u32 XHls_counter_color_IsReady(XHls_counter_color *InstancePtr);
void XHls_counter_color_EnableAutoRestart(XHls_counter_color *InstancePtr);
void XHls_counter_color_DisableAutoRestart(XHls_counter_color *InstancePtr);

void XHls_counter_color_SetRows(XHls_counter_color *InstancePtr, u32 Data);
u32 XHls_counter_color_GetRows(XHls_counter_color *InstancePtr);
void XHls_counter_color_SetCols(XHls_counter_color *InstancePtr, u32 Data);
u32 XHls_counter_color_GetCols(XHls_counter_color *InstancePtr);

void XHls_counter_color_InterruptGlobalEnable(XHls_counter_color *InstancePtr);
void XHls_counter_color_InterruptGlobalDisable(XHls_counter_color *InstancePtr);
void XHls_counter_color_InterruptEnable(XHls_counter_color *InstancePtr, u32 Mask);
void XHls_counter_color_InterruptDisable(XHls_counter_color *InstancePtr, u32 Mask);
void XHls_counter_color_InterruptClear(XHls_counter_color *InstancePtr, u32 Mask);
u32 XHls_counter_color_InterruptGetEnabled(XHls_counter_color *InstancePtr);
u32 XHls_counter_color_InterruptGetStatus(XHls_counter_color *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
