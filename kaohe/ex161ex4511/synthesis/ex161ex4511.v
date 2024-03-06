`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc4511(
       SM_8S_1_i_6,
       SM_8S_1_i_3,
       SM_8S_1_i_0,
       SM_8S_1_i_1,
       SM_8S_1_i_4,
       Qn,
       Seg_c_3,
       Seg_c_0,
       qaux_c2
    );
output SM_8S_1_i_6;
output SM_8S_1_i_3;
output SM_8S_1_i_0;
output SM_8S_1_i_1;
output SM_8S_1_i_4;
input  [3:0] Qn;
output Seg_c_3;
output Seg_c_0;
input  qaux_c2;

    wire \SM_8S_1_0_0[5]_net_1 , N_30, N_53, N_45, N_47, N_46, N_35, 
        N_41, N_29, N_40, N_36, N_37, N_47_1, N_31, N_38, N_43, GND, 
        VCC;
    
    NOR2A \SM_8S_1_i_a4_0[4]  (.A(Qn[0]), .B(Qn[3]), .Y(N_43));
    OR2 \SM_8S_1_i_o2[1]  (.A(Qn[3]), .B(Qn[1]), .Y(N_31));
    NOR2A \SM_8S_1_i_a4_0[6]  (.A(qaux_c2), .B(Qn[3]), .Y(N_46));
    NOR2A \SM_8S_1_0_a2[2]  (.A(Qn[3]), .B(Qn[2]), .Y(N_53));
    NOR3 \SM_8S_1_i[0]  (.A(N_36), .B(N_37), .C(N_35), .Y(SM_8S_1_i_0));
    NOR3B \SM_8S_1_i_a4_1[6]  (.A(Qn[2]), .B(N_47_1), .C(Qn[0]), .Y(
        N_47));
    NOR3 \SM_8S_1_i[6]  (.A(N_45), .B(N_47), .C(N_46), .Y(SM_8S_1_i_6));
    NOR2A \SM_8S_1_i_a4_1_1[6]  (.A(Qn[3]), .B(Qn[1]), .Y(N_47_1));
    OA1C \SM_8S_1_0_0[5]  (.A(Qn[1]), .B(Qn[2]), .C(Qn[0]), .Y(
        \SM_8S_1_0_0[5]_net_1 ));
    VCC VCC_i (.Y(VCC));
    NOR3B \SM_8S_1_i_a4[1]  (.A(Qn[2]), .B(N_31), .C(Qn[0]), .Y(N_38));
    MX2A \SM_8S_1_0_m2[2]  (.A(Qn[0]), .B(Qn[3]), .S(Qn[2]), .Y(N_29));
    OA1B \SM_8S_1_i[4]  (.A(Qn[1]), .B(N_29), .C(N_43), .Y(SM_8S_1_i_4)
        );
    AOI1 \SM_8S_1_i[1]  (.A(N_30), .B(Qn[0]), .C(N_38), .Y(SM_8S_1_i_1)
        );
    GND GND_i (.Y(GND));
    XA1B \SM_8S_1_i_a4[0]  (.A(Qn[0]), .B(Qn[2]), .C(N_31), .Y(N_35));
    OA1C \SM_8S_1_0_a4[2]  (.A(Qn[2]), .B(Qn[0]), .C(Qn[1]), .Y(N_40));
    NOR3C \SM_8S_1_i_a4_1[0]  (.A(Qn[1]), .B(Qn[0]), .C(N_53), .Y(N_37)
        );
    AXOI7 \SM_8S_1_0_o4[5]  (.A(Qn[2]), .B(Qn[1]), .C(Qn[3]), .Y(N_30));
    OR3A \SM_8S_1_0[2]  (.A(N_29), .B(N_40), .C(N_53), .Y(Seg_c_0));
    NOR3B \SM_8S_1_i_a4[3]  (.A(Qn[1]), .B(N_53), .C(Qn[0]), .Y(N_41));
    NOR3 \SM_8S_1_i[3]  (.A(N_35), .B(N_41), .C(qaux_c2), .Y(
        SM_8S_1_i_3));
    NOR2 \SM_8S_1_i_a4[6]  (.A(N_31), .B(Qn[2]), .Y(N_45));
    NOR3C \SM_8S_1_i_a4_0[0]  (.A(Qn[2]), .B(N_47_1), .C(Qn[0]), .Y(
        N_36));
    OR3 \SM_8S_1_0[5]  (.A(N_30), .B(N_53), .C(\SM_8S_1_0_0[5]_net_1 ), 
        .Y(Seg_c_3));
    
endmodule


module HC161(
       Qn,
       MRN_c,
       CP_c,
       qaux_c2
    );
output [3:0] Qn;
input  MRN_c;
input  CP_c;
output qaux_c2;

    wire \Qn_i[0] , qaux_n3, qaux_n1, qaux_n2, GND, VCC;
    
    XOR2 \qaux_RNO[3]  (.A(qaux_c2), .B(Qn[3]), .Y(qaux_n3));
    XOR2 \qaux_RNO[1]  (.A(Qn[0]), .B(Qn[1]), .Y(qaux_n1));
    AX1C \qaux_RNO[2]  (.A(Qn[1]), .B(Qn[0]), .C(Qn[2]), .Y(qaux_n2));
    DFN1C0 \qaux[0]  (.D(\Qn_i[0] ), .CLK(CP_c), .CLR(MRN_c), .Q(Qn[0])
        );
    NOR3C \qaux_RNIOU7D[1]  (.A(Qn[1]), .B(Qn[0]), .C(Qn[2]), .Y(
        qaux_c2));
    DFN1C0 \qaux[1]  (.D(qaux_n1), .CLK(CP_c), .CLR(MRN_c), .Q(Qn[1]));
    VCC VCC_i (.Y(VCC));
    DFN1C0 \qaux[3]  (.D(qaux_n3), .CLK(CP_c), .CLR(MRN_c), .Q(Qn[3]));
    GND GND_i (.Y(GND));
    INV \qaux_RNO[0]  (.A(Qn[0]), .Y(\Qn_i[0] ));
    DFN1C0 \qaux[2]  (.D(qaux_n2), .CLK(CP_c), .CLR(MRN_c), .Q(Qn[2]));
    
endmodule


module ex161ex4511(
       CP,
       Dn,
       MRN,
       Seg
    );
input  CP;
input  [3:0] Dn;
input  MRN;
output [7:0] Seg;

    wire VCC, \Qn[0] , \Qn[1] , \Qn[2] , \Qn[3] , \SM_8S_1_i[0] , 
        \SM_8S_1_i[1] , \SM_8S_1_i[3] , \SM_8S_1_i[4] , \SM_8S_1_i[6] , 
        CP_c, MRN_c, \Seg_c[2] , \Seg_c[5] , GND, \HC161_0.qaux_c2 ;
    
    INBUF MRN_pad (.PAD(MRN), .Y(MRN_c));
    OUTBUF \Seg_pad[2]  (.D(\Seg_c[2] ), .PAD(Seg[2]));
    OUTBUF \Seg_pad[3]  (.D(\SM_8S_1_i[3] ), .PAD(Seg[3]));
    OUTBUF \Seg_pad[0]  (.D(\SM_8S_1_i[0] ), .PAD(Seg[0]));
    OUTBUF \Seg_pad[6]  (.D(\SM_8S_1_i[6] ), .PAD(Seg[6]));
    VCC VCC_i (.Y(VCC));
    OUTBUF \Seg_pad[5]  (.D(\Seg_c[5] ), .PAD(Seg[5]));
    OUTBUF \Seg_pad[4]  (.D(\SM_8S_1_i[4] ), .PAD(Seg[4]));
    OUTBUF \Seg_pad[1]  (.D(\SM_8S_1_i[1] ), .PAD(Seg[1]));
    CLKBUF CP_pad (.PAD(CP), .Y(CP_c));
    GND GND_i (.Y(GND));
    OUTBUF \Seg_pad[7]  (.D(GND), .PAD(Seg[7]));
    hc4511 hc4511_0 (.SM_8S_1_i_6(\SM_8S_1_i[6] ), .SM_8S_1_i_3(
        \SM_8S_1_i[3] ), .SM_8S_1_i_0(\SM_8S_1_i[0] ), .SM_8S_1_i_1(
        \SM_8S_1_i[1] ), .SM_8S_1_i_4(\SM_8S_1_i[4] ), .Qn({\Qn[3] , 
        \Qn[2] , \Qn[1] , \Qn[0] }), .Seg_c_3(\Seg_c[5] ), .Seg_c_0(
        \Seg_c[2] ), .qaux_c2(\HC161_0.qaux_c2 ));
    HC161 HC161_0 (.Qn({\Qn[3] , \Qn[2] , \Qn[1] , \Qn[0] }), .MRN_c(
        MRN_c), .CP_c(CP_c), .qaux_c2(\HC161_0.qaux_c2 ));
    
endmodule
