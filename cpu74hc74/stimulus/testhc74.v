//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Jan 03 14:13:43 2024
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc74.v
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

module testhc74;

reg D1,D2,RD1N,RD2N,CP1,CP2,SD1N,SD2N;
wire Q1,Q2,Q1N,Q2N;
initial begin
CP1=0;
end
parameter clock_period=20;
always #(clock_period/2) CP1=~CP1;

initial begin
CP2=0;
end
always #(clock_period/2) CP2=~CP2;

initial
begin
D1=0;
repeat(20)
#20 D1=$random;
end

initial
begin
D2=0;
repeat(20)
#20 D2=$random;
end

initial
begin
RD1N=0;
repeat(20)
#20 RD1N=$random;
end

initial
begin
RD2N=0;
repeat(20)
#20 RD2N=$random;
end

initial
begin
SD1N=0;
repeat(20)
#20 SD1N=$random;
end

initial
begin
SD2N=0;
repeat(20)
#20 SD2N=$random;
end

HC74 u
(
.CP1 (CP1),
.CP2 (CP2),
.D1 (D1),
.D2 (D2),
.RD1N (RD1N),
.RD2N (RD2N),
.SD1N (SD1N),
.SD2N (SD2N),
.Q1 (Q1),
.Q1N (Q1N),
.Q2 (Q2),
.Q2N (Q2N)
);
endmodule
