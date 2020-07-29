// ==============================================================
// File generated on Sat Jul 25 15:55:00 +0800 2020
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xhls_sobel.h"

extern XHls_sobel_Config XHls_sobel_ConfigTable[];

XHls_sobel_Config *XHls_sobel_LookupConfig(u16 DeviceId) {
	XHls_sobel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XHLS_SOBEL_NUM_INSTANCES; Index++) {
		if (XHls_sobel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XHls_sobel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XHls_sobel_Initialize(XHls_sobel *InstancePtr, u16 DeviceId) {
	XHls_sobel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XHls_sobel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XHls_sobel_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

