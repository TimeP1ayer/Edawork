///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: hc02.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S005> <Package::484 FBGA>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

//`timescale <time_units> / <precision>

module hc02( a, b, out );
input a,b;
output out;

assign out = ~(a|b);

endmodule

