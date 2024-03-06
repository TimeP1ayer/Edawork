///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: hc138.v
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

module hc138( enable, DateA, out );
input [2:0]enable;
input [2:0]DateA;

output reg [7:0]out;
integer I;

always @(enable or DateA )

begin
    if(enable!=3'b111)
    begin
    out=8'b00000000;
    end
    else
    begin
    I=DateA;
    out=8'b00000001<<I;
    end

end
endmodule
