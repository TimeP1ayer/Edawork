//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Mon Dec 04 00:21:12 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc86.v
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

module testhc86;
reg pa,pb;
wire pout;
hc86 gate(pa,pb,pout);
initial
begin
 pa=0;pb=0;
#5 pa=1;
#5 pb=1;
#5 pa=0;
#5 pb=0;
#5;
end
initial
$monitor("a=%b,b=%b,out=%b",pa,pb,pout);
endmodule

