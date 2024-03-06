///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: testbench.v
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

module testbench;
wire [7:0]Seg;
wire [3:0]Dn;
reg CP,MRN;


parameter CP_priod=5;
always #(CP_priod/2)CP=~CP;


initial
begin
CP=0;
end

initial
begin
MRN=0;
repeat(30)
#20 MRN=1;
end

ex161ex4511 u (

    .CP(CP),
    .MRN(MRN),
    .Dn(Dn),
    .Seg(Seg)

);

endmodule

