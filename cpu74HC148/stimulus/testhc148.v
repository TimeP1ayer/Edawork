//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Tue Jan 02 22:43:17 2024
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc148.v
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

module testhc148;
reg EI_N;
reg [7:0]in_N;
wire[2:0]out_N;
wire GS_N;
wire EO_N;
hc148 u(EI_N, in_N, out_N, GS_N,EO_N);

initial
begin
EI_N=1;
#5;
EI_N=0;
in_N=8'b11111111;  //11110
#5;
in_N=8'b01111111;   //11101
#5;
in_N=8'b11011111;   //10101
#5;
in_N=8'b11111101;   //00101
#5;
in_N=8'b10110011;   //01001
#5
in_N=8'b11000000;   //00001

end
initial
$monitor("EI_N=%b, in_N=%b, out_N=%b, GS_N=%b,EO_N=%b",EI_N, in_N, out_N, GS_N,EO_N);
endmodule

