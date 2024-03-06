//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Dec 27 15:13:02 2023
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// vend_test
module vend_test(
    // Inputs
    Clk,
    D_in,
    Reset,
    // Outputs
    D_out_mealy,
    D_out_moore
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        Clk;
input  [1:0] D_in;
input        Reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       D_out_mealy;
output       D_out_moore;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         Clk;
wire   [1:0] D_in;
wire         D_out_mealy_net_0;
wire         D_out_moore_net_0;
wire         Reset;
wire         D_out_mealy_net_1;
wire         D_out_moore_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign D_out_mealy_net_1 = D_out_mealy_net_0;
assign D_out_mealy       = D_out_mealy_net_1;
assign D_out_moore_net_1 = D_out_moore_net_0;
assign D_out_moore       = D_out_moore_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------vend_mealy
vend_mealy vend_mealy_0(
        // Inputs
        .Reset       ( Reset ),
        .Clk         ( Clk ),
        .D_in        ( D_in ),
        // Outputs
        .D_out_mealy ( D_out_mealy_net_0 ) 
        );

//--------vend_moore
vend_moore vend_moore_0(
        // Inputs
        .Reset       ( Reset ),
        .Clk         ( Clk ),
        .D_in        ( D_in ),
        // Outputs
        .D_out_moore ( D_out_moore_net_0 ) 
        );


endmodule
