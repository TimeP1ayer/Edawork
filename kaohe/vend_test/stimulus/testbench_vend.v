///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testbench_vend.v
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

module testbench_vend;

reg clk,reset;
reg [1:0]d_in;
wire d_out_mealy;
wire d_out_moore;
parameter DELY=32;

vend_test tb(
.Clk(clk),
.Reset(reset),
.D_in(d_in),
.D_out_mealy(d_out_mealy),
.D_out_moore(d_out_moore)
);

always #(DELY/2)clk=~clk;

initial
begin
clk=0;
reset=0;
#5 reset=1;
#20 reset=0;
end

initial
begin
   d_in=0;
#25 d_in=2'b01;
#25 d_in=2'b00;
#25 d_in=2'b11;
#25 d_in=2'b00;
#25 d_in=2'b10;
#25 d_in=2'b00;
#25 d_in=2'b10;
#25 d_in=2'b00;
#25 d_in=2'b01;
#25 d_in=2'b00;
#25 d_in=2'b01;
#25 d_in=2'b00;
#25 d_in=2'b10;
end
initial
#600 $finish;

endmodule

