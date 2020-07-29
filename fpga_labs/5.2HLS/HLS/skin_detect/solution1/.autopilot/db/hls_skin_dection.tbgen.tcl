set moduleName hls_skin_dection
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
set C_modelName {hls_skin_dection}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_data_stream_0_V int 8 regular {fifo 0 volatile }  }
	{ src_data_stream_1_V int 8 regular {fifo 0 volatile }  }
	{ src_data_stream_2_V int 8 regular {fifo 0 volatile }  }
	{ dst_data_stream_0_V int 8 regular {fifo 1 volatile }  }
	{ dst_data_stream_1_V int 8 regular {fifo 1 volatile }  }
	{ dst_data_stream_2_V int 8 regular {fifo 1 volatile }  }
	{ rows int 32 regular {fifo 0}  }
	{ cols int 32 regular {fifo 0}  }
	{ y_lower int 32 regular {fifo 0}  }
	{ y_upper int 32 regular {fifo 0}  }
	{ cb_lower int 32 regular {fifo 0}  }
	{ cb_upper int 32 regular {fifo 0}  }
	{ cr_lower int 32 regular {fifo 0}  }
	{ cr_upper int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst_data_stream_0_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_data_stream_1_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_data_stream_2_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_lower", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "y_upper", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cb_lower", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cb_upper", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cr_lower", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cr_upper", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 49
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_data_stream_0_V_dout sc_in sc_lv 8 signal 0 } 
	{ src_data_stream_0_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ src_data_stream_0_V_read sc_out sc_logic 1 signal 0 } 
	{ src_data_stream_1_V_dout sc_in sc_lv 8 signal 1 } 
	{ src_data_stream_1_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ src_data_stream_1_V_read sc_out sc_logic 1 signal 1 } 
	{ src_data_stream_2_V_dout sc_in sc_lv 8 signal 2 } 
	{ src_data_stream_2_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_data_stream_2_V_read sc_out sc_logic 1 signal 2 } 
	{ dst_data_stream_0_V_din sc_out sc_lv 8 signal 3 } 
	{ dst_data_stream_0_V_full_n sc_in sc_logic 1 signal 3 } 
	{ dst_data_stream_0_V_write sc_out sc_logic 1 signal 3 } 
	{ dst_data_stream_1_V_din sc_out sc_lv 8 signal 4 } 
	{ dst_data_stream_1_V_full_n sc_in sc_logic 1 signal 4 } 
	{ dst_data_stream_1_V_write sc_out sc_logic 1 signal 4 } 
	{ dst_data_stream_2_V_din sc_out sc_lv 8 signal 5 } 
	{ dst_data_stream_2_V_full_n sc_in sc_logic 1 signal 5 } 
	{ dst_data_stream_2_V_write sc_out sc_logic 1 signal 5 } 
	{ rows_dout sc_in sc_lv 32 signal 6 } 
	{ rows_empty_n sc_in sc_logic 1 signal 6 } 
	{ rows_read sc_out sc_logic 1 signal 6 } 
	{ cols_dout sc_in sc_lv 32 signal 7 } 
	{ cols_empty_n sc_in sc_logic 1 signal 7 } 
	{ cols_read sc_out sc_logic 1 signal 7 } 
	{ y_lower_dout sc_in sc_lv 32 signal 8 } 
	{ y_lower_empty_n sc_in sc_logic 1 signal 8 } 
	{ y_lower_read sc_out sc_logic 1 signal 8 } 
	{ y_upper_dout sc_in sc_lv 32 signal 9 } 
	{ y_upper_empty_n sc_in sc_logic 1 signal 9 } 
	{ y_upper_read sc_out sc_logic 1 signal 9 } 
	{ cb_lower_dout sc_in sc_lv 32 signal 10 } 
	{ cb_lower_empty_n sc_in sc_logic 1 signal 10 } 
	{ cb_lower_read sc_out sc_logic 1 signal 10 } 
	{ cb_upper_dout sc_in sc_lv 32 signal 11 } 
	{ cb_upper_empty_n sc_in sc_logic 1 signal 11 } 
	{ cb_upper_read sc_out sc_logic 1 signal 11 } 
	{ cr_lower_dout sc_in sc_lv 32 signal 12 } 
	{ cr_lower_empty_n sc_in sc_logic 1 signal 12 } 
	{ cr_lower_read sc_out sc_logic 1 signal 12 } 
	{ cr_upper_dout sc_in sc_lv 32 signal 13 } 
	{ cr_upper_empty_n sc_in sc_logic 1 signal 13 } 
	{ cr_upper_read sc_out sc_logic 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_data_stream_0_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_0_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_0_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_0_V", "role": "read" }} , 
 	{ "name": "src_data_stream_1_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_1_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_1_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_1_V", "role": "read" }} , 
 	{ "name": "src_data_stream_2_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "dout" }} , 
 	{ "name": "src_data_stream_2_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "empty_n" }} , 
 	{ "name": "src_data_stream_2_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_data_stream_2_V", "role": "read" }} , 
 	{ "name": "dst_data_stream_0_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_data_stream_0_V", "role": "din" }} , 
 	{ "name": "dst_data_stream_0_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_0_V", "role": "full_n" }} , 
 	{ "name": "dst_data_stream_0_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_0_V", "role": "write" }} , 
 	{ "name": "dst_data_stream_1_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_data_stream_1_V", "role": "din" }} , 
 	{ "name": "dst_data_stream_1_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_1_V", "role": "full_n" }} , 
 	{ "name": "dst_data_stream_1_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_1_V", "role": "write" }} , 
 	{ "name": "dst_data_stream_2_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_data_stream_2_V", "role": "din" }} , 
 	{ "name": "dst_data_stream_2_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_2_V", "role": "full_n" }} , 
 	{ "name": "dst_data_stream_2_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_data_stream_2_V", "role": "write" }} , 
 	{ "name": "rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "dout" }} , 
 	{ "name": "rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "empty_n" }} , 
 	{ "name": "rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rows", "role": "read" }} , 
 	{ "name": "cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "dout" }} , 
 	{ "name": "cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols", "role": "empty_n" }} , 
 	{ "name": "cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cols", "role": "read" }} , 
 	{ "name": "y_lower_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_lower", "role": "dout" }} , 
 	{ "name": "y_lower_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_lower", "role": "empty_n" }} , 
 	{ "name": "y_lower_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_lower", "role": "read" }} , 
 	{ "name": "y_upper_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "y_upper", "role": "dout" }} , 
 	{ "name": "y_upper_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_upper", "role": "empty_n" }} , 
 	{ "name": "y_upper_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_upper", "role": "read" }} , 
 	{ "name": "cb_lower_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb_lower", "role": "dout" }} , 
 	{ "name": "cb_lower_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cb_lower", "role": "empty_n" }} , 
 	{ "name": "cb_lower_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cb_lower", "role": "read" }} , 
 	{ "name": "cb_upper_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cb_upper", "role": "dout" }} , 
 	{ "name": "cb_upper_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cb_upper", "role": "empty_n" }} , 
 	{ "name": "cb_upper_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cb_upper", "role": "read" }} , 
 	{ "name": "cr_lower_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cr_lower", "role": "dout" }} , 
 	{ "name": "cr_lower_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cr_lower", "role": "empty_n" }} , 
 	{ "name": "cr_lower_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cr_lower", "role": "read" }} , 
 	{ "name": "cr_upper_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cr_upper", "role": "dout" }} , 
 	{ "name": "cr_upper_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cr_upper", "role": "empty_n" }} , 
 	{ "name": "cr_upper_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cr_upper", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
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
		"Port" : [
			{"Name" : "src_data_stream_0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_data_stream_2_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_data_stream_2_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_data_stream_2_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_lower", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_lower_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_upper", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_upper_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cb_lower", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cb_lower_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cb_upper", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cb_upper_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cr_lower", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cr_lower_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cr_upper", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "cr_upper_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_mabkb_U31", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_macud_U32", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_madEe_U33", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_madEe_U34", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_maeOg_U35", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ImgProcess_Top_mafYi_U36", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		cr_upper {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src_data_stream_0_V { ap_fifo {  { src_data_stream_0_V_dout fifo_data 0 8 }  { src_data_stream_0_V_empty_n fifo_status 0 1 }  { src_data_stream_0_V_read fifo_update 1 1 } } }
	src_data_stream_1_V { ap_fifo {  { src_data_stream_1_V_dout fifo_data 0 8 }  { src_data_stream_1_V_empty_n fifo_status 0 1 }  { src_data_stream_1_V_read fifo_update 1 1 } } }
	src_data_stream_2_V { ap_fifo {  { src_data_stream_2_V_dout fifo_data 0 8 }  { src_data_stream_2_V_empty_n fifo_status 0 1 }  { src_data_stream_2_V_read fifo_update 1 1 } } }
	dst_data_stream_0_V { ap_fifo {  { dst_data_stream_0_V_din fifo_data 1 8 }  { dst_data_stream_0_V_full_n fifo_status 0 1 }  { dst_data_stream_0_V_write fifo_update 1 1 } } }
	dst_data_stream_1_V { ap_fifo {  { dst_data_stream_1_V_din fifo_data 1 8 }  { dst_data_stream_1_V_full_n fifo_status 0 1 }  { dst_data_stream_1_V_write fifo_update 1 1 } } }
	dst_data_stream_2_V { ap_fifo {  { dst_data_stream_2_V_din fifo_data 1 8 }  { dst_data_stream_2_V_full_n fifo_status 0 1 }  { dst_data_stream_2_V_write fifo_update 1 1 } } }
	rows { ap_fifo {  { rows_dout fifo_data 0 32 }  { rows_empty_n fifo_status 0 1 }  { rows_read fifo_update 1 1 } } }
	cols { ap_fifo {  { cols_dout fifo_data 0 32 }  { cols_empty_n fifo_status 0 1 }  { cols_read fifo_update 1 1 } } }
	y_lower { ap_fifo {  { y_lower_dout fifo_data 0 32 }  { y_lower_empty_n fifo_status 0 1 }  { y_lower_read fifo_update 1 1 } } }
	y_upper { ap_fifo {  { y_upper_dout fifo_data 0 32 }  { y_upper_empty_n fifo_status 0 1 }  { y_upper_read fifo_update 1 1 } } }
	cb_lower { ap_fifo {  { cb_lower_dout fifo_data 0 32 }  { cb_lower_empty_n fifo_status 0 1 }  { cb_lower_read fifo_update 1 1 } } }
	cb_upper { ap_fifo {  { cb_upper_dout fifo_data 0 32 }  { cb_upper_empty_n fifo_status 0 1 }  { cb_upper_read fifo_update 1 1 } } }
	cr_lower { ap_fifo {  { cr_lower_dout fifo_data 0 32 }  { cr_lower_empty_n fifo_status 0 1 }  { cr_lower_read fifo_update 1 1 } } }
	cr_upper { ap_fifo {  { cr_upper_dout fifo_data 0 32 }  { cr_upper_empty_n fifo_status 0 1 }  { cr_upper_read fifo_update 1 1 } } }
}
