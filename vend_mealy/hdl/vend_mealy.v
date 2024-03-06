///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: vend_mealy.v
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

module vend_mealy( Reset,Clk,D_in,D_out_mealy );
input Clk,Reset;
input [1:0]D_in;
output D_out_mealy;
reg D_out_mealy;
reg [3:0]current_state,next_state;

parameter S0=4'b0001,S1=4'b0010,S2=4'b0100,S3=4'b1000;

always @(posedge Clk or posedge Reset)
begin
    if(Reset)current_state<=S0;
    else current_state<=next_state;
end

always @(current_state or D_in)
begin
case(current_state)
    S0:begin
        if(D_in[1]&D_in[0])
            next_state<=S3;
        else if(D_in[1])
            next_state<=S2;
        else if(D_in[0])
            next_state<=S1;
        else
            next_state<=S0;
    end

    S1:begin
        if(D_in[1]&D_in[0])
            next_state<=S0;
        else if(D_in[1])
            next_state<=S3;
        else if(D_in[0])
            next_state<=S2;
        else
            next_state<=S1;
    end

    S2:begin
        if(D_in[1])
            next_state<=S0;
        else if(D_in[0])
            next_state<=S3;
        else
            next_state<=S2;
    end

    S3:begin
        if(D_in[1]|D_in[0])
            next_state<=S0;
        else
            next_state<=S3;
    end
    
    default:next_state<=S0;

endcase
end

always @(current_state or D_in)
    D_out_mealy=(   ((current_state==S2)&&(D_in[1]==1))   ||   (  (current_state==S3)&&(D_in[0]|D_in[1]==1)   )  ||  (  (current_state==S1)&&(D_in[0]&&D_in[1]==1)  )     );

//<statements>

endmodule

