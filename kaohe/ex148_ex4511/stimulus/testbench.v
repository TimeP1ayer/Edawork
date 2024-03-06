//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Dec 27 15:51:06 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testbench.v
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

`timescale 1ns/100ps

module testbench;

reg [7:0]in15;
reg [7:0]in7;

wire [7:0]Seg;
wire EO_N;
wire GS_N;

ex4511_148 u(
.in_15_8(in15),
.in_7_0(in7),
.Seg(Seg),
.EO_N(EO_N),
.GS_N(GS_N)
);

initial
begin
#25;

#10 
in15=8'b11100000;
in7=8'b11100000;

#10 
in15=8'b11110000;
in7=8'b11100000;

#10 
in15=8'b11110000;
in7=8'b11110000;

#10 
in15=8'b11111111;
in7=8'b11111111;

#10 
in15=8'b00000000;
in7=8'b000011111;

#10 
in15=8'b11111111;
in7=8'b00011111;

#10 
in15=8'b11100011;
in7=8'b00011111;

end

endmodule

