//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Jan 03 14:46:28 2024
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc194.v
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

module testhc194;
reg D0,D1,D2,D3,S0,S1,DSR,DSL,MRN,CP;
wire Q0,Q1,Q2,Q3;

initial begin
CP=0;
end

parameter clock_period=20;
always #(clock_period/2) CP=~CP;

initial
begin
D0=0;
repeat(20)
#20 D0=$random;
end

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
D3=0;
repeat(20)
#20 D3=$random;
end

initial
begin
S0=0;
repeat(20)
#20 S0=$random;
end

initial
begin
S1=0;
repeat(20)
#20 S1=$random;
end

initial
begin
MRN=0;
repeat(20)
#20 MRN=$random;
end

initial
begin
DSR=0;
repeat(20)
#20 DSR=$random;
end

initial
begin
DSL=0;
repeat(20)
#20 DSL=$random;
end

hc194 u194
(
.CP (CP),
.D0 (D0),
.D1 (D1),
.D2 (D2),
.D3 (D3),
.S1 (S1),
.S0 (S0),
.DSR (DSR),
.DSL (DSL),
.MRN (MRN),
.Q0 (Q0),
.Q1 (Q1),
.Q2 (Q2),
.Q3 (Q3)
);
endmodule

