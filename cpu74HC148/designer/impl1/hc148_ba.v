`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


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
        \out_N_i_a2[2]_net_1 , un1_in_N_2, un1_in_N_1, un1_in_N_3, 
        N_52, N_53, N_51, N_49, EI_N_c, \in_N_c[0] , \in_N_c[1] , 
        \in_N_c[2] , \in_N_c[3] , \in_N_c[4] , \in_N_c[5] , 
        \in_N_c[6] , \in_N_c[7] , GS_N_c, \out_N_i_a2_0[1] , 
        un1_in_N_0, un1_in_N_1_0, \out_N_i_a2_0[0]_net_1 , 
        \out_N_pad[1]/U0/NET1 , \out_N_pad[1]/U0/NET2 , 
        \out_N_pad[2]/U0/NET1 , \out_N_pad[2]/U0/NET2 , 
        \in_N_pad[5]/U0/NET1 , \GS_N_pad/U0/NET1 , \GS_N_pad/U0/NET2 , 
        \in_N_pad[0]/U0/NET1 , \in_N_pad[4]/U0/NET1 , 
        \out_N_pad[0]/U0/NET1 , \out_N_pad[0]/U0/NET2 , 
        \in_N_pad[2]/U0/NET1 , \in_N_pad[3]/U0/NET1 , 
        \EO_N_pad/U0/NET1 , \EO_N_pad/U0/NET2 , VCC, 
        \EI_N_pad/U0/NET1 , \in_N_pad[1]/U0/NET1 , 
        \in_N_pad[6]/U0/NET1 , \in_N_pad[7]/U0/NET1 , GND, AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \in_N_pad[4]/U0/U1  (.YIN(\in_N_pad[4]/U0/NET1 ), .Y(
        \in_N_c[4] ));
    NOR2A \out_N_i_a2_0_0[1]  (.A(un1_in_N_2), .B(un1_in_N_3), .Y(
        \out_N_i_a2_0[1] ));
    IOPAD_TRI \out_N_pad[1]/U0/U0  (.D(\out_N_pad[1]/U0/NET1 ), .E(
        \out_N_pad[1]/U0/NET2 ), .PAD(out_N[1]));
    IOPAD_IN \in_N_pad[1]/U0/U0  (.PAD(in_N[1]), .Y(
        \in_N_pad[1]/U0/NET1 ));
    IOPAD_IN \in_N_pad[7]/U0/U0  (.PAD(in_N[7]), .Y(
        \in_N_pad[7]/U0/NET1 ));
    IOTRI_OB_EB \EO_N_pad/U0/U1  (.D(out_N61_net_1), .E(VCC), .DOUT(
        \EO_N_pad/U0/NET1 ), .EOUT(\EO_N_pad/U0/NET2 ));
    IOIN_IB \in_N_pad[0]/U0/U1  (.YIN(\in_N_pad[0]/U0/NET1 ), .Y(
        \in_N_c[0] ));
    IOPAD_IN \in_N_pad[4]/U0/U0  (.PAD(in_N[4]), .Y(
        \in_N_pad[4]/U0/NET1 ));
    NOR3A \out_N_i_a2_1[0]  (.A(\in_N_c[1] ), .B(\in_N_c[2] ), .C(
        EI_N_c), .Y(N_53));
    IOPAD_IN \in_N_pad[0]/U0/U0  (.PAD(in_N[0]), .Y(
        \in_N_pad[0]/U0/NET1 ));
    IOPAD_TRI \out_N_pad[2]/U0/U0  (.D(\out_N_pad[2]/U0/NET1 ), .E(
        \out_N_pad[2]/U0/NET2 ), .PAD(out_N[2]));
    IOTRI_OB_EB \out_N_pad[1]/U0/U1  (.D(\out_N_i[1]_net_1 ), .E(VCC), 
        .DOUT(\out_N_pad[1]/U0/NET1 ), .EOUT(\out_N_pad[1]/U0/NET2 ));
    AO1 \out_N_i_a2[2]  (.A(un1_in_N_2), .B(un1_in_N_1), .C(EI_N_c), 
        .Y(\out_N_i_a2[2]_net_1 ));
    IOPAD_TRI \EO_N_pad/U0/U0  (.D(\EO_N_pad/U0/NET1 ), .E(
        \EO_N_pad/U0/NET2 ), .PAD(EO_N));
    IOPAD_TRI \out_N_pad[0]/U0/U0  (.D(\out_N_pad[0]/U0/NET1 ), .E(
        \out_N_pad[0]/U0/NET2 ), .PAD(out_N[0]));
    IOIN_IB \in_N_pad[2]/U0/U1  (.YIN(\in_N_pad[2]/U0/NET1 ), .Y(
        \in_N_c[2] ));
    IOIN_IB \in_N_pad[5]/U0/U1  (.YIN(\in_N_pad[5]/U0/NET1 ), .Y(
        \in_N_c[5] ));
    NOR2B \in_N_pad_RNI15TT[0]  (.A(\in_N_c[1] ), .B(\in_N_c[0] ), .Y(
        un1_in_N_1));
    NOR2B \in_N_pad_RNI9DTT[4]  (.A(\in_N_c[5] ), .B(\in_N_c[4] ), .Y(
        un1_in_N_3));
    IOPAD_IN \in_N_pad[2]/U0/U0  (.PAD(in_N[2]), .Y(
        \in_N_pad[2]/U0/NET1 ));
    NOR2B \in_N_pad_RNIDHTT[7]  (.A(\in_N_c[7] ), .B(\in_N_c[6] ), .Y(
        un1_in_N_1_0));
    AO1C \out_N_i_o2[0]  (.A(\in_N_c[6] ), .B(\in_N_c[5] ), .C(
        \in_N_c[4] ), .Y(N_49));
    NOR3 \out_N_i[0]  (.A(N_52), .B(N_53), .C(N_51), .Y(
        \out_N_i[0]_net_1 ));
    IOPAD_IN \in_N_pad[5]/U0/U0  (.PAD(in_N[5]), .Y(
        \in_N_pad[5]/U0/NET1 ));
    IOTRI_OB_EB \out_N_pad[2]/U0/U1  (.D(\out_N_i_a2[2]_net_1 ), .E(
        VCC), .DOUT(\out_N_pad[2]/U0/NET1 ), .EOUT(
        \out_N_pad[2]/U0/NET2 ));
    AO1 GS_N_pad_RNO (.A(un1_in_N_1_0), .B(un1_in_N_0), .C(EI_N_c), .Y(
        GS_N_c));
    IOPAD_IN \EI_N_pad/U0/U0  (.PAD(EI_N), .Y(\EI_N_pad/U0/NET1 ));
    IOTRI_OB_EB \out_N_pad[0]/U0/U1  (.D(\out_N_i[0]_net_1 ), .E(VCC), 
        .DOUT(\out_N_pad[0]/U0/NET1 ), .EOUT(\out_N_pad[0]/U0/NET2 ));
    NOR3C \in_N_pad_RNIFRNP2[4]  (.A(un1_in_N_1), .B(un1_in_N_2), .C(
        un1_in_N_3), .Y(un1_in_N_0));
    IOPAD_TRI \GS_N_pad/U0/U0  (.D(\GS_N_pad/U0/NET1 ), .E(
        \GS_N_pad/U0/NET2 ), .PAD(GS_N));
    NOR3C \out_N_i_a2[0]  (.A(\in_N_c[1] ), .B(N_49), .C(
        \out_N_i_a2_0[0]_net_1 ), .Y(N_51));
    IOIN_IB \in_N_pad[3]/U0/U1  (.YIN(\in_N_pad[3]/U0/NET1 ), .Y(
        \in_N_c[3] ));
    IOIN_IB \EI_N_pad/U0/U1  (.YIN(\EI_N_pad/U0/NET1 ), .Y(EI_N_c));
    IOTRI_OB_EB \GS_N_pad/U0/U1  (.D(GS_N_c), .E(VCC), .DOUT(
        \GS_N_pad/U0/NET1 ), .EOUT(\GS_N_pad/U0/NET2 ));
    IOIN_IB \in_N_pad[6]/U0/U1  (.YIN(\in_N_pad[6]/U0/NET1 ), .Y(
        \in_N_c[6] ));
    NOR2B \in_N_pad_RNI59TT[2]  (.A(\in_N_c[3] ), .B(\in_N_c[2] ), .Y(
        un1_in_N_2));
    OR3B out_N61 (.A(un1_in_N_0), .B(un1_in_N_1_0), .C(EI_N_c), .Y(
        out_N61_net_1));
    IOIN_IB \in_N_pad[1]/U0/U1  (.YIN(\in_N_pad[1]/U0/NET1 ), .Y(
        \in_N_c[1] ));
    NOR2A \out_N_i_a2_0_0[0]  (.A(\in_N_c[3] ), .B(EI_N_c), .Y(
        \out_N_i_a2_0[0]_net_1 ));
    IOIN_IB \in_N_pad[7]/U0/U1  (.YIN(\in_N_pad[7]/U0/NET1 ), .Y(
        \in_N_c[7] ));
    NOR2 \out_N_i_a2_0[0]  (.A(\in_N_c[0] ), .B(EI_N_c), .Y(N_52));
    AO1A \out_N_i[1]  (.A(\out_N_i_a2_0[1] ), .B(un1_in_N_1), .C(
        EI_N_c), .Y(\out_N_i[1]_net_1 ));
    IOPAD_IN \in_N_pad[3]/U0/U0  (.PAD(in_N[3]), .Y(
        \in_N_pad[3]/U0/NET1 ));
    IOPAD_IN \in_N_pad[6]/U0/U0  (.PAD(in_N[6]), .Y(
        \in_N_pad[6]/U0/NET1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
