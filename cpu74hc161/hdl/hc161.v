///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: hc161.v
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

module hc161(CP,CEP,CET,MRN,PEN,Dn,Qn,TC);
input CP;
input CEP,CET;
output [3:0]Qn;
input MRN;
input PEN;
input [3:0]Dn;
output reg TC;
reg [3:0]qaux;

always @(posedge CP or negedge MRN )
begin
 if(!MRN)
 qaux<=4'b0000;
 else if(!PEN)
      qaux<=Dn;
else if(CEP&CET)
qaux<=qaux+1;
 else qaux<=qaux;
 end

 always @(posedge CP)
 begin
 if(qaux==4'b1110)
 TC=1'b1;
 else TC=1'b0;
 end

 assign Qn=qaux;
 endmodule

