`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc148_0(
       out_N_i_a2_0,
       out_N_i_0_0_d0,
       in_7_0_c,
       out_N_i_0_0_0,
       out_N61,
       hc148_1_GS_N,
       hc148_0_GS_N
    );
output out_N_i_a2_0;
output out_N_i_0_0_d0;
input  [7:0] in_7_0_c;
output out_N_i_0_0_0;
output out_N61;
output hc148_1_GS_N;
input  hc148_0_GS_N;

    wire \out_N_i_a2_1[0] , N_57, \out_N_i_a2_0[0] , 
        un1_in_N_1_0_net_1, \out_N_i_0[0]_net_1 , 
        \out_N_i_a2_1_0[0]_net_1 , \out_N_i_a2_0[1] , un1_in_N_3_net_1, 
        un1_in_N_net_1, N_50, un1_in_N_1_net_1, GND, VCC;
    
    NOR3B un1_in_N (.A(un1_in_N_3_net_1), .B(un1_in_N_1_0_net_1), .C(
        N_50), .Y(un1_in_N_net_1));
    OA1A \out_N_i_a2_1_1[0]  (.A(in_7_0_c[4]), .B(N_57), .C(
        in_7_0_c[1]), .Y(\out_N_i_a2_1[0] ));
    OR3C \out_N_i_o2[2]  (.A(in_7_0_c[2]), .B(in_7_0_c[3]), .C(
        un1_in_N_1_net_1), .Y(N_50));
    AOI1 \out_N_i[0]  (.A(\out_N_i_a2_1[0] ), .B(\out_N_i_a2_0[0] ), 
        .C(\out_N_i_0[0]_net_1 ), .Y(out_N_i_0_0_0));
    OA1A \out_N_i_0[0]  (.A(in_7_0_c[0]), .B(\out_N_i_a2_1_0[0]_net_1 )
        , .C(hc148_0_GS_N), .Y(\out_N_i_0[0]_net_1 ));
    AO1C \out_N_i[1]  (.A(\out_N_i_a2_0[1] ), .B(un1_in_N_1_net_1), .C(
        hc148_0_GS_N), .Y(out_N_i_0_0_d0));
    VCC VCC_i (.Y(VCC));
    NOR2B \out_N_i_a2_0_0[0]  (.A(in_7_0_c[3]), .B(hc148_0_GS_N), .Y(
        \out_N_i_a2_0[0] ));
    NOR3B \out_N_i_a2_0_0[1]  (.A(in_7_0_c[2]), .B(in_7_0_c[3]), .C(
        un1_in_N_3_net_1), .Y(\out_N_i_a2_0[1] ));
    NOR2A \out_N_i_a3[0]  (.A(in_7_0_c[5]), .B(in_7_0_c[6]), .Y(N_57));
    GND GND_i (.Y(GND));
    NOR2B un1_in_N_1 (.A(in_7_0_c[1]), .B(in_7_0_c[0]), .Y(
        un1_in_N_1_net_1));
    OR2A GS_N (.A(hc148_0_GS_N), .B(un1_in_N_net_1), .Y(hc148_1_GS_N));
    NOR2B un1_in_N_1_0 (.A(in_7_0_c[7]), .B(in_7_0_c[6]), .Y(
        un1_in_N_1_0_net_1));
    NOR2A \out_N_i_a2_1_0[0]  (.A(in_7_0_c[1]), .B(in_7_0_c[2]), .Y(
        \out_N_i_a2_1_0[0]_net_1 ));
    OR2B \out_N_i_a2[2]  (.A(N_50), .B(hc148_0_GS_N), .Y(out_N_i_a2_0));
    NOR2B un1_in_N_3 (.A(in_7_0_c[5]), .B(in_7_0_c[4]), .Y(
        un1_in_N_3_net_1));
    OR2B out_N61_inst_1 (.A(un1_in_N_net_1), .B(hc148_0_GS_N), .Y(
        out_N61));
    
endmodule


module hc148_1(
       in_15_8_c,
       out_N_i,
       hc148_0_GS_N,
       N_42
    );
input  [7:0] in_15_8_c;
output [1:0] out_N_i;
output hc148_0_GS_N;
output N_42;

    wire \out_N_i_0[0]_net_1 , \out_N_i_0[2]_net_1 , 
        \out_N_i_a4_0[1]_net_1 , \out_N_i_0[1]_net_1 , 
        un1_in_N_1_net_1, un1_in_N_0_net_1, un1_in_N_3_net_1, N_44, 
        \out_N_i_1_tz[0]_net_1 , GND, VCC;
    
    NOR2B un1_in_N (.A(un1_in_N_1_net_1), .B(un1_in_N_0_net_1), .Y(
        hc148_0_GS_N));
    AO1C \out_N_i_0[0]  (.A(in_15_8_c[2]), .B(in_15_8_c[1]), .C(
        in_15_8_c[0]), .Y(\out_N_i_0[0]_net_1 ));
    NOR2B \out_N_i_a4_0[1]  (.A(in_15_8_c[3]), .B(in_15_8_c[2]), .Y(
        \out_N_i_a4_0[1]_net_1 ));
    AO1C \out_N_i_1_tz[0]  (.A(in_15_8_c[6]), .B(in_15_8_c[5]), .C(
        in_15_8_c[4]), .Y(\out_N_i_1_tz[0]_net_1 ));
    OA1C \out_N_i[1]  (.A(\out_N_i_a4_0[1]_net_1 ), .B(
        un1_in_N_3_net_1), .C(\out_N_i_0[1]_net_1 ), .Y(out_N_i[1]));
    NOR2B un1_in_N_1 (.A(N_42), .B(in_15_8_c[6]), .Y(un1_in_N_1_net_1));
    OR2B \out_N_i_0[1]  (.A(in_15_8_c[1]), .B(in_15_8_c[0]), .Y(
        \out_N_i_0[1]_net_1 ));
    VCC VCC_i (.Y(VCC));
    NOR2B un1_in_N_0 (.A(in_15_8_c[7]), .B(un1_in_N_3_net_1), .Y(
        un1_in_N_0_net_1));
    OR2B \out_N_i_0[2]  (.A(in_15_8_c[2]), .B(in_15_8_c[0]), .Y(
        \out_N_i_0[2]_net_1 ));
    NOR2B un1_in_N_3 (.A(in_15_8_c[4]), .B(in_15_8_c[5]), .Y(
        un1_in_N_3_net_1));
    OR2B \out_N_i_o4[2]  (.A(in_15_8_c[1]), .B(in_15_8_c[3]), .Y(N_44));
    NOR2 \out_N_i[2]  (.A(\out_N_i_0[2]_net_1 ), .B(N_44), .Y(N_42));
    GND GND_i (.Y(GND));
    OA1C \out_N_i[0]  (.A(\out_N_i_1_tz[0]_net_1 ), .B(N_44), .C(
        \out_N_i_0[0]_net_1 ), .Y(out_N_i[0]));
    
endmodule


module hc4511(
       SM_8S_1_i_6,
       SM_8S_1_i_3,
       SM_8S_1_i_0,
       SM_8S_1_i_1,
       SM_8S_1_i_4,
       Seg_c_3,
       Seg_c_0,
       hc148_0_GS_N,
       NAND2_0_Y,
       NAND2_2_Y,
       NAND2_1_Y
    );
output SM_8S_1_i_6;
output SM_8S_1_i_3;
output SM_8S_1_i_0;
output SM_8S_1_i_1;
output SM_8S_1_i_4;
output Seg_c_3;
output Seg_c_0;
input  hc148_0_GS_N;
input  NAND2_0_Y;
input  NAND2_2_Y;
input  NAND2_1_Y;

    wire \SM_8S_1_0_0[5]_net_1 , N_30, N_53, N_46, N_47, N_45, N_54, 
        N_41, N_35, N_29, N_40, N_36, N_37, N_31, N_38, N_43, N_47_1, 
        GND, VCC;
    
    NOR2A \SM_8S_1_i_a4_0[4]  (.A(NAND2_0_Y), .B(hc148_0_GS_N), .Y(
        N_43));
    OR2 \SM_8S_1_i_o2[1]  (.A(hc148_0_GS_N), .B(NAND2_1_Y), .Y(N_31));
    NOR2A \SM_8S_1_i_a4_0[6]  (.A(N_54), .B(hc148_0_GS_N), .Y(N_46));
    NOR2A \SM_8S_1_0_a2[2]  (.A(hc148_0_GS_N), .B(NAND2_2_Y), .Y(N_53));
    NOR3 \SM_8S_1_i[0]  (.A(N_36), .B(N_37), .C(N_35), .Y(SM_8S_1_i_0));
    NOR3B \SM_8S_1_i_a4_1[6]  (.A(NAND2_2_Y), .B(N_47_1), .C(NAND2_0_Y)
        , .Y(N_47));
    NOR3 \SM_8S_1_i[6]  (.A(N_46), .B(N_47), .C(N_45), .Y(SM_8S_1_i_6));
    NOR2A \SM_8S_1_i_a4_1_1[6]  (.A(hc148_0_GS_N), .B(NAND2_1_Y), .Y(
        N_47_1));
    OA1C \SM_8S_1_0_0[5]  (.A(NAND2_1_Y), .B(NAND2_2_Y), .C(NAND2_0_Y), 
        .Y(\SM_8S_1_0_0[5]_net_1 ));
    VCC VCC_i (.Y(VCC));
    NOR3B \SM_8S_1_i_a4[1]  (.A(NAND2_2_Y), .B(N_31), .C(NAND2_0_Y), 
        .Y(N_38));
    MX2A \SM_8S_1_0_m2[2]  (.A(NAND2_0_Y), .B(hc148_0_GS_N), .S(
        NAND2_2_Y), .Y(N_29));
    OA1B \SM_8S_1_i[4]  (.A(NAND2_1_Y), .B(N_29), .C(N_43), .Y(
        SM_8S_1_i_4));
    AOI1 \SM_8S_1_i[1]  (.A(N_30), .B(NAND2_0_Y), .C(N_38), .Y(
        SM_8S_1_i_1));
    NOR3C \SM_8S_1_i_a2[3]  (.A(NAND2_0_Y), .B(NAND2_2_Y), .C(
        NAND2_1_Y), .Y(N_54));
    GND GND_i (.Y(GND));
    XA1B \SM_8S_1_i_a4[0]  (.A(NAND2_0_Y), .B(NAND2_2_Y), .C(N_31), .Y(
        N_35));
    OA1C \SM_8S_1_0_a4[2]  (.A(NAND2_2_Y), .B(NAND2_0_Y), .C(NAND2_1_Y)
        , .Y(N_40));
    NOR3C \SM_8S_1_i_a4_1[0]  (.A(NAND2_1_Y), .B(NAND2_0_Y), .C(N_53), 
        .Y(N_37));
    AXOI7 \SM_8S_1_0_o4[5]  (.A(NAND2_2_Y), .B(NAND2_1_Y), .C(
        hc148_0_GS_N), .Y(N_30));
    OR3A \SM_8S_1_0[2]  (.A(N_29), .B(N_40), .C(N_53), .Y(Seg_c_0));
    NOR3B \SM_8S_1_i_a4[3]  (.A(NAND2_1_Y), .B(N_53), .C(NAND2_0_Y), 
        .Y(N_41));
    NOR3 \SM_8S_1_i[3]  (.A(N_54), .B(N_41), .C(N_35), .Y(SM_8S_1_i_3));
    NOR2 \SM_8S_1_i_a4[6]  (.A(N_31), .B(NAND2_2_Y), .Y(N_45));
    NOR3C \SM_8S_1_i_a4_0[0]  (.A(NAND2_0_Y), .B(NAND2_2_Y), .C(N_47_1)
        , .Y(N_36));
    OR3 \SM_8S_1_0[5]  (.A(N_30), .B(N_53), .C(\SM_8S_1_0_0[5]_net_1 ), 
        .Y(Seg_c_3));
    
endmodule


module ex4511_148(
       in_15_8,
       in_7_0,
       EO_N,
       GS_N,
       Seg
    );
input  [7:0] in_15_8;
input  [7:0] in_7_0;
output EO_N;
output GS_N;
output [7:0] Seg;

    wire hc148_0_GS_N, hc148_1_GS_N, VCC, NAND2_0_Y, NAND2_1_Y, 
        NAND2_2_Y, \SM_8S_1_i[0] , \SM_8S_1_i[1] , \SM_8S_1_i[3] , 
        \SM_8S_1_i[4] , \SM_8S_1_i[6] , \hc148_1.out_N61 , 
        \out_N_i_0[0] , \out_N_i_0[1] , \out_N_i_a2[2] , \out_N_i[0] , 
        \out_N_i[1] , \hc148_0.N_42 , \in_15_8_c[0] , \in_15_8_c[1] , 
        \in_15_8_c[2] , \in_15_8_c[3] , \in_15_8_c[4] , \in_15_8_c[5] , 
        \in_15_8_c[6] , \in_15_8_c[7] , \in_7_0_c[0] , \in_7_0_c[1] , 
        \in_7_0_c[2] , \in_7_0_c[3] , \in_7_0_c[4] , \in_7_0_c[5] , 
        \in_7_0_c[6] , \in_7_0_c[7] , GS_N_c, \Seg_c[2] , \Seg_c[5] , 
        GND;
    
    INBUF \in_7_0_pad[1]  (.PAD(in_7_0[1]), .Y(\in_7_0_c[1] ));
    OUTBUF \Seg_pad[0]  (.D(\SM_8S_1_i[0] ), .PAD(Seg[0]));
    INBUF \in_7_0_pad[5]  (.PAD(in_7_0[5]), .Y(\in_7_0_c[5] ));
    OUTBUF \Seg_pad[2]  (.D(\Seg_c[2] ), .PAD(Seg[2]));
    INBUF \in_7_0_pad[0]  (.PAD(in_7_0[0]), .Y(\in_7_0_c[0] ));
    VCC VCC_i (.Y(VCC));
    OUTBUF \Seg_pad[1]  (.D(\SM_8S_1_i[1] ), .PAD(Seg[1]));
    OUTBUF EO_N_pad (.D(\hc148_1.out_N61 ), .PAD(EO_N));
    OUTBUF GS_N_pad (.D(GS_N_c), .PAD(GS_N));
    OUTBUF \Seg_pad[5]  (.D(\Seg_c[5] ), .PAD(Seg[5]));
    NAND2 NAND2_0 (.A(\out_N_i[0] ), .B(\out_N_i_0[0] ), .Y(NAND2_0_Y));
    hc148_0 hc148_1 (.out_N_i_a2_0(\out_N_i_a2[2] ), .out_N_i_0_0_d0(
        \out_N_i_0[1] ), .in_7_0_c({\in_7_0_c[7] , \in_7_0_c[6] , 
        \in_7_0_c[5] , \in_7_0_c[4] , \in_7_0_c[3] , \in_7_0_c[2] , 
        \in_7_0_c[1] , \in_7_0_c[0] }), .out_N_i_0_0_0(\out_N_i_0[0] ), 
        .out_N61(\hc148_1.out_N61 ), .hc148_1_GS_N(hc148_1_GS_N), 
        .hc148_0_GS_N(hc148_0_GS_N));
    OUTBUF \Seg_pad[7]  (.D(GND), .PAD(Seg[7]));
    INBUF \in_15_8_pad[1]  (.PAD(in_15_8[1]), .Y(\in_15_8_c[1] ));
    INBUF \in_15_8_pad[7]  (.PAD(in_15_8[7]), .Y(\in_15_8_c[7] ));
    hc148_1 hc148_0 (.in_15_8_c({\in_15_8_c[7] , \in_15_8_c[6] , 
        \in_15_8_c[5] , \in_15_8_c[4] , \in_15_8_c[3] , \in_15_8_c[2] , 
        \in_15_8_c[1] , \in_15_8_c[0] }), .out_N_i({\out_N_i[1] , 
        \out_N_i[0] }), .hc148_0_GS_N(hc148_0_GS_N), .N_42(
        \hc148_0.N_42 ));
    NAND2 NAND2_2 (.A(\hc148_0.N_42 ), .B(\out_N_i_a2[2] ), .Y(
        NAND2_2_Y));
    GND GND_i (.Y(GND));
    NAND2 NAND2_1 (.A(\out_N_i[1] ), .B(\out_N_i_0[1] ), .Y(NAND2_1_Y));
    OUTBUF \Seg_pad[4]  (.D(\SM_8S_1_i[4] ), .PAD(Seg[4]));
    INBUF \in_7_0_pad[3]  (.PAD(in_7_0[3]), .Y(\in_7_0_c[3] ));
    INBUF \in_7_0_pad[4]  (.PAD(in_7_0[4]), .Y(\in_7_0_c[4] ));
    INBUF \in_7_0_pad[6]  (.PAD(in_7_0[6]), .Y(\in_7_0_c[6] ));
    INBUF \in_15_8_pad[5]  (.PAD(in_15_8[5]), .Y(\in_15_8_c[5] ));
    INBUF \in_15_8_pad[0]  (.PAD(in_15_8[0]), .Y(\in_15_8_c[0] ));
    INBUF \in_15_8_pad[6]  (.PAD(in_15_8[6]), .Y(\in_15_8_c[6] ));
    INBUF \in_15_8_pad[3]  (.PAD(in_15_8[3]), .Y(\in_15_8_c[3] ));
    hc4511 hc4511_0 (.SM_8S_1_i_6(\SM_8S_1_i[6] ), .SM_8S_1_i_3(
        \SM_8S_1_i[3] ), .SM_8S_1_i_0(\SM_8S_1_i[0] ), .SM_8S_1_i_1(
        \SM_8S_1_i[1] ), .SM_8S_1_i_4(\SM_8S_1_i[4] ), .Seg_c_3(
        \Seg_c[5] ), .Seg_c_0(\Seg_c[2] ), .hc148_0_GS_N(hc148_0_GS_N), 
        .NAND2_0_Y(NAND2_0_Y), .NAND2_2_Y(NAND2_2_Y), .NAND2_1_Y(
        NAND2_1_Y));
    INBUF \in_15_8_pad[4]  (.PAD(in_15_8[4]), .Y(\in_15_8_c[4] ));
    INBUF \in_15_8_pad[2]  (.PAD(in_15_8[2]), .Y(\in_15_8_c[2] ));
    OUTBUF \Seg_pad[3]  (.D(\SM_8S_1_i[3] ), .PAD(Seg[3]));
    INBUF \in_7_0_pad[7]  (.PAD(in_7_0[7]), .Y(\in_7_0_c[7] ));
    INBUF \in_7_0_pad[2]  (.PAD(in_7_0[2]), .Y(\in_7_0_c[2] ));
    OUTBUF \Seg_pad[6]  (.D(\SM_8S_1_i[6] ), .PAD(Seg[6]));
    NAND2 NAND2_3 (.A(hc148_0_GS_N), .B(hc148_1_GS_N), .Y(GS_N_c));
    
endmodule
