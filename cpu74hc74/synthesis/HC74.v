`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module HC74(
       D1,
       D2,
       CP1,
       CP2,
       RD1N,
       RD2N,
       SD1N,
       SD2N,
       Q1,
       Q2,
       Q1N,
       Q2N
    );
input  D1;
input  D2;
input  CP1;
input  CP2;
input  RD1N;
input  RD2N;
input  SD1N;
input  SD2N;
output Q1;
output Q2;
output Q1N;
output Q2N;

    wire GND, VCC, D1_c, D2_c, CP1_c, CP2_c, RD1N_c, RD2N_c, SD1N_c, 
        SD2N_c, Q1_c, Q2_c, Q2_c_i, Q1_c_i, SD2N_c_i, SD1N_c_i, 
        RD2N_c_i, RD1N_c_i;
    
    INV Q2_RNO_0 (.A(SD2N_c), .Y(SD2N_c_i));
    INV Q1N_pad_RNO (.A(Q1_c), .Y(Q1_c_i));
    INV Q1_RNO_0 (.A(SD1N_c), .Y(SD1N_c_i));
    INBUF SD2N_pad (.PAD(SD2N), .Y(SD2N_c));
    OUTBUF Q2_pad (.D(Q2_c), .PAD(Q2));
    OUTBUF Q1_pad (.D(Q1_c), .PAD(Q1));
    DFN1P1C1 Q1_inst_1 (.D(D1_c), .CLK(CP1_c), .PRE(SD1N_c_i), .CLR(
        RD1N_c_i), .Q(Q1_c));
    INV Q1_RNO (.A(RD1N_c), .Y(RD1N_c_i));
    VCC VCC_i (.Y(VCC));
    INBUF RD2N_pad (.PAD(RD2N), .Y(RD2N_c));
    INBUF SD1N_pad (.PAD(SD1N), .Y(SD1N_c));
    INBUF CP1_pad (.PAD(CP1), .Y(CP1_c));
    GND GND_i (.Y(GND));
    INV Q2_RNO (.A(RD2N_c), .Y(RD2N_c_i));
    INV Q2N_pad_RNO (.A(Q2_c), .Y(Q2_c_i));
    OUTBUF Q2N_pad (.D(Q2_c_i), .PAD(Q2N));
    INBUF D2_pad (.PAD(D2), .Y(D2_c));
    INBUF D1_pad (.PAD(D1), .Y(D1_c));
    OUTBUF Q1N_pad (.D(Q1_c_i), .PAD(Q1N));
    INBUF CP2_pad (.PAD(CP2), .Y(CP2_c));
    INBUF RD1N_pad (.PAD(RD1N), .Y(RD1N_c));
    DFN1P1C1 Q2_inst_1 (.D(D2_c), .CLK(CP2_c), .PRE(SD2N_c_i), .CLR(
        RD2N_c_i), .Q(Q2_c));
    
endmodule
