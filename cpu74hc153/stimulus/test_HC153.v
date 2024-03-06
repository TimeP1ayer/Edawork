//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Jan 03 01:31:01 2024
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: test_HC153.v
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

module test_HC153();
wire out;
reg [3:0]in;
reg [1:0]sel;
reg ei;
HC153 u(out,in,sel,ei);
initial
begin 
    ei=0; sel =0; in = 4'b1010;
    repeat(4)
        #10 sel =sel +1;
    ei = 1; sel =0; in =4'b1010;
    repeat(4)
       #11.2 sel= sel+1;
end

endmodule