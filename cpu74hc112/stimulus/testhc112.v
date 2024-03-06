//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Jan 03 14:39:01 2024
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc112.v
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

module testhc112;
reg J1,K1,RD1N,CPN1,SD1N;
reg J2,K2,RD2N,CPN2,SD2N;
wire Q1,Q2,Q1N,Q2N;

initial begin
CPN1=0;
end

parameter clock_period=20;
always #(clock_period/2) CPN1=~CPN2;

initial begin
CPN2=0;
end

always #(clock_period/2) CPN2=~CPN2;
initial
begin
J1=0;
repeat(20)
#20 J1=$random;
end

initial
begin
K1=0;
repeat(20)
#20 K1=$random;
end

initial
begin
J2=0;
repeat(20)
#20 J2=$random;
end

initial
begin
K2=0;
repeat(20)
#20 K2=$random;
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

hc112 u
(
.CPN1 (CPN1),
.CPN2 (CPN2),
.J1 (J1),
.K1 (K1),
.J2 (J2),
.K2 (K2),
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

