`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc112(
       J1,
       J2,
       K1,
       K2,
       CPN1,
       CPN2,
       RD1N,
       RD2N,
       SD1N,
       SD2N,
       Q1,
       Q2,
       Q1N,
       Q2N
    );
input  J1;
input  J2;
input  K1;
input  K2;
input  CPN1;
input  CPN2;
input  RD1N;
input  RD2N;
input  SD1N;
input  SD2N;
output Q1;
output Q2;
output Q1N;
output Q2N;

    wire Q2_0_net_1, Q1_RNO_0_net_1, Q2_2_net_1, Q1_RNO_net_1, GND, 
        VCC, J1_c, J2_c, K1_c, K2_c, CPN1_c, CPN2_c, RD1N_c, RD2N_c, 
        SD1N_c, SD2N_c, Q1_c, Q2_c, Q2_1_0_net_1, Q1_1_0, Q2_c_i_net_1, 
        Q1_c_i;
    
    INBUF CPN1_pad (.PAD(CPN1), .Y(CPN1_c));
    AO1C Q2_1_0 (.A(K2_c), .B(J2_c), .C(SD2N_c), .Y(Q2_1_0_net_1));
    INV Q1N_pad_RNO (.A(Q1_c), .Y(Q1_c_i));
    INV Q2_c_i (.A(Q2_c), .Y(Q2_c_i_net_1));
    AXOI5 Q1_RNO_0 (.A(J1_c), .B(K1_c), .C(Q1_c), .Y(Q1_RNO_0_net_1));
    INBUF SD2N_pad (.PAD(SD2N), .Y(SD2N_c));
    OUTBUF Q2_pad (.D(Q2_c), .PAD(Q2));
    OUTBUF Q1_pad (.D(Q1_c), .PAD(Q1));
    DFN1 Q1_inst_1 (.D(Q1_RNO_net_1), .CLK(CPN1_c), .Q(Q1_c));
    OA1 Q1_RNO (.A(Q1_RNO_0_net_1), .B(Q1_1_0), .C(RD1N_c), .Y(
        Q1_RNO_net_1));
    VCC VCC_i (.Y(VCC));
    INBUF RD2N_pad (.PAD(RD2N), .Y(RD2N_c));
    INBUF SD1N_pad (.PAD(SD1N), .Y(SD1N_c));
    INBUF J2_pad (.PAD(J2), .Y(J2_c));
    INBUF J1_pad (.PAD(J1), .Y(J1_c));
    GND GND_i (.Y(GND));
    OUTBUF Q2N_pad (.D(Q2_c_i_net_1), .PAD(Q2N));
    INBUF K2_pad (.PAD(K2), .Y(K2_c));
    INBUF K1_pad (.PAD(K1), .Y(K1_c));
    OUTBUF Q1N_pad (.D(Q1_c_i), .PAD(Q1N));
    OA1 Q2_2 (.A(Q2_0_net_1), .B(Q2_1_0_net_1), .C(RD2N_c), .Y(
        Q2_2_net_1));
    AXOI5 Q2_0 (.A(J2_c), .B(K2_c), .C(Q2_c), .Y(Q2_0_net_1));
    AO1C Q1_RNO_1 (.A(K1_c), .B(J1_c), .C(SD1N_c), .Y(Q1_1_0));
    INBUF RD1N_pad (.PAD(RD1N), .Y(RD1N_c));
    DFN1 Q2_inst_1 (.D(Q2_2_net_1), .CLK(CPN2_c), .Q(Q2_c));
    INBUF CPN2_pad (.PAD(CPN2), .Y(CPN2_c));
    
endmodule
