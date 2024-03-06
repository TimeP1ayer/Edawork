//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Dec 27 15:27:59 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: test_fsmtri.v
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

module test_fsmtri;

reg ina,rst,clk;
wire out_tri;
parameter clock_period=20;
always #(clock_period/2)clk=~clk;

initial
begin
clk=0;
rst=1;
#25 rst=1;
#75 rst=1;
#200 $finish;
end

initial
begin
ina=0;
#5;
repeat(10)
#30 ina=$random;
end



fsm_tri u(
.clk(clk),
.rst(rst),
.ina(ina),
.dataout(out_tri)
);


endmodule

