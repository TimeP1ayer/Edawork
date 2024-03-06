//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Dec 27 16:12:32 2023
// Version: v11.9 11.9.0.4
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// ex4511_148
module ex4511_148(
    // Inputs
    in_15_8,
    in_7_0,
    // Outputs
    EO_N,
    GS_N,
    Seg
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [7:0] in_15_8;
input  [7:0] in_7_0;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       EO_N;
output       GS_N;
output [7:0] Seg;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
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
wire   [7:0] in_7_0;
wire   [7:0] in_15_8;
wire         NAND2_0_Y;
wire         NAND2_1_Y;
wire         NAND2_2_Y;
wire   [7:0] Seg_net_0;
wire         EO_N_net_1;
wire         GS_N_net_1;
wire   [7:0] Seg_net_1;
wire   [0:0] Seg_slice_0;
wire   [1:1] Seg_slice_1;
wire   [2:2] Seg_slice_2;
wire   [3:3] Seg_slice_3;
wire   [4:4] Seg_slice_4;
wire   [5:5] Seg_slice_5;
wire   [6:6] Seg_slice_6;
wire   [7:7] Seg_slice_7;
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
wire   [3:3] A_IN_POST_INV0_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign A_IN_POST_INV0_0[3] = ~ hc148_0_EO_N;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign EO_N_net_1 = EO_N_net_0;
assign EO_N       = EO_N_net_1;
assign GS_N_net_1 = GS_N_net_0;
assign GS_N       = GS_N_net_1;
assign Seg_net_1  = Seg_net_0;
assign Seg[7:0]   = Seg_net_1;
//--------------------------------------------------------------------
// Slices assignments
//--------------------------------------------------------------------
assign hc148_0_out_N0to0[0] = out_N_net_0[0:0];
assign hc148_0_out_N1to1[1] = out_N_net_0[1:1];
assign hc148_0_out_N2to2[2] = out_N_net_0[2:2];
assign hc148_1_out_N0to0[0] = out_N_net_1[0:0];
assign hc148_1_out_N1to1[1] = out_N_net_1[1:1];
assign hc148_1_out_N2to2[2] = out_N_net_1[2:2];
assign Seg_slice_0[0]       = Seg_net_0[0:0];
assign Seg_slice_1[1]       = Seg_net_0[1:1];
assign Seg_slice_2[2]       = Seg_net_0[2:2];
assign Seg_slice_3[3]       = Seg_net_0[3:3];
assign Seg_slice_4[4]       = Seg_net_0[4:4];
assign Seg_slice_5[5]       = Seg_net_0[5:5];
assign Seg_slice_6[6]       = Seg_net_0[6:6];
assign Seg_slice_7[7]       = Seg_net_0[7:7];
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign A_net_0 = { A_IN_POST_INV0_0[3] , NAND2_2_Y , NAND2_1_Y , NAND2_0_Y };
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------hc148
hc148 hc148_0(
        // Inputs
        .EI_N  ( GND_net ),
        .in_N  ( in_15_8 ),
        // Outputs
        .out_N ( out_N_net_0 ),
        .GS_N  ( hc148_0_GS_N ),
        .EO_N  ( hc148_0_EO_N ) 
        );

//--------hc148
hc148 hc148_1(
        // Inputs
        .EI_N  ( hc148_0_EO_N ),
        .in_N  ( in_7_0 ),
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

//--------NAND2
NAND2 NAND2_0(
        // Inputs
        .A ( hc148_0_out_N0to0 ),
        .B ( hc148_1_out_N0to0 ),
        // Outputs
        .Y ( NAND2_0_Y ) 
        );

//--------NAND2
NAND2 NAND2_1(
        // Inputs
        .A ( hc148_0_out_N1to1 ),
        .B ( hc148_1_out_N1to1 ),
        // Outputs
        .Y ( NAND2_1_Y ) 
        );

//--------NAND2
NAND2 NAND2_2(
        // Inputs
        .A ( hc148_0_out_N2to2 ),
        .B ( hc148_1_out_N2to2 ),
        // Outputs
        .Y ( NAND2_2_Y ) 
        );

//--------NAND2
NAND2 NAND2_3(
        // Inputs
        .A ( hc148_0_GS_N ),
        .B ( hc148_1_GS_N ),
        // Outputs
        .Y ( GS_N_net_0 ) 
        );


endmodule
