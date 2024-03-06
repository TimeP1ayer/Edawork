///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: HC74.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::ProASIC3> <Die::A3P060> <Package::100 VQFP>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module HC74(D1,D2,CP1,CP2,RD1N,RD2N,SD1N,SD2N,Q1,Q2,Q1N,Q2N);

input D1,RD1N,SD1N,CP1;
input D2,RD2N,SD2N,CP2;
output  Q1,Q1N;
output  Q2,Q2N;
reg Q1,Q2;
assign Q1N=~Q1;
assign Q2N=~Q2;

always @(posedge CP1 or negedge RD1N or negedge SD1N )
begin
if(!RD1N)Q1<=0;
else if(!SD1N)Q1<=1;
else Q1<=D1;
end

always @(posedge CP2 or negedge RD2N or negedge SD2N )
begin
if(!RD2N) Q2<=0;
else if(!SD2N) Q2<=1;
else Q2<=D2;
end

endmodule

