///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: HC85.v
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

module HC85( DateA,DateB,Cas,Q );
input [3:0]DateA,DateB;
input [2:0]Cas;
output reg [2:0]Q;
integer I;

always @(DateA or DateB or Cas)
begin
    if(DateA == DateB)
    begin 
            if(Cas[1])      Q=3'b010;
            else if (Cas == 3'b000)   Q = 3'b101;
            else if (Cas == 3'b101)   Q = 3'b000;
            else                     Q = Cas;
    end
    else
    begin
            for(I=0; I<4; I = I+1)
            if(DateA[I] > DateB[I])  Q = 3'b100;
            else if(DateA[I]<DateB[I]) Q = 3'b001;
    end
end


endmodule

