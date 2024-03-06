//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Dec 27 14:16:46 2023
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// ex4511_ex148
module ex4511_ex148(
    // Inputs
    IN_15_8,
    IN_7_1,
    // Outputs
    EO_N,
    GS_N,
    Seg
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [7:0] IN_15_8;
input  [7:0] IN_7_1;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       EO_N;
output       GS_N;
output [7:0] Seg;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         A0;
wire         AND2_1_Y;
wire         AND2_2_Y;
wire         EO_N_net_0;
wire         GS_N_net_0;
wire         hc148_0_EO_N;
wire         hc148_0_GS_N;
wire   [0:0] hc148_0_out_N0to0;
wire   [1:1] hc148_0_out_N1to1;
wire   [2:2] hc148_0_out_N2to2;
wire         hc148_1_GS_N;
wire   [0:0] hc148_1_out_N0to0;
wire   [1:1] hc148_1_out_N1to1;
wire   [2:2] hc148_1_out_N2to2;
wire   [7:0] IN_7_1;
wire   [7:0] IN_15_8;
wire   [7:0] Seg_net_0;
wire         GS_N_net_1;
wire   [7:0] Seg_net_1;
wire         EO_N_net_1;
wire   [2:0] out_N_net_0;
wire   [2:0] out_N_net_1;
wire   [3:0] A_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         GND_net;
wire         VCC_net;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire         EO_N_OUT_PRE_INV0_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign hc148_0_EO_N = ~ EO_N_OUT_PRE_INV0_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GS_N_net_1 = GS_N_net_0;
assign GS_N       = GS_N_net_1;
assign Seg_net_1  = Seg_net_0;
assign Seg[7:0]   = Seg_net_1;
assign EO_N_net_1 = EO_N_net_0;
assign EO_N       = EO_N_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign hc148_0_out_N0to0[0] = out_N_net_0[0:0];
assign hc148_0_out_N1to1[1] = out_N_net_0[1:1];
assign hc148_0_out_N2to2[2] = out_N_net_0[2:2];
assign hc148_1_out_N0to0[0] = out_N_net_1[0:0];
assign hc148_1_out_N1to1[1] = out_N_net_1[1:1];
assign hc148_1_out_N2to2[2] = out_N_net_1[2:2];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign A_net_0 = { hc148_0_EO_N , AND2_2_Y , AND2_1_Y , A0 };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------AND2
AND2 AND2_0(
        // Inputs
        .A ( hc148_0_out_N0to0 ),
        .B ( hc148_1_out_N0to0 ),
        // Outputs
        .Y ( A0 ) 
        );

//--------AND2
AND2 AND2_1(
        // Inputs
        .A ( hc148_0_out_N1to1 ),
        .B ( hc148_1_out_N1to1 ),
        // Outputs
        .Y ( AND2_1_Y ) 
        );

//--------AND2
AND2 AND2_2(
        // Inputs
        .A ( hc148_0_out_N2to2 ),
        .B ( hc148_1_out_N2to2 ),
        // Outputs
        .Y ( AND2_2_Y ) 
        );

//--------AND2
AND2 AND2_3(
        // Inputs
        .A ( hc148_0_GS_N ),
        .B ( hc148_1_GS_N ),
        // Outputs
        .Y ( GS_N_net_0 ) 
        );

//--------hc148
hc148 hc148_0(
        // Inputs
        .EI_N  ( GND_net ),
        .in_N  ( IN_15_8 ),
        // Outputs
        .out_N ( out_N_net_0 ),
        .GS_N  ( hc148_0_GS_N ),
        .EO_N  ( EO_N_OUT_PRE_INV0_0 ) 
        );

//--------hc148
hc148 hc148_1(
        // Inputs
        .EI_N  ( hc148_0_EO_N ),
        .in_N  ( IN_7_1 ),
        // Outputs
        .out_N ( out_N_net_1 ),
        .GS_N  ( hc148_1_GS_N ),
        .EO_N  ( EO_N_net_0 ) 
        );

//--------hc4511
hc4511 hc4511_0(
        // Inputs
        .LE   ( GND_net ),
        .BI_N ( VCC_net ),
        .LT_N ( VCC_net ),
        .A    ( A_net_0 ),
        // Outputs
        .Seg  ( Seg_net_0 ) 
        );


endmodule
