//////////////////////////////////////////////////////////////////////
// Created by Microsemi SmartDesign Wed Jan 03 01:38:10 2024
// Testbench Template
// This is a basic testbench that instantiates your design with basic 
// clock and reset pins connected.  If your design has special
// clock/reset or testbench driver requirements then you should 
// copy this file and modify it. 
//////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: test_HC85.v
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

module test_HC85;


reg [3:0]DateA;
reg [3:0]DateB;
reg [2:0]Cas;
wire [2:0]Q;

HC85 hc85(DateA,DateB,Cas,Q);

initial 
begin
    Cas=3'b100;
    DateA=4'b1011;
    DateB=4'b1011;
#5;
#10;
    DateA=4'b1010;
#10;
Cas=3'b001;
#10;
DateB=4'b1010; 

end
initial

$monitor("dataA=%b,dataB=%b,cas=%b,Q=%b",DateA,DateB,Cas,Q);

endmodule



