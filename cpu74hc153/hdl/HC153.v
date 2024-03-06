///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: HC153.v
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

module HC153(DateOut, DateIn,Sel,Enable );
input [3:0]DateIn;
input [1:0]Sel;
input  Enable;
output reg  DateOut;

always @(Enable or Sel or DateIn)
if(Enable) DateOut = 0;
else    DateOut=DateIn[Sel];

endmodule