`timescale 1 ns/100 ps
// Version: v11.9 SP1 11.9.1.0
// File used only for Simulation


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
        \Out_i_a2[2]_net_1 , Out61_3_net_1, Out61_4_net_1, 
        Out61_2_net_1, N_52, N_53, N_51, N_49, EI_c, \In_c[0] , 
        \In_c[1] , \In_c[2] , \In_c[3] , \In_c[4] , \In_c[5] , 
        \In_c[6] , \In_c[7] , \Out_i_a2_0[1] , Out61_0_net_1, 
        Out61_1_net_1, \Out_i_a2_0[0]_net_1 , \In_pad[7]/U0/NET1 , 
        \Out_pad[1]/U0/NET1 , \Out_pad[1]/U0/NET2 , \EO_pad/U0/NET1 , 
        \EO_pad/U0/NET2 , \Out_pad[2]/U0/NET1 , \Out_pad[2]/U0/NET2 , 
        \GS_pad/U0/NET1 , \GS_pad/U0/NET2 , \In_pad[3]/U0/NET1 , 
        \EI_pad/U0/NET1 , \In_pad[1]/U0/NET1 , \In_pad[6]/U0/NET1 , 
        \In_pad[5]/U0/NET1 , \In_pad[4]/U0/NET1 , \In_pad[2]/U0/NET1 , 
        \Out_pad[0]/U0/NET1 , \Out_pad[0]/U0/NET2 , VCC, 
        \In_pad[0]/U0/NET1 , GND, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_TRI \Out_pad[2]/U0/U0  (.D(\Out_pad[2]/U0/NET1 ), .E(
        \Out_pad[2]/U0/NET2 ), .PAD(Out[2]));
    AO1 \Out_i_a2[2]  (.A(Out61_3_net_1), .B(Out61_4_net_1), .C(EI_c), 
        .Y(\Out_i_a2[2]_net_1 ));
    IOIN_IB \In_pad[1]/U0/U1  (.YIN(\In_pad[1]/U0/NET1 ), .Y(\In_c[1] )
        );
    IOPAD_IN \EI_pad/U0/U0  (.PAD(EI), .Y(\EI_pad/U0/NET1 ));
    IOPAD_IN \In_pad[7]/U0/U0  (.PAD(In[7]), .Y(\In_pad[7]/U0/NET1 ));
    IOPAD_TRI \EO_pad/U0/U0  (.D(\EO_pad/U0/NET1 ), .E(
        \EO_pad/U0/NET2 ), .PAD(EO));
    IOPAD_TRI \Out_pad[1]/U0/U0  (.D(\Out_pad[1]/U0/NET1 ), .E(
        \Out_pad[1]/U0/NET2 ), .PAD(Out[1]));
    IOPAD_IN \In_pad[3]/U0/U0  (.PAD(In[3]), .Y(\In_pad[3]/U0/NET1 ));
    OR3B EO_pad_RNO (.A(Out61_0_net_1), .B(Out61_1_net_1), .C(EI_c), 
        .Y(EO_0_sqmuxa));
    IOTRI_OB_EB \Out_pad[0]/U0/U1  (.D(\Out_i[0]_net_1 ), .E(VCC), 
        .DOUT(\Out_pad[0]/U0/NET1 ), .EOUT(\Out_pad[0]/U0/NET2 ));
    NOR2A \Out_i_a2_0_0[0]  (.A(\In_c[4] ), .B(EI_c), .Y(
        \Out_i_a2_0[0]_net_1 ));
    IOPAD_IN \In_pad[6]/U0/U0  (.PAD(In[6]), .Y(\In_pad[6]/U0/NET1 ));
    IOIN_IB \In_pad[7]/U0/U1  (.YIN(\In_pad[7]/U0/NET1 ), .Y(\In_c[7] )
        );
    NOR2 \Out_i_a2_0[0]  (.A(\In_c[7] ), .B(EI_c), .Y(N_52));
    AO1C \Out_i_o2[0]  (.A(\In_c[1] ), .B(\In_c[2] ), .C(\In_c[3] ), 
        .Y(N_49));
    IOIN_IB \In_pad[3]/U0/U1  (.YIN(\In_pad[3]/U0/NET1 ), .Y(\In_c[3] )
        );
    IOPAD_TRI \Out_pad[0]/U0/U0  (.D(\Out_pad[0]/U0/NET1 ), .E(
        \Out_pad[0]/U0/NET2 ), .PAD(Out[0]));
    IOPAD_IN \In_pad[2]/U0/U0  (.PAD(In[2]), .Y(\In_pad[2]/U0/NET1 ));
    NOR2B Out61_4 (.A(\In_c[7] ), .B(\In_c[6] ), .Y(Out61_4_net_1));
    IOIN_IB \In_pad[6]/U0/U1  (.YIN(\In_pad[6]/U0/NET1 ), .Y(\In_c[6] )
        );
    IOTRI_OB_EB \EO_pad/U0/U1  (.D(EO_0_sqmuxa), .E(VCC), .DOUT(
        \EO_pad/U0/NET1 ), .EOUT(\EO_pad/U0/NET2 ));
    IOTRI_OB_EB \GS_pad/U0/U1  (.D(EO_1_sqmuxa), .E(VCC), .DOUT(
        \GS_pad/U0/NET1 ), .EOUT(\GS_pad/U0/NET2 ));
    IOPAD_TRI \GS_pad/U0/U0  (.D(\GS_pad/U0/NET1 ), .E(
        \GS_pad/U0/NET2 ), .PAD(GS));
    NOR3 \Out_i[0]  (.A(N_52), .B(N_53), .C(N_51), .Y(\Out_i[0]_net_1 )
        );
    NOR3C Out61_1 (.A(Out61_4_net_1), .B(Out61_3_net_1), .C(
        Out61_2_net_1), .Y(Out61_1_net_1));
    NOR2B Out61_0 (.A(\In_c[1] ), .B(\In_c[0] ), .Y(Out61_0_net_1));
    NOR3A \Out_i_a2_1[0]  (.A(\In_c[6] ), .B(\In_c[5] ), .C(EI_c), .Y(
        N_53));
    IOIN_IB \In_pad[2]/U0/U1  (.YIN(\In_pad[2]/U0/NET1 ), .Y(\In_c[2] )
        );
    AO1 GS_pad_RNO (.A(Out61_1_net_1), .B(Out61_0_net_1), .C(EI_c), .Y(
        EO_1_sqmuxa));
    IOPAD_IN \In_pad[0]/U0/U0  (.PAD(In[0]), .Y(\In_pad[0]/U0/NET1 ));
    NOR2B Out61_2 (.A(\In_c[3] ), .B(\In_c[2] ), .Y(Out61_2_net_1));
    IOIN_IB \EI_pad/U0/U1  (.YIN(\EI_pad/U0/NET1 ), .Y(EI_c));
    NOR3C \Out_i_a2[0]  (.A(\In_c[6] ), .B(N_49), .C(
        \Out_i_a2_0[0]_net_1 ), .Y(N_51));
    IOPAD_IN \In_pad[5]/U0/U0  (.PAD(In[5]), .Y(\In_pad[5]/U0/NET1 ));
    IOPAD_IN \In_pad[4]/U0/U0  (.PAD(In[4]), .Y(\In_pad[4]/U0/NET1 ));
    IOIN_IB \In_pad[0]/U0/U1  (.YIN(\In_pad[0]/U0/NET1 ), .Y(\In_c[0] )
        );
    IOTRI_OB_EB \Out_pad[2]/U0/U1  (.D(\Out_i_a2[2]_net_1 ), .E(VCC), 
        .DOUT(\Out_pad[2]/U0/NET1 ), .EOUT(\Out_pad[2]/U0/NET2 ));
    AO1A \Out_i[1]  (.A(\Out_i_a2_0[1] ), .B(Out61_4_net_1), .C(EI_c), 
        .Y(\Out_i[1]_net_1 ));
    IOPAD_IN \In_pad[1]/U0/U0  (.PAD(In[1]), .Y(\In_pad[1]/U0/NET1 ));
    IOIN_IB \In_pad[5]/U0/U1  (.YIN(\In_pad[5]/U0/NET1 ), .Y(\In_c[5] )
        );
    NOR2A \Out_i_a2_0_0[1]  (.A(Out61_3_net_1), .B(Out61_2_net_1), .Y(
        \Out_i_a2_0[1] ));
    IOTRI_OB_EB \Out_pad[1]/U0/U1  (.D(\Out_i[1]_net_1 ), .E(VCC), 
        .DOUT(\Out_pad[1]/U0/NET1 ), .EOUT(\Out_pad[1]/U0/NET2 ));
    NOR2B Out61_3 (.A(\In_c[5] ), .B(\In_c[4] ), .Y(Out61_3_net_1));
    IOIN_IB \In_pad[4]/U0/U1  (.YIN(\In_pad[4]/U0/NET1 ), .Y(\In_c[4] )
        );
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
