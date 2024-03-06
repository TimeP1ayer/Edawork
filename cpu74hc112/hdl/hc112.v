///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: hc112.v
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

//`timescale <time_units> / <precision>

module hc112(J1,J2,K1,K2,CPN1,CPN2,RD1N,RD2N,SD1N,SD2N,Q1,Q2,Q1N,Q2N);

input J1,K1,RD1N,SD1N,CPN1;
input J2,K2,RD2N,SD2N,CPN2;
output Q1,Q1N;
output Q2,Q2N;

reg Q1,Q2;
assign Q1N=~Q1;
assign Q2N=~Q2;

always @(posedge CPN1)
begin
if(!RD1N) Q1<=0;
else if(!SD1N) Q1<=1;
else
case({J1,K1})
2'b00:Q1<=Q1;
2'b01:Q1<=1'b0;
2'b10:Q1<=1'b1;
2'b11:Q1<=~Q1;
default:Q1<=1'bx;
endcase
end

always @(posedge CPN2) 
begin
if(!RD2N) Q2<=0;
else if(!SD2N) Q2<=1;
else
case({J2,K2})
2'b00:Q2<=Q2;
2'b01:Q2<=1'b0;
2'b10:Q2<=1'b1;
2'b11:Q2<=~Q2;
default:Q2<=1'bx;
endcase
end

endmodule

