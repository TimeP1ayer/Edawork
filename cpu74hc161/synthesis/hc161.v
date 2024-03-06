`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc161(
       CP,
       CEP,
       CET,
       MRN,
       PEN,
       Dn,
       Qn,
       TC
    );
input  CP;
input  CEP;
input  CET;
input  MRN;
input  PEN;
input  [3:0] Dn;
output [3:0] Qn;
output TC;

    wire TC4, GND, VCC, CP_c, CEP_c, CET_c, MRN_c, PEN_c, \Dn_c[0] , 
        \Dn_c[1] , \Dn_c[2] , \Dn_c[3] , \Qn_c[0] , \Qn_c[1] , 
        \Qn_c[2] , \Qn_c[3] , TC_c, qaux_n3_net_1, N_15, qaux_n2_net_1, 
        N_13, qaux_n1_net_1, N_11, N_20, qaux_c1_net_1, qauxe, TC4_0, 
        qaux_8_0_net_1;
    
    OUTBUF \Qn_pad[1]  (.D(\Qn_c[1] ), .PAD(Qn[1]));
    OUTBUF \Qn_pad[3]  (.D(\Qn_c[3] ), .PAD(Qn[3]));
    AX1C qaux_n3 (.A(qaux_c1_net_1), .B(qaux_8_0_net_1), .C(N_15), .Y(
        qaux_n3_net_1));
    VCC VCC_i (.Y(VCC));
    MX2 qaux_5 (.A(\Dn_c[1] ), .B(\Qn_c[1] ), .S(PEN_c), .Y(N_11));
    AO1B qauxlde (.A(CEP_c), .B(CET_c), .C(PEN_c), .Y(qauxe));
    NOR2B TC_RNO_0 (.A(\Qn_c[3] ), .B(\Qn_c[2] ), .Y(TC4_0));
    INBUF \Dn_pad[1]  (.PAD(Dn[1]), .Y(\Dn_c[1] ));
    INBUF PEN_pad (.PAD(PEN), .Y(PEN_c));
    NOR2B qaux_8_0 (.A(PEN_c), .B(\Qn_c[2] ), .Y(qaux_8_0_net_1));
    INBUF \Dn_pad[3]  (.PAD(Dn[3]), .Y(\Dn_c[3] ));
    NOR2B qaux_c1 (.A(\Qn_c[1] ), .B(\Qn_c[0] ), .Y(qaux_c1_net_1));
    GND GND_i (.Y(GND));
    DFN1E1C0 \qaux[0]  (.D(N_20), .CLK(CP_c), .CLR(MRN_c), .E(qauxe), 
        .Q(\Qn_c[0] ));
    OUTBUF \Qn_pad[0]  (.D(\Qn_c[0] ), .PAD(Qn[0]));
    MX2B qaux_n0 (.A(\Dn_c[0] ), .B(\Qn_c[0] ), .S(PEN_c), .Y(N_20));
    INBUF MRN_pad (.PAD(MRN), .Y(MRN_c));
    MX2 qaux_7 (.A(\Dn_c[2] ), .B(\Qn_c[2] ), .S(PEN_c), .Y(N_13));
    OUTBUF \Qn_pad[2]  (.D(\Qn_c[2] ), .PAD(Qn[2]));
    DFN1E1C0 \qaux[2]  (.D(qaux_n2_net_1), .CLK(CP_c), .CLR(MRN_c), .E(
        qauxe), .Q(\Qn_c[2] ));
    MX2 qaux_9 (.A(\Dn_c[3] ), .B(\Qn_c[3] ), .S(PEN_c), .Y(N_15));
    NOR3B TC_RNO (.A(\Qn_c[1] ), .B(TC4_0), .C(\Qn_c[0] ), .Y(TC4));
    AX1C qaux_n1 (.A(PEN_c), .B(\Qn_c[0] ), .C(N_11), .Y(qaux_n1_net_1)
        );
    DFN1E1C0 \qaux[1]  (.D(qaux_n1_net_1), .CLK(CP_c), .CLR(MRN_c), .E(
        qauxe), .Q(\Qn_c[1] ));
    AX1C qaux_n2 (.A(PEN_c), .B(qaux_c1_net_1), .C(N_13), .Y(
        qaux_n2_net_1));
    INBUF CEP_pad (.PAD(CEP), .Y(CEP_c));
    CLKBUF CP_pad (.PAD(CP), .Y(CP_c));
    DFN1 TC_inst_1 (.D(TC4), .CLK(CP_c), .Q(TC_c));
    INBUF \Dn_pad[0]  (.PAD(Dn[0]), .Y(\Dn_c[0] ));
    INBUF CET_pad (.PAD(CET), .Y(CET_c));
    DFN1E1C0 \qaux[3]  (.D(qaux_n3_net_1), .CLK(CP_c), .CLR(MRN_c), .E(
        qauxe), .Q(\Qn_c[3] ));
    INBUF \Dn_pad[2]  (.PAD(Dn[2]), .Y(\Dn_c[2] ));
    OUTBUF TC_pad (.D(TC_c), .PAD(TC));
    
endmodule
