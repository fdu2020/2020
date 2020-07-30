set moduleName Block_Mat_exit45_pro
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block_Mat.exit45_pro}
set C_modelType { int 64 }
set C_modelArgList {
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ y_lower int 32 regular  }
	{ y_upper int 32 regular  }
	{ cb_lower int 32 regular  }
	{ cb_upper int 32 regular  }
	{ cr_lower int 32 regular  }
	{ cr_upper int 32 regular  }
	{ rows_out int 32 regular {fifo 1}  }
	{ cols_out int 32 regular {fifo 1}  }
	{ img_1_rows_V_out int 32 regular {fifo 1}  }
	{ img_1_cols_V_out int 32 regular {fifo 1}  }
	{ y_lower_out int 32 regular {fifo 1}  }
	{ y_upper_out int 32 regular {fifo 1}  }
	{ cb_lower_out int 32 regular {fifo 1}  }
	{ cb_upper_out int 32 regular {fifo 1}  }
	{ cr_lower_out int 32 regular {fifo 1}  }
	{ cr_upper_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_lower", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_upper", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cb_lower", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cb_upper", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cr_lower", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cr_upper", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_1_rows_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "img_1_cols_V_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y_lower_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "y_upper_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cb_lower_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cb_upper_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cr_lower_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cr_upper_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 64} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ y_lower sc_in sc_lv 32 signal 2 } 
	{ y_upper sc_in sc_lv 32 signal 3 } 
	{ cb_lower sc_in sc_lv 32 signal 4 } 
	{ cb_upper sc_in sc_lv 32 signal 5 } 
	{ cr_lower sc_in sc_lv 32 signal 6 } 
	{ cr_upper sc_in sc_lv 32 signal 7 } 
	{ rows_out_din sc_out sc_lv 32 signal 8 } 
	{ rows_out_full_n sc_in sc_logic 1 signal 8 } 
	{ rows_out_write sc_out sc_logic 1 signal 8 } 
	{ cols_out_din sc_out sc_lv 32 signal 9 } 
	{ cols_out_full_n sc_in sc_logic 1 signal 9 } 
	{ cols_out_write sc_out sc_logic 1 signal 9 } 
	{ img_1_rows_V_out_din sc_out sc_lv 32 signal 10 } 
	{ img_1_rows_V_out_full_n sc_in sc_logic 1 signal 10 } 
	{ img_1_rows_V_out_write sc_out sc_logic 1 signal 10 } 
	{ img_1_cols_V_out_din sc_out sc_lv 32 signal 11 } 
	{ img_1_cols_V_out_full_n sc_in sc_logic 1 signal 11 } 
	{ img_1_cols_V_out_write sc_out sc_logic 1 signal 11 } 
	{ y_lower_out_din sc_out sc_lv 32 signal 12 } 
	{ y_lower_out_full_n sc_in sc_logic 1 signal 12 } 
	{ y_lower_out_write sc_out sc_logic 1 signal 12 } 
	{ y_upper_out_din sc_out sc_lv 32 signal 13 } 
	{ y_upper_out_full_n sc_in sc_logic 1 signal 13 } 
	{ y_upper_out_write sc_out sc_logic 1 signal 13 } 
	{ cb_lower_out_din sc_out sc_lv 32 signal 14 } 
	{ cb_lower_out_full_n sc_in sc_logic 1 signal 14 } 
	{ cb_lower_out_write sc_out sc_logic 1 signal 14 } 
	{ cb_upper_out_din sc_out sc_lv 32 signal 15 } 
	{ cb_upper_out_full_n sc_in sc_logic 1 signal 15 } 
	{ cb_upper_out_write sc_out sc_logic 1 signal 15 } 
	{ cr_lower_out_din sc_out sc_lv 32 signal 16 } 
	{ cr_lower_out_full_n sc_in sc_logic 1 signal 16 } 
	{ cr_lower_out_write sc_out sc_logic 1 signal 16 } 
	{ cr_upper_out_din sc_out sc_lv 32 signal 17 } 
	{ cr_upper_out_full_n sc_in sc_logic 1 signal 17 } 
	{ cr_upper_out_write sc_out sc_logic 1 signal 17 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "y_lower", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_lower", "role": "default" }} , 
 	{ "name": "y_upper", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_upper", "role": "default" }} , 
 	{ "name": "cb_lower", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb_lower", "role": "default" }} , 
 	{ "name": "cb_upper", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb_upper", "role": "default" }} , 
 	{ "name": "cr_lower", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cr_lower", "role": "default" }} , 
 	{ "name": "cr_upper", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cr_upper", "role": "default" }} , 
 	{ "name": "rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows_out", "role": "din" }} , 
 	{ "name": "rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_out", "role": "full_n" }} , 
 	{ "name": "rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows_out", "role": "write" }} , 
 	{ "name": "cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols_out", "role": "din" }} , 
 	{ "name": "cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_out", "role": "full_n" }} , 
 	{ "name": "cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols_out", "role": "write" }} , 
 	{ "name": "img_1_rows_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_1_rows_V_out", "role": "din" }} , 
 	{ "name": "img_1_rows_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_rows_V_out", "role": "full_n" }} , 
 	{ "name": "img_1_rows_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_rows_V_out", "role": "write" }} , 
 	{ "name": "img_1_cols_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_1_cols_V_out", "role": "din" }} , 
 	{ "name": "img_1_cols_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_cols_V_out", "role": "full_n" }} , 
 	{ "name": "img_1_cols_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_1_cols_V_out", "role": "write" }} , 
 	{ "name": "y_lower_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_lower_out", "role": "din" }} , 
 	{ "name": "y_lower_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_lower_out", "role": "full_n" }} , 
 	{ "name": "y_lower_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_lower_out", "role": "write" }} , 
 	{ "name": "y_upper_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_upper_out", "role": "din" }} , 
 	{ "name": "y_upper_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_upper_out", "role": "full_n" }} , 
 	{ "name": "y_upper_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_upper_out", "role": "write" }} , 
 	{ "name": "cb_lower_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb_lower_out", "role": "din" }} , 
 	{ "name": "cb_lower_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cb_lower_out", "role": "full_n" }} , 
 	{ "name": "cb_lower_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cb_lower_out", "role": "write" }} , 
 	{ "name": "cb_upper_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb_upper_out", "role": "din" }} , 
 	{ "name": "cb_upper_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cb_upper_out", "role": "full_n" }} , 
 	{ "name": "cb_upper_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cb_upper_out", "role": "write" }} , 
 	{ "name": "cr_lower_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cr_lower_out", "role": "din" }} , 
 	{ "name": "cr_lower_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cr_lower_out", "role": "full_n" }} , 
 	{ "name": "cr_lower_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cr_lower_out", "role": "write" }} , 
 	{ "name": "cr_upper_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cr_upper_out", "role": "din" }} , 
 	{ "name": "cr_upper_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cr_upper_out", "role": "full_n" }} , 
 	{ "name": "cr_upper_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cr_upper_out", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_1_rows_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_1_rows_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_1_cols_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "img_1_cols_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_lower_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_lower_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_upper_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_upper_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cb_lower_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cb_lower_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cb_upper_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cb_upper_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cr_lower_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cr_lower_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cr_upper_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cr_upper_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		cr_upper_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	y_lower { ap_none {  { y_lower in_data 0 32 } } }
	y_upper { ap_none {  { y_upper in_data 0 32 } } }
	cb_lower { ap_none {  { cb_lower in_data 0 32 } } }
	cb_upper { ap_none {  { cb_upper in_data 0 32 } } }
	cr_lower { ap_none {  { cr_lower in_data 0 32 } } }
	cr_upper { ap_none {  { cr_upper in_data 0 32 } } }
	rows_out { ap_fifo {  { rows_out_din fifo_data 1 32 }  { rows_out_full_n fifo_status 0 1 }  { rows_out_write fifo_update 1 1 } } }
	cols_out { ap_fifo {  { cols_out_din fifo_data 1 32 }  { cols_out_full_n fifo_status 0 1 }  { cols_out_write fifo_update 1 1 } } }
	img_1_rows_V_out { ap_fifo {  { img_1_rows_V_out_din fifo_data 1 32 }  { img_1_rows_V_out_full_n fifo_status 0 1 }  { img_1_rows_V_out_write fifo_update 1 1 } } }
	img_1_cols_V_out { ap_fifo {  { img_1_cols_V_out_din fifo_data 1 32 }  { img_1_cols_V_out_full_n fifo_status 0 1 }  { img_1_cols_V_out_write fifo_update 1 1 } } }
	y_lower_out { ap_fifo {  { y_lower_out_din fifo_data 1 32 }  { y_lower_out_full_n fifo_status 0 1 }  { y_lower_out_write fifo_update 1 1 } } }
	y_upper_out { ap_fifo {  { y_upper_out_din fifo_data 1 32 }  { y_upper_out_full_n fifo_status 0 1 }  { y_upper_out_write fifo_update 1 1 } } }
	cb_lower_out { ap_fifo {  { cb_lower_out_din fifo_data 1 32 }  { cb_lower_out_full_n fifo_status 0 1 }  { cb_lower_out_write fifo_update 1 1 } } }
	cb_upper_out { ap_fifo {  { cb_upper_out_din fifo_data 1 32 }  { cb_upper_out_full_n fifo_status 0 1 }  { cb_upper_out_write fifo_update 1 1 } } }
	cr_lower_out { ap_fifo {  { cr_lower_out_din fifo_data 1 32 }  { cr_lower_out_full_n fifo_status 0 1 }  { cr_lower_out_write fifo_update 1 1 } } }
	cr_upper_out { ap_fifo {  { cr_upper_out_din fifo_data 1 32 }  { cr_upper_out_full_n fifo_status 0 1 }  { cr_upper_out_write fifo_update 1 1 } } }
}
