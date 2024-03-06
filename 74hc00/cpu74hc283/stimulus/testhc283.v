//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sun Dec 17 11:19:52 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc283.v
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

module testhc283;
reg cin; 
reg [3:0]inA;
reg [3:0]inB;
wire cout;
wire [3:0]out;

hc283 u(inA,inB, out, cin, cout);

initial
begin
    inA=4'b0111;
    inB=4'b0101;
    cin=1;
    #10;
    inA=4'b1101;
    inB=4'b1001;
    cin=0;    

end
initial
$monitor("cin=%b,A=%b,B=%b,cout=%b,out=%b",cin,inA,inB,cout,out);
endmodule

