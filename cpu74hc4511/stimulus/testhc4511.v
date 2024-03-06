//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Sun Dec 17 13:14:07 2023
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testhc4511.v
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

module testhc4511;

reg LE,BI_N,LT_N;
reg [3:0]A;
wire [7:0]Seg;

hc4511 u(LE,BI_N,LT_N,A,Seg);

initial
begin

LT_N=0;
#10;
LT_N=1;
BI_N=0;

#10;
LE=0;
BI_N=1;
LT_N=1;
#10;
A=4'b0001;  //1
#5;
A=4'b0101;  //5
#5;
A=4'b0011;  //3
#5;
LE=1;
#5;
A=4'b0010;  //2
#5;
LE=0;
#5;
A=4'b1110;   //14
#5;
A=4'b1111;   //15
end
initial
$monitor("LE=%b,BI_N=%b,LT_N=%b,A=%b,Seg=%b",LE,BI_N,LT_N,A,Seg);

endmodule

