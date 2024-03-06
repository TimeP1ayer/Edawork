`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module HC85(
       DateA,
       DateB,
       Cas,
       Q
    );
input  [3:0] DateA;
input  [3:0] DateB;
input  [2:0] Cas;
output [2:0] Q;

    wire Q45_1, Q45_2, Q45_3, \_l0.Q19 , \_l0.Q20 , \_l1.Q26 , 
        \_l1.Q27 , \_l2.Q33 , \_l2.Q34 , \_l3.Q40 , \_l3.Q41 , Q46, 
        GND, VCC, N_31_mux, N_39_mux, N_14, N_33_mux, N_40_mux, N_25, 
        N_31, N_32, N_34, N_37, N_38, \DateA_c[0] , \DateA_c[1] , 
        \DateA_c[2] , \DateA_c[3] , \DateB_c[0] , \DateB_c[1] , 
        \DateB_c[2] , \DateB_c[3] , \Cas_c[0] , \Cas_c[1] , \Cas_c[2] , 
        \Q_c[1] , Q45_NE_0, Q45_NE_1;
    
    AND2A \_l1.Q26_0_I_1  (.A(\DateB_c[1] ), .B(\DateA_c[1] ), .Y(
        \_l1.Q26 ));
    INBUF \Cas_pad[0]  (.PAD(Cas[0]), .Y(\Cas_c[0] ));
    OA1B \Q_pad_RNO_2[2]  (.A(Q45_2), .B(N_32), .C(\_l2.Q33 ), .Y(N_37)
        );
    MX2A \Q_pad_RNO_0[2]  (.A(\_l3.Q40 ), .B(\Cas_c[0] ), .S(N_31), .Y(
        N_31_mux));
    INBUF \DateA_pad[2]  (.PAD(DateA[2]), .Y(\DateA_c[2] ));
    AND2A \_l0.Q19_0_I_1  (.A(\DateB_c[0] ), .B(\DateA_c[0] ), .Y(
        \_l0.Q19 ));
    VCC VCC_i (.Y(VCC));
    OA1B \Q_pad_RNO_2[0]  (.A(Q45_2), .B(N_34), .C(\_l2.Q34 ), .Y(N_38)
        );
    INBUF \DateB_pad[1]  (.PAD(DateB[1]), .Y(\DateB_c[1] ));
    OR2 \DateA_pad_RNIO36E[2]  (.A(Q45_3), .B(Q45_2), .Y(Q45_NE_1));
    OUTBUF \Q_pad[2]  (.D(N_14), .PAD(Q[2]));
    XOR2 \DateA_pad_RNIR037[2]  (.A(\DateA_c[2] ), .B(\DateB_c[2] ), 
        .Y(Q45_2));
    AND2A \_l2.Q34_0_I_1  (.A(\DateA_c[2] ), .B(\DateB_c[2] ), .Y(
        \_l2.Q34 ));
    NOR2A \Q_pad_RNO[1]  (.A(\Cas_c[1] ), .B(Q46), .Y(\Q_c[1] ));
    INBUF \DateB_pad[2]  (.PAD(DateB[2]), .Y(\DateB_c[2] ));
    OA1C \Q_pad_RNO_3[2]  (.A(\_l0.Q19 ), .B(Q45_1), .C(\_l1.Q26 ), .Y(
        N_32));
    MX2C \Q_pad_RNO[2]  (.A(N_31_mux), .B(N_39_mux), .S(Q46), .Y(N_14));
    XOR2 \DateA_pad_RNIT237[3]  (.A(\DateA_c[3] ), .B(\DateB_c[3] ), 
        .Y(Q45_3));
    GND GND_i (.Y(GND));
    MX2A \Q_pad_RNO_0[0]  (.A(\_l3.Q41 ), .B(\Cas_c[2] ), .S(N_31), .Y(
        N_33_mux));
    MX2C \Q_pad_RNO[0]  (.A(N_33_mux), .B(N_40_mux), .S(Q46), .Y(N_25));
    OA1C \Q_pad_RNO_3[0]  (.A(\_l0.Q20 ), .B(Q45_1), .C(\_l1.Q27 ), .Y(
        N_34));
    INBUF \DateB_pad[0]  (.PAD(DateB[0]), .Y(\DateB_c[0] ));
    INBUF \DateA_pad[0]  (.PAD(DateA[0]), .Y(\DateA_c[0] ));
    INBUF \DateA_pad[3]  (.PAD(DateA[3]), .Y(\DateA_c[3] ));
    AND2A \_l3.Q41_0_I_1  (.A(\DateA_c[3] ), .B(\DateB_c[3] ), .Y(
        \_l3.Q41 ));
    OUTBUF \Q_pad[1]  (.D(\Q_c[1] ), .PAD(Q[1]));
    XOR2 \DateA_pad_RNIPU27[1]  (.A(\DateA_c[1] ), .B(\DateB_c[1] ), 
        .Y(Q45_1));
    OA1B \Q_pad_RNO_1[0]  (.A(Q45_3), .B(N_38), .C(\_l3.Q41 ), .Y(
        N_40_mux));
    OR2 \DateA_pad_RNI8VBS[0]  (.A(Q45_NE_1), .B(Q45_NE_0), .Y(Q46));
    OUTBUF \Q_pad[0]  (.D(N_25), .PAD(Q[0]));
    AND2A \_l2.Q33_0_I_1  (.A(\DateB_c[2] ), .B(\DateA_c[2] ), .Y(
        \_l2.Q33 ));
    INBUF \DateB_pad[3]  (.PAD(DateB[3]), .Y(\DateB_c[3] ));
    INBUF \Cas_pad[2]  (.PAD(Cas[2]), .Y(\Cas_c[2] ));
    AND2A \_l0.Q20_0_I_1  (.A(\DateA_c[0] ), .B(\DateB_c[0] ), .Y(
        \_l0.Q20 ));
    INBUF \DateA_pad[1]  (.PAD(DateA[1]), .Y(\DateA_c[1] ));
    XO1 \DateA_pad_RNIGR5E[0]  (.A(\DateB_c[0] ), .B(\DateA_c[0] ), .C(
        Q45_1), .Y(Q45_NE_0));
    AND2A \_l3.Q40_0_I_1  (.A(\DateB_c[3] ), .B(\DateA_c[3] ), .Y(
        \_l3.Q40 ));
    AND2A \_l1.Q27_0_I_1  (.A(\DateA_c[1] ), .B(\DateB_c[1] ), .Y(
        \_l1.Q27 ));
    INBUF \Cas_pad[1]  (.PAD(Cas[1]), .Y(\Cas_c[1] ));
    OA1B \Q_pad_RNO_1[2]  (.A(Q45_3), .B(N_37), .C(\_l3.Q40 ), .Y(
        N_39_mux));
    AOI1 \Cas_pad_RNISGEC1[0]  (.A(\Cas_c[2] ), .B(\Cas_c[0] ), .C(
        \Cas_c[1] ), .Y(N_31));
    
endmodule
