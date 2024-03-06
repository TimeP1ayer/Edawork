///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: hc194.v
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

module hc194(D0,D1,D2,D3,S0,S1,DSR,DSL,MRN,CP,Q0,Q1,Q2,Q3);
input D0,D1,D2,D3;
input S0,S1;
input DSR,DSL;
input MRN;
input CP;
output Q0,Q1,Q2,Q3;
reg[3:0]Qaux;
wire[3:0]Data;
assign Data[0]=D0;
assign Data[1]=D1;
assign Data[2]=D2;
assign Data[3]=D3;
always @(posedge CP or negedge MRN)  
begin
if(!MRN)
Qaux=0;
else if(S1&S0)
Qaux=Data;
else if(S1&!S0)
Qaux={Qaux[2:0],DSL};
else if(!S1&S0)
Qaux={DSR,Qaux[3:1]};
else if(!S1&S0)
Qaux=Qaux;
end
assign Q0=Qaux[0]; 
assign Q1=Qaux[1];
assign Q2=Qaux[2];
assign Q3=Qaux[3];
endmodule