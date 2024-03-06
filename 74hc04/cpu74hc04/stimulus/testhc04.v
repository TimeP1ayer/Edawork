//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Mon Dec 04 00:10:45 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc04.v
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

`timescale 1ns/100ps

module testhc04;
reg pa;
wire pout;
hc04 gate(pa,pout);
initial
begin
pa=0;
#5 pa=1;
#5 pa=0;
#5;
end
initial
$monitor("a=%b,out=%b",pa,pout);
endmodule
