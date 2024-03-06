///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: hc00.v
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

module hc00( a,b,out );
input a,b;
output out;
assign out = ~(a&b);
endmodule

