///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: hc148.v
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

module hc148( EI_N, in_N, out_N, GS_N,EO_N );
input EI_N;
input [7:0]in_N;
output reg GS_N,EO_N;
output reg [2:0]out_N;
integer I;

always @(EI_N or in_N)

if(EI_N)
    begin
    out_N = 3'b111;
    GS_N = 1;
    EO_N = 1;
    end
else if(in_N==8'b11111111)
    begin
    out_N=3'b111;
    GS_N=1;
    EO_N=0;
    end
else
    begin
    GS_N=0;
    EO_N=1;
    for(I=7;I>=0;I=I-1)
        begin
        if(~in_N[I])
            begin
                out_N=~(7-I);
            end
        end
    end

endmodule

