set moduleName ImgProcess_Top
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {ImgProcess_Top}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_V_data_V int 32 regular {fifo 0 volatile }  }
	{ input_V_keep_V int 4 regular {fifo 0 volatile }  }
	{ input_V_strb_V int 4 regular {fifo 0 volatile }  }
	{ input_V_user_V int 1 regular {fifo 0 volatile }  }
	{ input_V_last_V int 1 regular {fifo 0 volatile }  }
	{ input_V_id_V int 1 regular {fifo 0 volatile }  }
	{ input_V_dest_V int 1 regular {fifo 0 volatile }  }
	{ output_V_data_V int 32 regular {fifo 1 volatile }  }
	{ output_V_keep_V int 4 regular {fifo 1 volatile }  }
	{ output_V_strb_V int 4 regular {fifo 1 volatile }  }
	{ output_V_user_V int 1 regular {fifo 1 volatile }  }
	{ output_V_last_V int 1 regular {fifo 1 volatile }  }
	{ output_V_id_V int 1 regular {fifo 1 volatile }  }
	{ output_V_dest_V int 1 regular {fifo 1 volatile }  }
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ y_lower int 32 regular  }
	{ y_upper int 32 regular  }
	{ cb_lower int 32 regular  }
	{ cb_upper int 32 regular  }
	{ cr_lower int 32 regular  }
	{ cr_upper int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_V_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "input.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "input_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "input.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_data_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_strb_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "output.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "output_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "output.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rows","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cols","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "y_lower", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y_lower","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "y_upper", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "y_upper","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cb_lower", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cb_lower","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cb_upper", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cb_upper","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cr_lower", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cr_lower","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cr_upper", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cr_upper","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 56
set portList { 
	{ input_V_data_V_dout sc_in sc_lv 32 signal 0 } 
	{ input_V_data_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_V_data_V_read sc_out sc_logic 1 signal 0 } 
	{ input_V_keep_V_dout sc_in sc_lv 4 signal 1 } 
	{ input_V_keep_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ input_V_keep_V_read sc_out sc_logic 1 signal 1 } 
	{ input_V_strb_V_dout sc_in sc_lv 4 signal 2 } 
	{ input_V_strb_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ input_V_strb_V_read sc_out sc_logic 1 signal 2 } 
	{ input_V_user_V_dout sc_in sc_lv 1 signal 3 } 
	{ input_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ input_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ input_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ input_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ input_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ input_V_id_V_dout sc_in sc_lv 1 signal 5 } 
	{ input_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ input_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ input_V_dest_V_dout sc_in sc_lv 1 signal 6 } 
	{ input_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ input_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ output_V_data_V_din sc_out sc_lv 32 signal 7 } 
	{ output_V_data_V_full_n sc_in sc_logic 1 signal 7 } 
	{ output_V_data_V_write sc_out sc_logic 1 signal 7 } 
	{ output_V_keep_V_din sc_out sc_lv 4 signal 8 } 
	{ output_V_keep_V_full_n sc_in sc_logic 1 signal 8 } 
	{ output_V_keep_V_write sc_out sc_logic 1 signal 8 } 
	{ output_V_strb_V_din sc_out sc_lv 4 signal 9 } 
	{ output_V_strb_V_full_n sc_in sc_logic 1 signal 9 } 
	{ output_V_strb_V_write sc_out sc_logic 1 signal 9 } 
	{ output_V_user_V_din sc_out sc_lv 1 signal 10 } 
	{ output_V_user_V_full_n sc_in sc_logic 1 signal 10 } 
	{ output_V_user_V_write sc_out sc_logic 1 signal 10 } 
	{ output_V_last_V_din sc_out sc_lv 1 signal 11 } 
	{ output_V_last_V_full_n sc_in sc_logic 1 signal 11 } 
	{ output_V_last_V_write sc_out sc_logic 1 signal 11 } 
	{ output_V_id_V_din sc_out sc_lv 1 signal 12 } 
	{ output_V_id_V_full_n sc_in sc_logic 1 signal 12 } 
	{ output_V_id_V_write sc_out sc_logic 1 signal 12 } 
	{ output_V_dest_V_din sc_out sc_lv 1 signal 13 } 
	{ output_V_dest_V_full_n sc_in sc_logic 1 signal 13 } 
	{ output_V_dest_V_write sc_out sc_logic 1 signal 13 } 
	{ rows sc_in sc_lv 32 signal 14 } 
	{ cols sc_in sc_lv 32 signal 15 } 
	{ y_lower sc_in sc_lv 32 signal 16 } 
	{ y_upper sc_in sc_lv 32 signal 17 } 
	{ cb_lower sc_in sc_lv 32 signal 18 } 
	{ cb_upper sc_in sc_lv 32 signal 19 } 
	{ cr_lower sc_in sc_lv 32 signal 20 } 
	{ cr_upper sc_in sc_lv 32 signal 21 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "input_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_V_data_V", "role": "dout" }} , 
 	{ "name": "input_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_data_V", "role": "empty_n" }} , 
 	{ "name": "input_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_data_V", "role": "read" }} , 
 	{ "name": "input_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V_keep_V", "role": "dout" }} , 
 	{ "name": "input_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "input_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_keep_V", "role": "read" }} , 
 	{ "name": "input_V_strb_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "input_V_strb_V", "role": "dout" }} , 
 	{ "name": "input_V_strb_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_strb_V", "role": "empty_n" }} , 
 	{ "name": "input_V_strb_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_strb_V", "role": "read" }} , 
 	{ "name": "input_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_user_V", "role": "dout" }} , 
 	{ "name": "input_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_user_V", "role": "empty_n" }} , 
 	{ "name": "input_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_user_V", "role": "read" }} , 
 	{ "name": "input_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_last_V", "role": "dout" }} , 
 	{ "name": "input_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_last_V", "role": "empty_n" }} , 
 	{ "name": "input_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_last_V", "role": "read" }} , 
 	{ "name": "input_V_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_id_V", "role": "dout" }} , 
 	{ "name": "input_V_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_id_V", "role": "empty_n" }} , 
 	{ "name": "input_V_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_id_V", "role": "read" }} , 
 	{ "name": "input_V_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_dest_V", "role": "dout" }} , 
 	{ "name": "input_V_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_dest_V", "role": "empty_n" }} , 
 	{ "name": "input_V_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_V_dest_V", "role": "read" }} , 
 	{ "name": "output_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_V_data_V", "role": "din" }} , 
 	{ "name": "output_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_data_V", "role": "full_n" }} , 
 	{ "name": "output_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_data_V", "role": "write" }} , 
 	{ "name": "output_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_V_keep_V", "role": "din" }} , 
 	{ "name": "output_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_keep_V", "role": "full_n" }} , 
 	{ "name": "output_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_keep_V", "role": "write" }} , 
 	{ "name": "output_V_strb_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "output_V_strb_V", "role": "din" }} , 
 	{ "name": "output_V_strb_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_strb_V", "role": "full_n" }} , 
 	{ "name": "output_V_strb_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_strb_V", "role": "write" }} , 
 	{ "name": "output_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_user_V", "role": "din" }} , 
 	{ "name": "output_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_user_V", "role": "full_n" }} , 
 	{ "name": "output_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_user_V", "role": "write" }} , 
 	{ "name": "output_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_last_V", "role": "din" }} , 
 	{ "name": "output_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_last_V", "role": "full_n" }} , 
 	{ "name": "output_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_last_V", "role": "write" }} , 
 	{ "name": "output_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_id_V", "role": "din" }} , 
 	{ "name": "output_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_id_V", "role": "full_n" }} , 
 	{ "name": "output_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_id_V", "role": "write" }} , 
 	{ "name": "output_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_dest_V", "role": "din" }} , 
 	{ "name": "output_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_dest_V", "role": "full_n" }} , 
 	{ "name": "output_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_V_dest_V", "role": "write" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "y_lower", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_lower", "role": "default" }} , 
 	{ "name": "y_upper", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_upper", "role": "default" }} , 
 	{ "name": "cb_lower", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb_lower", "role": "default" }} , 
 	{ "name": "cb_upper", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb_upper", "role": "default" }} , 
 	{ "name": "cr_lower", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cr_lower", "role": "default" }} , 
 	{ "name": "cr_upper", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cr_upper", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "ImgProcess_Top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "Block_Mat_exit45_pro_U0", "ReadyCount" : "Block_Mat_exit45_pro_U0_ap_ready_count"},
			{"ID" : "2", "Name" : "AXIvideo2Mat_U0", "ReadyCount" : "AXIvideo2Mat_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "Mat2AXIvideo_U0"}],
		"Port" : [
			{"Name" : "input_V_data_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "input_V_keep_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "input_V_strb_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "input_V_user_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "input_V_last_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "input_V_id_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "input_V_dest_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "AXIvideo2Mat_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "output_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "output_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "output_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "output_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "output_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "output_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "output_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "Mat2AXIvideo_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_lower", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_upper", "Type" : "None", "Direction" : "I"},
			{"Name" : "cb_lower", "Type" : "None", "Direction" : "I"},
			{"Name" : "cb_upper", "Type" : "None", "Direction" : "I"},
			{"Name" : "cr_lower", "Type" : "None", "Direction" : "I"},
			{"Name" : "cr_upper", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_Mat_exit45_pro_U0", "Parent" : "0",
		"CDFG" : "Block_Mat_exit45_pro",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_lower", "Type" : "None", "Direction" : "I"},
			{"Name" : "y_upper", "Type" : "None", "Direction" : "I"},
			{"Name" : "cb_lower", "Type" : "None", "Direction" : "I"},
			{"Name" : "cb_upper", "Type" : "None", "Direction" : "I"},
			{"Name" : "cr_lower", "Type" : "None", "Direction" : "I"},
			{"Name" : "cr_upper", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_1_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "img_1_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_1_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "img_1_cols_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_lower_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "y_lower_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_upper_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "y_upper_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cb_lower_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "cb_lower_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cb_upper_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "cb_upper_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cr_lower_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "cr_lower_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cr_upper_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "cr_upper_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXIvideo2Mat_U0", "Parent" : "0",
		"CDFG" : "AXIvideo2Mat",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "2080083",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
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
			{"Name" : "img_rows_V_read", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "21"},
			{"Name" : "img_cols_V_read", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "22"},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hls_skin_dection_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9"],
		"CDFG" : "hls_skin_dection",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_hls_skig8j_U",
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "23",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_lower", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "y_lower_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_upper", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "y_upper_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cb_lower", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "cb_lower_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cb_upper", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "cb_upper_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cr_lower", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "cr_lower_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cr_upper", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "cr_upper_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_skin_dection_U0.ImgProcess_Top_mabkb_U31", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_skin_dection_U0.ImgProcess_Top_macud_U32", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_skin_dection_U0.ImgProcess_Top_madEe_U33", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_skin_dection_U0.ImgProcess_Top_madEe_U34", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_skin_dection_U0.ImgProcess_Top_maeOg_U35", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hls_skin_dection_U0.ImgProcess_Top_mafYi_U36", "Parent" : "3"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mat2AXIvideo_U0", "Parent" : "0",
		"CDFG" : "Mat2AXIvideo",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "2076841",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_Mat2AXIhbi_U",
		"Port" : [
			{"Name" : "img_rows_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "img_rows_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "img_cols_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "26",
				"BlockSignal" : [
					{"Name" : "img_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "27",
				"BlockSignal" : [
					{"Name" : "img_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "28",
				"BlockSignal" : [
					{"Name" : "img_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_strb_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "AXI_video_strm_V_dest_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rows_c_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cols_c_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1_rows_V_c_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1_cols_V_c_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_lower_c_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.y_upper_c_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cb_lower_c_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cb_upper_c_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cr_lower_c_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cr_upper_c_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_rows_V_channel_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_cols_V_channel_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_0_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_0_data_stream_2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1_data_stream_0_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1_data_stream_1_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_1_data_stream_2_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_hls_skig8j_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Mat2AXIhbi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ImgProcess_Top {
		input_V_data_V {Type I LastRead 7 FirstWrite -1}
		input_V_keep_V {Type I LastRead 7 FirstWrite -1}
		input_V_strb_V {Type I LastRead 7 FirstWrite -1}
		input_V_user_V {Type I LastRead 7 FirstWrite -1}
		input_V_last_V {Type I LastRead 7 FirstWrite -1}
		input_V_id_V {Type I LastRead 7 FirstWrite -1}
		input_V_dest_V {Type I LastRead 7 FirstWrite -1}
		output_V_data_V {Type O LastRead -1 FirstWrite 3}
		output_V_keep_V {Type O LastRead -1 FirstWrite 3}
		output_V_strb_V {Type O LastRead -1 FirstWrite 3}
		output_V_user_V {Type O LastRead -1 FirstWrite 3}
		output_V_last_V {Type O LastRead -1 FirstWrite 3}
		output_V_id_V {Type O LastRead -1 FirstWrite 3}
		output_V_dest_V {Type O LastRead -1 FirstWrite 3}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		y_lower {Type I LastRead 0 FirstWrite -1}
		y_upper {Type I LastRead 0 FirstWrite -1}
		cb_lower {Type I LastRead 0 FirstWrite -1}
		cb_upper {Type I LastRead 0 FirstWrite -1}
		cr_lower {Type I LastRead 0 FirstWrite -1}
		cr_upper {Type I LastRead 0 FirstWrite -1}}
	Block_Mat_exit45_pro {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		y_lower {Type I LastRead 0 FirstWrite -1}
		y_upper {Type I LastRead 0 FirstWrite -1}
		cb_lower {Type I LastRead 0 FirstWrite -1}
		cb_upper {Type I LastRead 0 FirstWrite -1}
		cr_lower {Type I LastRead 0 FirstWrite -1}
		cr_upper {Type I LastRead 0 FirstWrite -1}
		rows_out {Type O LastRead -1 FirstWrite 0}
		cols_out {Type O LastRead -1 FirstWrite 0}
		img_1_rows_V_out {Type O LastRead -1 FirstWrite 0}
		img_1_cols_V_out {Type O LastRead -1 FirstWrite 0}
		y_lower_out {Type O LastRead -1 FirstWrite 0}
		y_upper_out {Type O LastRead -1 FirstWrite 0}
		cb_lower_out {Type O LastRead -1 FirstWrite 0}
		cb_upper_out {Type O LastRead -1 FirstWrite 0}
		cr_lower_out {Type O LastRead -1 FirstWrite 0}
		cr_upper_out {Type O LastRead -1 FirstWrite 0}}
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
		img_data_stream_0_V {Type O LastRead -1 FirstWrite 6}
		img_data_stream_1_V {Type O LastRead -1 FirstWrite 6}
		img_data_stream_2_V {Type O LastRead -1 FirstWrite 6}}
	hls_skin_dection {
		src_data_stream_0_V {Type I LastRead 2 FirstWrite -1}
		src_data_stream_1_V {Type I LastRead 2 FirstWrite -1}
		src_data_stream_2_V {Type I LastRead 2 FirstWrite -1}
		dst_data_stream_0_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_1_V {Type O LastRead -1 FirstWrite 5}
		dst_data_stream_2_V {Type O LastRead -1 FirstWrite 5}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		y_lower {Type I LastRead 0 FirstWrite -1}
		y_upper {Type I LastRead 0 FirstWrite -1}
		cb_lower {Type I LastRead 0 FirstWrite -1}
		cb_upper {Type I LastRead 0 FirstWrite -1}
		cr_lower {Type I LastRead 0 FirstWrite -1}
		cr_upper {Type I LastRead 0 FirstWrite -1}}
	Mat2AXIvideo {
		img_rows_V {Type I LastRead 0 FirstWrite -1}
		img_cols_V {Type I LastRead 0 FirstWrite -1}
		img_data_stream_0_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_1_V {Type I LastRead 3 FirstWrite -1}
		img_data_stream_2_V {Type I LastRead 3 FirstWrite -1}
		AXI_video_strm_V_data_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_keep_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_strb_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_user_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_last_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_id_V {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_V_data_V { ap_fifo {  { input_V_data_V_dout fifo_data 0 32 }  { input_V_data_V_empty_n fifo_status 0 1 }  { input_V_data_V_read fifo_update 1 1 } } }
	input_V_keep_V { ap_fifo {  { input_V_keep_V_dout fifo_data 0 4 }  { input_V_keep_V_empty_n fifo_status 0 1 }  { input_V_keep_V_read fifo_update 1 1 } } }
	input_V_strb_V { ap_fifo {  { input_V_strb_V_dout fifo_data 0 4 }  { input_V_strb_V_empty_n fifo_status 0 1 }  { input_V_strb_V_read fifo_update 1 1 } } }
	input_V_user_V { ap_fifo {  { input_V_user_V_dout fifo_data 0 1 }  { input_V_user_V_empty_n fifo_status 0 1 }  { input_V_user_V_read fifo_update 1 1 } } }
	input_V_last_V { ap_fifo {  { input_V_last_V_dout fifo_data 0 1 }  { input_V_last_V_empty_n fifo_status 0 1 }  { input_V_last_V_read fifo_update 1 1 } } }
	input_V_id_V { ap_fifo {  { input_V_id_V_dout fifo_data 0 1 }  { input_V_id_V_empty_n fifo_status 0 1 }  { input_V_id_V_read fifo_update 1 1 } } }
	input_V_dest_V { ap_fifo {  { input_V_dest_V_dout fifo_data 0 1 }  { input_V_dest_V_empty_n fifo_status 0 1 }  { input_V_dest_V_read fifo_update 1 1 } } }
	output_V_data_V { ap_fifo {  { output_V_data_V_din fifo_data 1 32 }  { output_V_data_V_full_n fifo_status 0 1 }  { output_V_data_V_write fifo_update 1 1 } } }
	output_V_keep_V { ap_fifo {  { output_V_keep_V_din fifo_data 1 4 }  { output_V_keep_V_full_n fifo_status 0 1 }  { output_V_keep_V_write fifo_update 1 1 } } }
	output_V_strb_V { ap_fifo {  { output_V_strb_V_din fifo_data 1 4 }  { output_V_strb_V_full_n fifo_status 0 1 }  { output_V_strb_V_write fifo_update 1 1 } } }
	output_V_user_V { ap_fifo {  { output_V_user_V_din fifo_data 1 1 }  { output_V_user_V_full_n fifo_status 0 1 }  { output_V_user_V_write fifo_update 1 1 } } }
	output_V_last_V { ap_fifo {  { output_V_last_V_din fifo_data 1 1 }  { output_V_last_V_full_n fifo_status 0 1 }  { output_V_last_V_write fifo_update 1 1 } } }
	output_V_id_V { ap_fifo {  { output_V_id_V_din fifo_data 1 1 }  { output_V_id_V_full_n fifo_status 0 1 }  { output_V_id_V_write fifo_update 1 1 } } }
	output_V_dest_V { ap_fifo {  { output_V_dest_V_din fifo_data 1 1 }  { output_V_dest_V_full_n fifo_status 0 1 }  { output_V_dest_V_write fifo_update 1 1 } } }
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	y_lower { ap_none {  { y_lower in_data 0 32 } } }
	y_upper { ap_none {  { y_upper in_data 0 32 } } }
	cb_lower { ap_none {  { cb_lower in_data 0 32 } } }
	cb_upper { ap_none {  { cb_upper in_data 0 32 } } }
	cr_lower { ap_none {  { cr_lower in_data 0 32 } } }
	cr_upper { ap_none {  { cr_upper in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	input_V_data_V { fifo_read 1 no_conditional }
	input_V_keep_V { fifo_read 1 no_conditional }
	input_V_strb_V { fifo_read 1 no_conditional }
	input_V_user_V { fifo_read 1 no_conditional }
	input_V_last_V { fifo_read 1 no_conditional }
	input_V_id_V { fifo_read 1 no_conditional }
	input_V_dest_V { fifo_read 1 no_conditional }
	output_V_data_V { fifo_write 1 no_conditional }
	output_V_keep_V { fifo_write 1 no_conditional }
	output_V_strb_V { fifo_write 1 no_conditional }
	output_V_user_V { fifo_write 1 no_conditional }
	output_V_last_V { fifo_write 1 no_conditional }
	output_V_id_V { fifo_write 1 no_conditional }
	output_V_dest_V { fifo_write 1 no_conditional }
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
