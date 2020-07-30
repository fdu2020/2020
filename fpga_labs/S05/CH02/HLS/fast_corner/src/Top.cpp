#include "top.h"
void hls_fast_corner(AXI_STREAM& INPUT_STREAM, AXI_STREAM&
OUTPUT_STREAM, int rows, int cols, int threhold)
{
//Create AXI streaming interfaces for the core
#pragma HLS INTERFACE axis port=INPUT_STREAM
#pragma HLS INTERFACE axis port=OUTPUT_STREAM
#pragma HLS RESOURCE core=AXI_SLAVE variable=rows metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=cols metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=threhold metadata="-bus_bundle CONTROL_BUS"
#pragma HLS RESOURCE core=AXI_SLAVE variable=return metadata="-bus_bundle CONTROL_BUS"
#pragma HLS INTERFACE ap_stable port=rows
#pragma HLS INTERFACE ap_stable port=cols
#pragma HLS INTERFACE ap_stable port=threhold
RGB_IMAGE _src(rows,cols);
RGB_IMAGE _dst(rows,cols);
RGB_IMAGE src0(rows,cols);
RGB_IMAGE src1(rows,cols);
GRAY_IMAGE mask(rows,cols);
GRAY_IMAGE dmask(rows,cols);
GRAY_IMAGE gray(rows,cols);
#pragma HLS dataflow
#pragma HLS stream depth=20000 variable=src1.data_stream
hls::AXIvideo2Mat(INPUT_STREAM, _src);
hls::Scalar<3,unsigned char> color(255,0,0);
hls::Duplicate(_src,src0,src1);
hls::CvtColor<HLS_BGR2GRAY>(src0,gray);
hls::FASTX(gray,mask,threhold,true);
hls::Dilate(mask,dmask);
hls::PaintMask(src1,dmask,_dst,color);
hls::Mat2AXIvideo(_dst, OUTPUT_STREAM);
}
