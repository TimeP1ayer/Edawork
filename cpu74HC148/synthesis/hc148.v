`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc148(
       EI_N,
       in_N,
       out_N,
       GS_N,
       EO_N
    );
input  EI_N;
input  [7:0] in_N;
output [2:0] out_N;
output GS_N;
output EO_N;

    wire out_N61_net_1, \out_N_i[0]_net_1 , \out_N_i[1]_net_1 , 
        \out_N_i_a2[2]_net_1 , GND, VCC, un1_in_N_2, un1_in_N_1, 
        un1_in_N_3, N_52, N_53, N_51, N_49, EI_N_c, \in_N_c[0] , 
        \in_N_c[1] , \in_N_c[2] , \in_N_c[3] , \in_N_c[4] , 
        \in_N_c[5] , \in_N_c[6] , \in_N_c[7] , GS_N_c, 
        \out_N_i_a2_0[1] , un1_in_N_0, un1_in_N_1_0, 
        \out_N_i_a2_0[0]_net_1 ;
    
    OUTBUF \out_N_pad[1]  (.D(\out_N_i[1]_net_1 ), .PAD(out_N[1]));
    OUTBUF \out_N_pad[2]  (.D(\out_N_i_a2[2]_net_1 ), .PAD(out_N[2]));
    INBUF \in_N_pad[5]  (.PAD(in_N[5]), .Y(\in_N_c[5] ));
    NOR3 \out_N_i[0]  (.A(N_52), .B(N_53), .C(N_51), .Y(
        \out_N_i[0]_net_1 ));
    AO1A \out_N_i[1]  (.A(\out_N_i_a2_0[1] ), .B(un1_in_N_1), .C(
        EI_N_c), .Y(\out_N_i[1]_net_1 ));
    VCC VCC_i (.Y(VCC));
    NOR3C \out_N_i_a2[0]  (.A(\in_N_c[1] ), .B(N_49), .C(
        \out_N_i_a2_0[0]_net_1 ), .Y(N_51));
    NOR2B \in_N_pad_RNIDHTT[7]  (.A(\in_N_c[7] ), .B(\in_N_c[6] ), .Y(
        un1_in_N_1_0));
    AO1 GS_N_pad_RNO (.A(un1_in_N_1_0), .B(un1_in_N_0), .C(EI_N_c), .Y(
        GS_N_c));
    NOR2A \out_N_i_a2_0_0[0]  (.A(\in_N_c[3] ), .B(EI_N_c), .Y(
        \out_N_i_a2_0[0]_net_1 ));
    NOR2B \in_N_pad_RNI15TT[0]  (.A(\in_N_c[1] ), .B(\in_N_c[0] ), .Y(
        un1_in_N_1));
    NOR2A \out_N_i_a2_0_0[1]  (.A(un1_in_N_2), .B(un1_in_N_3), .Y(
        \out_N_i_a2_0[1] ));
    OUTBUF GS_N_pad (.D(GS_N_c), .PAD(GS_N));
    NOR2 \out_N_i_a2_0[0]  (.A(\in_N_c[0] ), .B(EI_N_c), .Y(N_52));
    INBUF \in_N_pad[0]  (.PAD(in_N[0]), .Y(\in_N_c[0] ));
    GND GND_i (.Y(GND));
    INBUF \in_N_pad[4]  (.PAD(in_N[4]), .Y(\in_N_c[4] ));
    OUTBUF \out_N_pad[0]  (.D(\out_N_i[0]_net_1 ), .PAD(out_N[0]));
    NOR2B \in_N_pad_RNI9DTT[4]  (.A(\in_N_c[5] ), .B(\in_N_c[4] ), .Y(
        un1_in_N_3));
    INBUF \in_N_pad[2]  (.PAD(in_N[2]), .Y(\in_N_c[2] ));
    NOR2B \in_N_pad_RNI59TT[2]  (.A(\in_N_c[3] ), .B(\in_N_c[2] ), .Y(
        un1_in_N_2));
    INBUF \in_N_pad[3]  (.PAD(in_N[3]), .Y(\in_N_c[3] ));
    OUTBUF EO_N_pad (.D(out_N61_net_1), .PAD(EO_N));
    INBUF EI_N_pad (.PAD(EI_N), .Y(EI_N_c));
    AO1C \out_N_i_o2[0]  (.A(\in_N_c[6] ), .B(\in_N_c[5] ), .C(
        \in_N_c[4] ), .Y(N_49));
    NOR3A \out_N_i_a2_1[0]  (.A(\in_N_c[1] ), .B(\in_N_c[2] ), .C(
        EI_N_c), .Y(N_53));
    NOR3C \in_N_pad_RNIFRNP2[4]  (.A(un1_in_N_1), .B(un1_in_N_2), .C(
        un1_in_N_3), .Y(un1_in_N_0));
    INBUF \in_N_pad[1]  (.PAD(in_N[1]), .Y(\in_N_c[1] ));
    AO1 \out_N_i_a2[2]  (.A(un1_in_N_2), .B(un1_in_N_1), .C(EI_N_c), 
        .Y(\out_N_i_a2[2]_net_1 ));
    INBUF \in_N_pad[6]  (.PAD(in_N[6]), .Y(\in_N_c[6] ));
    INBUF \in_N_pad[7]  (.PAD(in_N[7]), .Y(\in_N_c[7] ));
    OR3B out_N61 (.A(un1_in_N_0), .B(un1_in_N_1_0), .C(EI_N_c), .Y(
        out_N61_net_1));
    
endmodule
