`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc194(
       D0,
       D1,
       D2,
       D3,
       S0,
       S1,
       DSR,
       DSL,
       MRN,
       CP,
       Q0,
       Q1,
       Q2,
       Q3
    );
input  D0;
input  D1;
input  D2;
input  D3;
input  S0;
input  S1;
input  DSR;
input  DSL;
input  MRN;
input  CP;
output Q0;
output Q1;
output Q2;
output Q3;

    wire S1_pad_RNIFV8F_net_1, \Qaux_5[0]_net_1 , \Qaux_5[1]_net_1 , 
        \Qaux_5[2]_net_1 , \Qaux_5[3]_net_1 , GND, VCC, N_8, N_9, N_23, 
        N_7, D0_c, D1_c, D2_c, D3_c, S0_c, S1_c, DSR_c, DSL_c, MRN_c, 
        CP_c, Q0_c, Q1_c, Q2_c, Q3_c;
    
    INBUF D3_pad (.PAD(D3), .Y(D3_c));
    DFN1E1C0 \Qaux[3]  (.D(\Qaux_5[3]_net_1 ), .CLK(CP_c), .CLR(MRN_c), 
        .E(S1_pad_RNIFV8F_net_1), .Q(Q3_c));
    INBUF DSR_pad (.PAD(DSR), .Y(DSR_c));
    MX2 \Qaux_5_0[1]  (.A(Q0_c), .B(D1_c), .S(S0_c), .Y(N_7));
    OUTBUF Q2_pad (.D(Q2_c), .PAD(Q2));
    OUTBUF Q1_pad (.D(Q1_c), .PAD(Q1));
    MX2 \Qaux_5[2]  (.A(Q3_c), .B(N_8), .S(S1_c), .Y(\Qaux_5[2]_net_1 )
        );
    CLKBUF CP_pad (.PAD(CP), .Y(CP_c));
    INBUF DSL_pad (.PAD(DSL), .Y(DSL_c));
    VCC VCC_i (.Y(VCC));
    MX2 \Qaux_5[1]  (.A(Q2_c), .B(N_7), .S(S1_c), .Y(\Qaux_5[1]_net_1 )
        );
    OR2 S1_pad_RNIFV8F (.A(S1_c), .B(S0_c), .Y(S1_pad_RNIFV8F_net_1));
    INBUF S1_pad (.PAD(S1), .Y(S1_c));
    GND GND_i (.Y(GND));
    OUTBUF Q0_pad (.D(Q0_c), .PAD(Q0));
    MX2 \Qaux_5_0[2]  (.A(Q1_c), .B(D2_c), .S(S0_c), .Y(N_8));
    INBUF D2_pad (.PAD(D2), .Y(D2_c));
    INBUF D1_pad (.PAD(D1), .Y(D1_c));
    OUTBUF Q3_pad (.D(Q3_c), .PAD(Q3));
    INBUF S0_pad (.PAD(S0), .Y(S0_c));
    MX2 \Qaux_5[3]  (.A(DSR_c), .B(N_9), .S(S1_c), .Y(
        \Qaux_5[3]_net_1 ));
    INBUF MRN_pad (.PAD(MRN), .Y(MRN_c));
    MX2 \Qaux_5_0[0]  (.A(DSL_c), .B(D0_c), .S(S0_c), .Y(N_23));
    DFN1E1C0 \Qaux[2]  (.D(\Qaux_5[2]_net_1 ), .CLK(CP_c), .CLR(MRN_c), 
        .E(S1_pad_RNIFV8F_net_1), .Q(Q2_c));
    MX2 \Qaux_5_0[3]  (.A(Q2_c), .B(D3_c), .S(S0_c), .Y(N_9));
    MX2 \Qaux_5[0]  (.A(Q1_c), .B(N_23), .S(S1_c), .Y(
        \Qaux_5[0]_net_1 ));
    DFN1E1C0 \Qaux[0]  (.D(\Qaux_5[0]_net_1 ), .CLK(CP_c), .CLR(MRN_c), 
        .E(S1_pad_RNIFV8F_net_1), .Q(Q0_c));
    INBUF D0_pad (.PAD(D0), .Y(D0_c));
    DFN1E1C0 \Qaux[1]  (.D(\Qaux_5[1]_net_1 ), .CLK(CP_c), .CLR(MRN_c), 
        .E(S1_pad_RNIFV8F_net_1), .Q(Q1_c));
    
endmodule
