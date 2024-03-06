`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module hc138(
       enable,
       DateA,
       out
    );
input  [2:0] enable;
input  [2:0] DateA;
output [7:0] out;

    wire \enable_pad_RNICNFE1[0]_net_1 , \out_1[0]_net_1 , 
        \out_1[1]_net_1 , \out_1[2]_net_1 , \out_1[3]_net_1 , 
        \enable_c[0] , \enable_c[1] , \enable_c[2] , \DateA_c[0] , 
        \DateA_c[1] , \DateA_c[2] , \out_c[0] , \out_c[1] , \out_c[2] , 
        \out_c[3] , \out_c[4] , \out_c[5] , \out_c[6] , \out_c[7] , 
        \out_pad[1]/U0/NET1 , \out_pad[1]/U0/NET2 , 
        \DateA_pad[1]/U0/NET1 , \out_pad[4]/U0/NET1 , 
        \out_pad[4]/U0/NET2 , \out_pad[6]/U0/NET1 , 
        \out_pad[6]/U0/NET2 , \out_pad[2]/U0/NET1 , 
        \out_pad[2]/U0/NET2 , \DateA_pad[0]/U0/NET1 , 
        \out_pad[7]/U0/NET1 , \out_pad[7]/U0/NET2 , 
        \enable_pad[2]/U0/NET1 , \enable_pad[1]/U0/NET1 , 
        \enable_pad[0]/U0/NET1 , \out_pad[0]/U0/NET1 , 
        \out_pad[0]/U0/NET2 , \DateA_pad[2]/U0/NET1 , 
        \out_pad[5]/U0/NET1 , \out_pad[5]/U0/NET2 , 
        \out_pad[3]/U0/NET1 , \out_pad[3]/U0/NET2 , VCC, GND, 
        AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOPAD_TRI \out_pad[2]/U0/U0  (.D(\out_pad[2]/U0/NET1 ), .E(
        \out_pad[2]/U0/NET2 ), .PAD(out[2]));
    NOR2B \out_1[3]  (.A(\DateA_c[1] ), .B(\DateA_c[0] ), .Y(
        \out_1[3]_net_1 ));
    IOPAD_TRI \out_pad[7]/U0/U0  (.D(\out_pad[7]/U0/NET1 ), .E(
        \out_pad[7]/U0/NET2 ), .PAD(out[7]));
    IOTRI_OB_EB \out_pad[6]/U0/U1  (.D(\out_c[6] ), .E(VCC), .DOUT(
        \out_pad[6]/U0/NET1 ), .EOUT(\out_pad[6]/U0/NET2 ));
    IOPAD_TRI \out_pad[1]/U0/U0  (.D(\out_pad[1]/U0/NET1 ), .E(
        \out_pad[1]/U0/NET2 ), .PAD(out[1]));
    IOIN_IB \DateA_pad[2]/U0/U1  (.YIN(\DateA_pad[2]/U0/NET1 ), .Y(
        \DateA_c[2] ));
    IOTRI_OB_EB \out_pad[0]/U0/U1  (.D(\out_c[0] ), .E(VCC), .DOUT(
        \out_pad[0]/U0/NET1 ), .EOUT(\out_pad[0]/U0/NET2 ));
    IOIN_IB \enable_pad[1]/U0/U1  (.YIN(\enable_pad[1]/U0/NET1 ), .Y(
        \enable_c[1] ));
    IOIN_IB \DateA_pad[0]/U0/U1  (.YIN(\DateA_pad[0]/U0/NET1 ), .Y(
        \DateA_c[0] ));
    IOPAD_TRI \out_pad[6]/U0/U0  (.D(\out_pad[6]/U0/NET1 ), .E(
        \out_pad[6]/U0/NET2 ), .PAD(out[6]));
    IOTRI_OB_EB \out_pad[3]/U0/U1  (.D(\out_c[3] ), .E(VCC), .DOUT(
        \out_pad[3]/U0/NET1 ), .EOUT(\out_pad[3]/U0/NET2 ));
    IOPAD_IN \DateA_pad[2]/U0/U0  (.PAD(DateA[2]), .Y(
        \DateA_pad[2]/U0/NET1 ));
    IOPAD_TRI \out_pad[0]/U0/U0  (.D(\out_pad[0]/U0/NET1 ), .E(
        \out_pad[0]/U0/NET2 ), .PAD(out[0]));
    IOPAD_IN \DateA_pad[0]/U0/U0  (.PAD(DateA[0]), .Y(
        \DateA_pad[0]/U0/NET1 ));
    NOR3C \out[5]  (.A(\DateA_c[2] ), .B(
        \enable_pad_RNICNFE1[0]_net_1 ), .C(\out_1[1]_net_1 ), .Y(
        \out_c[5] ));
    IOIN_IB \enable_pad[0]/U0/U1  (.YIN(\enable_pad[0]/U0/NET1 ), .Y(
        \enable_c[0] ));
    IOIN_IB \DateA_pad[1]/U0/U1  (.YIN(\DateA_pad[1]/U0/NET1 ), .Y(
        \DateA_c[1] ));
    IOPAD_TRI \out_pad[3]/U0/U0  (.D(\out_pad[3]/U0/NET1 ), .E(
        \out_pad[3]/U0/NET2 ), .PAD(out[3]));
    NOR3B \out[3]  (.A(\enable_pad_RNICNFE1[0]_net_1 ), .B(
        \out_1[3]_net_1 ), .C(\DateA_c[2] ), .Y(\out_c[3] ));
    IOIN_IB \enable_pad[2]/U0/U1  (.YIN(\enable_pad[2]/U0/NET1 ), .Y(
        \enable_c[2] ));
    NOR3C \out[4]  (.A(\DateA_c[2] ), .B(
        \enable_pad_RNICNFE1[0]_net_1 ), .C(\out_1[0]_net_1 ), .Y(
        \out_c[4] ));
    IOTRI_OB_EB \out_pad[4]/U0/U1  (.D(\out_c[4] ), .E(VCC), .DOUT(
        \out_pad[4]/U0/NET1 ), .EOUT(\out_pad[4]/U0/NET2 ));
    NOR2A \out_1[1]  (.A(\DateA_c[0] ), .B(\DateA_c[1] ), .Y(
        \out_1[1]_net_1 ));
    NOR2 \out_1[0]  (.A(\DateA_c[1] ), .B(\DateA_c[0] ), .Y(
        \out_1[0]_net_1 ));
    NOR3C \out[6]  (.A(\DateA_c[2] ), .B(
        \enable_pad_RNICNFE1[0]_net_1 ), .C(\out_1[2]_net_1 ), .Y(
        \out_c[6] ));
    IOPAD_IN \enable_pad[1]/U0/U0  (.PAD(enable[1]), .Y(
        \enable_pad[1]/U0/NET1 ));
    NOR3B \out[2]  (.A(\enable_pad_RNICNFE1[0]_net_1 ), .B(
        \out_1[2]_net_1 ), .C(\DateA_c[2] ), .Y(\out_c[2] ));
    NOR3C \out[7]  (.A(\DateA_c[2] ), .B(
        \enable_pad_RNICNFE1[0]_net_1 ), .C(\out_1[3]_net_1 ), .Y(
        \out_c[7] ));
    IOPAD_IN \DateA_pad[1]/U0/U0  (.PAD(DateA[1]), .Y(
        \DateA_pad[1]/U0/NET1 ));
    IOTRI_OB_EB \out_pad[5]/U0/U1  (.D(\out_c[5] ), .E(VCC), .DOUT(
        \out_pad[5]/U0/NET1 ), .EOUT(\out_pad[5]/U0/NET2 ));
    NOR3B \out[1]  (.A(\enable_pad_RNICNFE1[0]_net_1 ), .B(
        \out_1[1]_net_1 ), .C(\DateA_c[2] ), .Y(\out_c[1] ));
    IOPAD_TRI \out_pad[4]/U0/U0  (.D(\out_pad[4]/U0/NET1 ), .E(
        \out_pad[4]/U0/NET2 ), .PAD(out[4]));
    NOR2A \out_1[2]  (.A(\DateA_c[1] ), .B(\DateA_c[0] ), .Y(
        \out_1[2]_net_1 ));
    NOR3B \out[0]  (.A(\enable_pad_RNICNFE1[0]_net_1 ), .B(
        \out_1[0]_net_1 ), .C(\DateA_c[2] ), .Y(\out_c[0] ));
    IOTRI_OB_EB \out_pad[2]/U0/U1  (.D(\out_c[2] ), .E(VCC), .DOUT(
        \out_pad[2]/U0/NET1 ), .EOUT(\out_pad[2]/U0/NET2 ));
    IOPAD_IN \enable_pad[0]/U0/U0  (.PAD(enable[0]), .Y(
        \enable_pad[0]/U0/NET1 ));
    IOTRI_OB_EB \out_pad[7]/U0/U1  (.D(\out_c[7] ), .E(VCC), .DOUT(
        \out_pad[7]/U0/NET1 ), .EOUT(\out_pad[7]/U0/NET2 ));
    IOPAD_TRI \out_pad[5]/U0/U0  (.D(\out_pad[5]/U0/NET1 ), .E(
        \out_pad[5]/U0/NET2 ), .PAD(out[5]));
    IOPAD_IN \enable_pad[2]/U0/U0  (.PAD(enable[2]), .Y(
        \enable_pad[2]/U0/NET1 ));
    IOTRI_OB_EB \out_pad[1]/U0/U1  (.D(\out_c[1] ), .E(VCC), .DOUT(
        \out_pad[1]/U0/NET1 ), .EOUT(\out_pad[1]/U0/NET2 ));
    NOR3C \enable_pad_RNICNFE1[0]  (.A(\enable_c[1] ), .B(
        \enable_c[2] ), .C(\enable_c[0] ), .Y(
        \enable_pad_RNICNFE1[0]_net_1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
