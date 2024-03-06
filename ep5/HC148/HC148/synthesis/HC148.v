`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0


module HC148(
       EI,
       In,
       Out,
       EO,
       GS
    );
input  EI;
input  [7:0] In;
output [2:0] Out;
output EO;
output GS;

    wire EO_0_sqmuxa, EO_1_sqmuxa, \Out_i[0]_net_1 , \Out_i[1]_net_1 , 
        \Out_i_a2[2]_net_1 , GND, VCC, Out61_3_net_1, Out61_4_net_1, 
        Out61_2_net_1, N_52, N_53, N_51, N_49, EI_c, \In_c[0] , 
        \In_c[1] , \In_c[2] , \In_c[3] , \In_c[4] , \In_c[5] , 
        \In_c[6] , \In_c[7] , \Out_i_a2_0[1] , Out61_0_net_1, 
        Out61_1_net_1, \Out_i_a2_0[0]_net_1 ;
    
    INBUF \In_pad[7]  (.PAD(In[7]), .Y(\In_c[7] ));
    OUTBUF \Out_pad[1]  (.D(\Out_i[1]_net_1 ), .PAD(Out[1]));
    NOR3A \Out_i_a2_1[0]  (.A(\In_c[6] ), .B(\In_c[5] ), .C(EI_c), .Y(
        N_53));
    AO1 GS_pad_RNO (.A(Out61_1_net_1), .B(Out61_0_net_1), .C(EI_c), .Y(
        EO_1_sqmuxa));
    OUTBUF EO_pad (.D(EO_0_sqmuxa), .PAD(EO));
    NOR2B Out61_3 (.A(\In_c[5] ), .B(\In_c[4] ), .Y(Out61_3_net_1));
    NOR3 \Out_i[0]  (.A(N_52), .B(N_53), .C(N_51), .Y(\Out_i[0]_net_1 )
        );
    OUTBUF \Out_pad[2]  (.D(\Out_i_a2[2]_net_1 ), .PAD(Out[2]));
    NOR2 \Out_i_a2_0[0]  (.A(\In_c[7] ), .B(EI_c), .Y(N_52));
    OUTBUF GS_pad (.D(EO_1_sqmuxa), .PAD(GS));
    VCC VCC_i (.Y(VCC));
    NOR2A \Out_i_a2_0_0[0]  (.A(\In_c[4] ), .B(EI_c), .Y(
        \Out_i_a2_0[0]_net_1 ));
    AO1A \Out_i[1]  (.A(\Out_i_a2_0[1] ), .B(Out61_4_net_1), .C(EI_c), 
        .Y(\Out_i[1]_net_1 ));
    GND GND_i (.Y(GND));
    INBUF \In_pad[3]  (.PAD(In[3]), .Y(\In_c[3] ));
    INBUF EI_pad (.PAD(EI), .Y(EI_c));
    INBUF \In_pad[1]  (.PAD(In[1]), .Y(\In_c[1] ));
    INBUF \In_pad[6]  (.PAD(In[6]), .Y(\In_c[6] ));
    INBUF \In_pad[5]  (.PAD(In[5]), .Y(\In_c[5] ));
    INBUF \In_pad[4]  (.PAD(In[4]), .Y(\In_c[4] ));
    AO1C \Out_i_o2[0]  (.A(\In_c[1] ), .B(\In_c[2] ), .C(\In_c[3] ), 
        .Y(N_49));
    AO1 \Out_i_a2[2]  (.A(Out61_3_net_1), .B(Out61_4_net_1), .C(EI_c), 
        .Y(\Out_i_a2[2]_net_1 ));
    INBUF \In_pad[2]  (.PAD(In[2]), .Y(\In_c[2] ));
    OUTBUF \Out_pad[0]  (.D(\Out_i[0]_net_1 ), .PAD(Out[0]));
    NOR3C \Out_i_a2[0]  (.A(\In_c[6] ), .B(N_49), .C(
        \Out_i_a2_0[0]_net_1 ), .Y(N_51));
    NOR2A \Out_i_a2_0_0[1]  (.A(Out61_3_net_1), .B(Out61_2_net_1), .Y(
        \Out_i_a2_0[1] ));
    NOR3C Out61_1 (.A(Out61_4_net_1), .B(Out61_3_net_1), .C(
        Out61_2_net_1), .Y(Out61_1_net_1));
    NOR2B Out61_4 (.A(\In_c[7] ), .B(\In_c[6] ), .Y(Out61_4_net_1));
    NOR2B Out61_0 (.A(\In_c[1] ), .B(\In_c[0] ), .Y(Out61_0_net_1));
    INBUF \In_pad[0]  (.PAD(In[0]), .Y(\In_c[0] ));
    OR3B EO_pad_RNO (.A(Out61_0_net_1), .B(Out61_1_net_1), .C(EI_c), 
        .Y(EO_0_sqmuxa));
    NOR2B Out61_2 (.A(\In_c[3] ), .B(\In_c[2] ), .Y(Out61_2_net_1));
    
endmodule
