`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc283(
       inA,
       inB,
       out,
       cin,
       cout
    );
input  [3:0] inA;
input  [3:0] inB;
output [3:0] out;
input  cin;
output cout;

    wire GND, VCC, \out_1_0_0.N_12 , \out_1_0_0.N_14 , 
        \out_1_0_0.N_15 , \out_1_0_0.N_16 , \inA_c[0] , \inA_c[1] , 
        \inA_c[2] , \inA_c[3] , \inB_c[0] , \inB_c[1] , \inB_c[2] , 
        \inB_c[3] , \out_c[3] , cin_c, \out_1_0_0.N_21_i_i , 
        \out_1_0_0.N_22_i_i , \out_1_0_0.N_23_i_i ;
    
    OUTBUF \out_pad[1]  (.D(\out_1_0_0.N_22_i_i ), .PAD(out[1]));
    MAJ3 out_1_0_0_ADD_4x4_slow_I2_S_i_o3 (.A(\out_1_0_0.N_14 ), .B(
        \inA_c[1] ), .C(\inB_c[1] ), .Y(\out_1_0_0.N_15 ));
    INBUF \inA_pad[2]  (.PAD(inA[2]), .Y(\inA_c[2] ));
    XOR3 out_1_0_0_ADD_4x4_slow_I0_S_i_x3 (.A(cin_c), .B(\inB_c[0] ), 
        .C(\inA_c[0] ), .Y(\out_1_0_0.N_21_i_i ));
    INBUF \inA_pad[1]  (.PAD(inA[1]), .Y(\inA_c[1] ));
    INBUF \inB_pad[3]  (.PAD(inB[3]), .Y(\inB_c[3] ));
    MAJ3 out_1_0_0_ADD_4x4_slow_I3_CO1_i (.A(\inA_c[3] ), .B(
        \inB_c[3] ), .C(\out_1_0_0.N_16 ), .Y(\out_1_0_0.N_12 ));
    OUTBUF \out_pad[2]  (.D(\out_1_0_0.N_23_i_i ), .PAD(out[2]));
    INBUF \inB_pad[0]  (.PAD(inB[0]), .Y(\inB_c[0] ));
    VCC VCC_i (.Y(VCC));
    INBUF \inB_pad[1]  (.PAD(inB[1]), .Y(\inB_c[1] ));
    GND GND_i (.Y(GND));
    MAJ3 out_1_0_0_ADD_4x4_slow_I1_S_i_o3 (.A(\inA_c[0] ), .B(cin_c), 
        .C(\inB_c[0] ), .Y(\out_1_0_0.N_14 ));
    OUTBUF cout_pad (.D(\out_1_0_0.N_12 ), .PAD(cout));
    INBUF \inA_pad[3]  (.PAD(inA[3]), .Y(\inA_c[3] ));
    MAJ3 out_1_0_0_ADD_4x4_slow_I3_CO1_i_o3 (.A(\out_1_0_0.N_15 ), .B(
        \inA_c[2] ), .C(\inB_c[2] ), .Y(\out_1_0_0.N_16 ));
    INBUF \inA_pad[0]  (.PAD(inA[0]), .Y(\inA_c[0] ));
    OUTBUF \out_pad[0]  (.D(\out_1_0_0.N_21_i_i ), .PAD(out[0]));
    INBUF \inB_pad[2]  (.PAD(inB[2]), .Y(\inB_c[2] ));
    INBUF cin_pad (.PAD(cin), .Y(cin_c));
    XOR3 out_1_0_0_ADD_4x4_slow_I3_S_i_x2 (.A(\inA_c[3] ), .B(
        \out_1_0_0.N_16 ), .C(\inB_c[3] ), .Y(\out_c[3] ));
    XOR3 out_1_0_0_ADD_4x4_slow_I2_S_i_x3 (.A(\inA_c[2] ), .B(
        \inB_c[2] ), .C(\out_1_0_0.N_15 ), .Y(\out_1_0_0.N_23_i_i ));
    XOR3 out_1_0_0_ADD_4x4_slow_I1_S_i_x3 (.A(\inA_c[1] ), .B(
        \inB_c[1] ), .C(\out_1_0_0.N_14 ), .Y(\out_1_0_0.N_22_i_i ));
    OUTBUF \out_pad[3]  (.D(\out_c[3] ), .PAD(out[3]));
    
endmodule
