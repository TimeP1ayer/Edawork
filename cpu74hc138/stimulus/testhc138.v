//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Jan 03 01:22:07 2024
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc138.v
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

module testhc138;
reg [2:0]enable;
reg [2:0]DateA;
wire [7:0]out;


hc138 cpu(enable, DateA, out);
initial
begin
enable=3'b000;
DateA=3'b010;
#10;
DateA=3'b101;
#5
enable=3'b111;
#5
DateA=3'b001;
#5
DateA=3'b010;
#5
DateA=3'b100;
end
initial
$monitor("DateA=%b,enable=%b,out=%b",DateA,enable,out);
endmodule
