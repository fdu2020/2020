set moduleName hls_hough
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {hls_hough}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_axi_V_data_V int 32 regular {fifo 0 volatile }  }
	{ src_axi_V_keep_V int 4 regular {fifo 0 volatile }  }
	{ src_axi_V_strb_V int 4 regular {fifo 0 volatile }  }
	{ src_axi_V_user_V int 1 regular {fifo 0 volatile }  }
	{ src_axi_V_last_V int 1 regular {fifo 0 volatile }  }
	{ src_axi_V_id_V int 1 regular {fifo 0 volatile }  }
	{ src_axi_V_dest_V int 1 regular {fifo 0 volatile }  }
	{ dst_axi_V_data_V int 32 regular {fifo 1 volatile }  }
	{ dst_axi_V_keep_V int 4 regular {fifo 1 volatile }  }
	{ dst_axi_V_strb_V int 4 regular {fifo 1 volatile }  }
	{ dst_axi_V_user_V int 1 regular {fifo 1 volatile }  }
	{ dst_axi_V_last_V int 1 regular {fifo 1 volatile }  }
	{ dst_axi_V_id_V int 1 regular {fifo 1 volatile }  }
	{ dst_axi_V_dest_V int 1 regular {fifo 1 volatile }  }
	{ rows int 32 regular  }
	{ cols int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_axi_V_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "src_axi.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "src_axi.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi_V_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "src_axi.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src_axi.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src_axi.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src_axi.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "src_axi_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src_axi.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_axi_V_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "dst_axi.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_axi_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "dst_axi.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_axi_V_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "dst_axi.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_axi_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst_axi.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_axi_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst_axi.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_axi_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst_axi.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_axi_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst_axi.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rows","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cols","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_axi_V_data_V_dout sc_in sc_lv 32 signal 0 } 
	{ src_axi_V_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ src_axi_V_data_V_read sc_out sc_logic 1 signal 0 } 
	{ src_axi_V_keep_V_dout sc_in sc_lv 4 signal 1 } 
	{ src_axi_V_keep_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ src_axi_V_keep_V_read sc_out sc_logic 1 signal 1 } 
	{ src_axi_V_strb_V_dout sc_in sc_lv 4 signal 2 } 
	{ src_axi_V_strb_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_axi_V_strb_V_read sc_out sc_logic 1 signal 2 } 
	{ src_axi_V_user_V_dout sc_in sc_lv 1 signal 3 } 
	{ src_axi_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ src_axi_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ src_axi_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ src_axi_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ src_axi_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ src_axi_V_id_V_dout sc_in sc_lv 1 signal 5 } 
	{ src_axi_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ src_axi_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ src_axi_V_dest_V_dout sc_in sc_lv 1 signal 6 } 
	{ src_axi_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ src_axi_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ dst_axi_V_data_V_din sc_out sc_lv 32 signal 7 } 
	{ dst_axi_V_data_V_full_n sc_in sc_logic 1 signal 7 } 
	{ dst_axi_V_data_V_write sc_out sc_logic 1 signal 7 } 
	{ dst_axi_V_keep_V_din sc_out sc_lv 4 signal 8 } 
	{ dst_axi_V_keep_V_full_n sc_in sc_logic 1 signal 8 } 
	{ dst_axi_V_keep_V_write sc_out sc_logic 1 signal 8 } 
	{ dst_axi_V_strb_V_din sc_out sc_lv 4 signal 9 } 
	{ dst_axi_V_strb_V_full_n sc_in sc_logic 1 signal 9 } 
	{ dst_axi_V_strb_V_write sc_out sc_logic 1 signal 9 } 
	{ dst_axi_V_user_V_din sc_out sc_lv 1 signal 10 } 
	{ dst_axi_V_user_V_full_n sc_in sc_logic 1 signal 10 } 
	{ dst_axi_V_user_V_write sc_out sc_logic 1 signal 10 } 
	{ dst_axi_V_last_V_din sc_out sc_lv 1 signal 11 } 
	{ dst_axi_V_last_V_full_n sc_in sc_logic 1 signal 11 } 
	{ dst_axi_V_last_V_write sc_out sc_logic 1 signal 11 } 
	{ dst_axi_V_id_V_din sc_out sc_lv 1 signal 12 } 
	{ dst_axi_V_id_V_full_n sc_in sc_logic 1 signal 12 } 
	{ dst_axi_V_id_V_write sc_out sc_logic 1 signal 12 } 
	{ dst_axi_V_dest_V_din sc_out sc_lv 1 signal 13 } 
	{ dst_axi_V_dest_V_full_n sc_in sc_logic 1 signal 13 } 
	{ dst_axi_V_dest_V_write sc_out sc_logic 1 signal 13 } 
	{ rows sc_in sc_lv 32 signal 14 } 
	{ cols sc_in sc_lv 32 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_axi_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "src_axi_V_data_V", "role": "dout" }} , 
 	{ "name": "src_axi_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_data_V", "role": "empty_n" }} , 
 	{ "name": "src_axi_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_data_V", "role": "read" }} , 
 	{ "name": "src_axi_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_axi_V_keep_V", "role": "dout" }} , 
 	{ "name": "src_axi_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "src_axi_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_keep_V", "role": "read" }} , 
 	{ "name": "src_axi_V_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "src_axi_V_strb_V", "role": "dout" }} , 
 	{ "name": "src_axi_V_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_strb_V", "role": "empty_n" }} , 
 	{ "name": "src_axi_V_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_strb_V", "role": "read" }} , 
 	{ "name": "src_axi_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_user_V", "role": "dout" }} , 
 	{ "name": "src_axi_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_user_V", "role": "empty_n" }} , 
 	{ "name": "src_axi_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_user_V", "role": "read" }} , 
 	{ "name": "src_axi_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_last_V", "role": "dout" }} , 
 	{ "name": "src_axi_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_last_V", "role": "empty_n" }} , 
 	{ "name": "src_axi_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_last_V", "role": "read" }} , 
 	{ "name": "src_axi_V_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_id_V", "role": "dout" }} , 
 	{ "name": "src_axi_V_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_id_V", "role": "empty_n" }} , 
 	{ "name": "src_axi_V_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_id_V", "role": "read" }} , 
 	{ "name": "src_axi_V_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_dest_V", "role": "dout" }} , 
 	{ "name": "src_axi_V_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_dest_V", "role": "empty_n" }} , 
 	{ "name": "src_axi_V_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_axi_V_dest_V", "role": "read" }} , 
 	{ "name": "dst_axi_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dst_axi_V_data_V", "role": "din" }} , 
 	{ "name": "dst_axi_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_data_V", "role": "full_n" }} , 
 	{ "name": "dst_axi_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_data_V", "role": "write" }} , 
 	{ "name": "dst_axi_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_axi_V_keep_V", "role": "din" }} , 
 	{ "name": "dst_axi_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_keep_V", "role": "full_n" }} , 
 	{ "name": "dst_axi_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_keep_V", "role": "write" }} , 
 	{ "name": "dst_axi_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "dst_axi_V_strb_V", "role": "din" }} , 
 	{ "name": "dst_axi_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_strb_V", "role": "full_n" }} , 
 	{ "name": "dst_axi_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_strb_V", "role": "write" }} , 
 	{ "name": "dst_axi_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_user_V", "role": "din" }} , 
 	{ "name": "dst_axi_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_user_V", "role": "full_n" }} , 
 	{ "name": "dst_axi_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_user_V", "role": "write" }} , 
 	{ "name": "dst_axi_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_last_V", "role": "din" }} , 
 	{ "name": "dst_axi_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_last_V", "role": "full_n" }} , 
 	{ "name": "dst_axi_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_last_V", "role": "write" }} , 
 	{ "name": "dst_axi_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_id_V", "role": "din" }} , 
 	{ "name": "dst_axi_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_id_V", "role": "full_n" }} , 
 	{ "name": "dst_axi_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_id_V", "role": "write" }} , 
 	{ "name": "dst_axi_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_dest_V", "role": "din" }} , 
 	{ "name": "dst_axi_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_dest_V", "role": "full_n" }} , 
 	{ "name": "dst_axi_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_axi_V_dest_V", "role": "write" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "34", "35", "36"],
		"CDFG" : "hls_hough",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_hls_hough_line_fu_218"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_AXIvideo2Mat_fu_250"}],
		"Port" : [
			{"Name" : "src_axi_V_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_AXIvideo2Mat_fu_250", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "src_axi_V_keep_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_AXIvideo2Mat_fu_250", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "src_axi_V_strb_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_AXIvideo2Mat_fu_250", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "src_axi_V_user_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_AXIvideo2Mat_fu_250", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "src_axi_V_last_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_AXIvideo2Mat_fu_250", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "src_axi_V_id_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_AXIvideo2Mat_fu_250", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "src_axi_V_dest_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "grp_AXIvideo2Mat_fu_250", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "dst_axi_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_axi_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_axi_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_axi_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_axi_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_axi_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_axi_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_axi_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_axi_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_axi_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_axi_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_axi_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_axi_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_axi_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_20"}]},
			{"Name" : "pow_reduce_anonymo_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_19"}]},
			{"Name" : "pow_reduce_anonymo_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_16"}]},
			{"Name" : "pow_reduce_anonymo_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_17"}]},
			{"Name" : "pow_reduce_anonymo_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_9"}]},
			{"Name" : "pow_reduce_anonymo_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_12"}]},
			{"Name" : "pow_reduce_anonymo_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_13"}]},
			{"Name" : "pow_reduce_anonymo_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_14"}]},
			{"Name" : "pow_reduce_anonymo_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_15"}]},
			{"Name" : "pow_reduce_anonymo_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_18"}]},
			{"Name" : "pow_reduce_anonymo", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo"}]},
			{"Name" : "pow_reduce_anonymo_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_hls_hough_line_fu_218", "Port" : "pow_reduce_anonymo_21"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218", "Parent" : "0", "Child" : ["2", "3", "17", "31", "32", "33"],
		"CDFG" : "hls_hough_line",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "src_data_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_20"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_20"}]},
			{"Name" : "pow_reduce_anonymo_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_19"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_19"}]},
			{"Name" : "pow_reduce_anonymo_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_16"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_16"}]},
			{"Name" : "pow_reduce_anonymo_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_17"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_17"}]},
			{"Name" : "pow_reduce_anonymo_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_9"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_9"}]},
			{"Name" : "pow_reduce_anonymo_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_12"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_12"}]},
			{"Name" : "pow_reduce_anonymo_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_13"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_13"}]},
			{"Name" : "pow_reduce_anonymo_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_14"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_14"}]},
			{"Name" : "pow_reduce_anonymo_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_15"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_15"}]},
			{"Name" : "pow_reduce_anonymo_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_18"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_18"}]},
			{"Name" : "pow_reduce_anonymo", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo"}]},
			{"Name" : "pow_reduce_anonymo_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_pow_generic_double_s_fu_337", "Port" : "pow_reduce_anonymo_21"},
					{"ID" : "3", "SubInstance" : "grp_pow_generic_double_s_fu_308", "Port" : "pow_reduce_anonymo_21"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.p_count_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308", "Parent" : "1", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_21", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_20_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_19_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_16_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_17_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_9_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_12_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_13_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_14_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_15_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_18_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.pow_reduce_anonymo_21_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_308.hls_hough_mac_mulncg_U11", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337", "Parent" : "1", "Child" : ["18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "22", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymo_21", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_20_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_19_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_16_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_17_U", "Parent" : "17"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_9_U", "Parent" : "17"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_12_U", "Parent" : "17"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_13_U", "Parent" : "17"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_14_U", "Parent" : "17"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_15_U", "Parent" : "17"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_18_U", "Parent" : "17"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_U", "Parent" : "17"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.pow_reduce_anonymo_21_U", "Parent" : "17"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.grp_pow_generic_double_s_fu_337.hls_hough_mac_mulncg_U11", "Parent" : "17"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.hls_hough_dadddsupcA_U26", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.hls_hough_sitodp_qcK_U27", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_hls_hough_line_fu_218.hls_hough_dsqrt_6rcU_U28", "Parent" : "1"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AXIvideo2Mat_fu_250", "Parent" : "0",
		"CDFG" : "AXIvideo2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "2080083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_cols_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_data_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "img_data_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_src_data_stream_s_fifo_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_dst_data_stream_s_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	hls_hough {
		src_axi_V_data_V {Type I LastRead 7 FirstWrite -1}
		src_axi_V_keep_V {Type I LastRead 7 FirstWrite -1}
		src_axi_V_strb_V {Type I LastRead 7 FirstWrite -1}
		src_axi_V_user_V {Type I LastRead 7 FirstWrite -1}
		src_axi_V_last_V {Type I LastRead 7 FirstWrite -1}
		src_axi_V_id_V {Type I LastRead 7 FirstWrite -1}
		src_axi_V_dest_V {Type I LastRead 7 FirstWrite -1}
		dst_axi_V_data_V {Type O LastRead -1 FirstWrite 6}
		dst_axi_V_keep_V {Type O LastRead -1 FirstWrite 6}
		dst_axi_V_strb_V {Type O LastRead -1 FirstWrite 6}
		dst_axi_V_user_V {Type O LastRead -1 FirstWrite 6}
		dst_axi_V_last_V {Type O LastRead -1 FirstWrite 6}
		dst_axi_V_id_V {Type O LastRead -1 FirstWrite 6}
		dst_axi_V_dest_V {Type O LastRead -1 FirstWrite 6}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymo_20 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_19 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_16 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_17 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_9 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_12 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_13 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_14 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_15 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_18 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_21 {Type I LastRead -1 FirstWrite -1}}
	hls_hough_line {
		src_data_stream_V {Type I LastRead 3 FirstWrite -1}
		dst_data_stream_V {Type O LastRead -1 FirstWrite 68}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymo_20 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_19 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_16 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_17 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_9 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_12 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_13 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_14 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_15 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_18 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_21 {Type I LastRead -1 FirstWrite -1}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymo_20 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_19 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_16 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_17 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_9 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_12 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_13 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_14 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_15 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_18 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_21 {Type I LastRead -1 FirstWrite -1}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymo_20 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_19 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_16 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_17 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_9 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_12 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_13 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_14 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_15 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_18 {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymo_21 {Type I LastRead -1 FirstWrite -1}}
	AXIvideo2Mat {
		AXI_video_strm_V_data_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 7 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 7 FirstWrite -1}
		img_rows_V_read {Type I LastRead 0 FirstWrite -1}
		img_cols_V_read {Type I LastRead 0 FirstWrite -1}
		img_data_stream_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src_axi_V_data_V { ap_fifo {  { src_axi_V_data_V_dout fifo_data 0 32 }  { src_axi_V_data_V_empty_n fifo_status 0 1 }  { src_axi_V_data_V_read fifo_update 1 1 } } }
	src_axi_V_keep_V { ap_fifo {  { src_axi_V_keep_V_dout fifo_data 0 4 }  { src_axi_V_keep_V_empty_n fifo_status 0 1 }  { src_axi_V_keep_V_read fifo_update 1 1 } } }
	src_axi_V_strb_V { ap_fifo {  { src_axi_V_strb_V_dout fifo_data 0 4 }  { src_axi_V_strb_V_empty_n fifo_status 0 1 }  { src_axi_V_strb_V_read fifo_update 1 1 } } }
	src_axi_V_user_V { ap_fifo {  { src_axi_V_user_V_dout fifo_data 0 1 }  { src_axi_V_user_V_empty_n fifo_status 0 1 }  { src_axi_V_user_V_read fifo_update 1 1 } } }
	src_axi_V_last_V { ap_fifo {  { src_axi_V_last_V_dout fifo_data 0 1 }  { src_axi_V_last_V_empty_n fifo_status 0 1 }  { src_axi_V_last_V_read fifo_update 1 1 } } }
	src_axi_V_id_V { ap_fifo {  { src_axi_V_id_V_dout fifo_data 0 1 }  { src_axi_V_id_V_empty_n fifo_status 0 1 }  { src_axi_V_id_V_read fifo_update 1 1 } } }
	src_axi_V_dest_V { ap_fifo {  { src_axi_V_dest_V_dout fifo_data 0 1 }  { src_axi_V_dest_V_empty_n fifo_status 0 1 }  { src_axi_V_dest_V_read fifo_update 1 1 } } }
	dst_axi_V_data_V { ap_fifo {  { dst_axi_V_data_V_din fifo_data 1 32 }  { dst_axi_V_data_V_full_n fifo_status 0 1 }  { dst_axi_V_data_V_write fifo_update 1 1 } } }
	dst_axi_V_keep_V { ap_fifo {  { dst_axi_V_keep_V_din fifo_data 1 4 }  { dst_axi_V_keep_V_full_n fifo_status 0 1 }  { dst_axi_V_keep_V_write fifo_update 1 1 } } }
	dst_axi_V_strb_V { ap_fifo {  { dst_axi_V_strb_V_din fifo_data 1 4 }  { dst_axi_V_strb_V_full_n fifo_status 0 1 }  { dst_axi_V_strb_V_write fifo_update 1 1 } } }
	dst_axi_V_user_V { ap_fifo {  { dst_axi_V_user_V_din fifo_data 1 1 }  { dst_axi_V_user_V_full_n fifo_status 0 1 }  { dst_axi_V_user_V_write fifo_update 1 1 } } }
	dst_axi_V_last_V { ap_fifo {  { dst_axi_V_last_V_din fifo_data 1 1 }  { dst_axi_V_last_V_full_n fifo_status 0 1 }  { dst_axi_V_last_V_write fifo_update 1 1 } } }
	dst_axi_V_id_V { ap_fifo {  { dst_axi_V_id_V_din fifo_data 1 1 }  { dst_axi_V_id_V_full_n fifo_status 0 1 }  { dst_axi_V_id_V_write fifo_update 1 1 } } }
	dst_axi_V_dest_V { ap_fifo {  { dst_axi_V_dest_V_din fifo_data 1 1 }  { dst_axi_V_dest_V_full_n fifo_status 0 1 }  { dst_axi_V_dest_V_write fifo_update 1 1 } } }
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	src_axi_V_data_V { fifo_read 1 no_conditional }
	src_axi_V_keep_V { fifo_read 1 no_conditional }
	src_axi_V_strb_V { fifo_read 1 no_conditional }
	src_axi_V_user_V { fifo_read 1 no_conditional }
	src_axi_V_last_V { fifo_read 1 no_conditional }
	src_axi_V_id_V { fifo_read 1 no_conditional }
	src_axi_V_dest_V { fifo_read 1 no_conditional }
	dst_axi_V_data_V { fifo_write 1 no_conditional }
	dst_axi_V_keep_V { fifo_write 1 no_conditional }
	dst_axi_V_strb_V { fifo_write 1 no_conditional }
	dst_axi_V_user_V { fifo_write 1 no_conditional }
	dst_axi_V_last_V { fifo_write 1 no_conditional }
	dst_axi_V_id_V { fifo_write 1 no_conditional }
	dst_axi_V_dest_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
