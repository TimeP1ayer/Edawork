//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Mon Dec 04 00:18:44 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc32.v
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

module testhc32;
reg pa,pb;
wire pout;
hc32 gate(pa,pb,pout);
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

