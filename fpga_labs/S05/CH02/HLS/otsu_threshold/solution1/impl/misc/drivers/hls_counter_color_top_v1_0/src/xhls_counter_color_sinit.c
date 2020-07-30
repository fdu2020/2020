// ==============================================================
// File generated on Tue Jul 28 16:41:06 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhls_counter_color.h"

extern XHls_counter_color_Config XHls_counter_color_ConfigTable[];

XHls_counter_color_Config *XHls_counter_color_LookupConfig(u16 DeviceId) {
	XHls_counter_color_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHLS_COUNTER_COLOR_NUM_INSTANCES; Index++) {
		if (XHls_counter_color_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHls_counter_color_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHls_counter_color_Initialize(XHls_counter_color *InstancePtr, u16 DeviceId) {
	XHls_counter_color_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHls_counter_color_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHls_counter_color_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

