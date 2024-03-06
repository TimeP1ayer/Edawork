//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Jan 03 14:48:15 2024
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc161.v
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

module test161;
reg CP,CEP,CET,MRN,PEN;
reg [3:0]Dn;
wire [3:0]Qn;
wire TC;

initial 
begin
CP=0;
end

parameter DELY=20;
always #(DELY/2)CP=~CP;
initial
begin
CEP=0;
repeat(20)
#20 CEP=1;
end

initial
begin
CET=0;
repeat(20)
#20 CET=1;
end

initial
begin
MRN=0;
repeat(20)
#20 MRN=1;
end

initial
begin
PEN=0;
repeat(20)
#20 PEN=1;
end

initial
begin
Dn=0;
repeat(20)
#20 Dn=$random;
end

hc161 u
(
.CP (CP),
.CEP (CEP),
.CET (CET),
.MRN (MRN),
.PEN (PEN),
.Dn (Dn),
.Qn (Qn),
.TC (TC) 
);
endmodule