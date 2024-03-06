///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: hc283.v
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

module hc283( inA,inB, out, cin, cout );
input cin; 
input [3:0]inA;
input [3:0]inB;
output reg cout;
output reg[3:0]out;

always @(inB , inA , cin)

begin
    {cout,out}=cin+inA+inB;
end
endmodule


