`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module sdf_IOPAD_IN(
       PAD,
       Y
    );
input  PAD;
output Y;

    wire NET_IOUT_VDD, NET_IOUT_IN, ADLIB_GND;
    wire GND_power_net1;
    assign ADLIB_GND = GND_power_net1;
    
    IOPAD_IN_VDDI U_VCCI (.PAD_P(PAD), .IOUT_VDD(NET_IOUT_VDD));
    IOPAD_DELAY U_DELAY (.IOUT_IN(NET_IOUT_IN), .IOUT_P(Y));
    IOPAD_VDD U_VCCA (.OIN_P(ADLIB_GND), .EIN_P(ADLIB_GND), .IOUT_VDD(
        NET_IOUT_VDD), .OIN_VDD(), .EIN_VDD(), .IOUT_IN(NET_IOUT_IN));
    GND GND_power_inst1 (.Y(GND_power_net1));
    
endmodule


module sdf_IOPAD_TRI(
       PAD,
       D,
       E
    );
output PAD;
input  D;
input  E;

    wire NET_OIN_VDD, NET_EIN_VDD;
    
    IOPAD_TRI_VDDI U_VCCI (.OIN_VDD(NET_OIN_VDD), .EIN_VDD(NET_EIN_VDD)
        , .PAD_P(PAD));
    IOPAD_VDD U_VCCA (.OIN_P(D), .EIN_P(E), .IOUT_VDD(), .OIN_VDD(
        NET_OIN_VDD), .EIN_VDD(NET_EIN_VDD), .IOUT_IN());
    
endmodule


module hc02(
       a,
       b,
       out
    );
input  a;
input  b;
output out;

    wire a_c, b_c, N_3_i, \a_ibuf/U0/YIN1 , \a_ibuf/U0/YIN , GND, 
        \b_ibuf/U0/YIN1 , \b_ibuf/U0/YIN , \out_obuf/U0/DOUT1 , 
        \out_obuf/U0/DOUT , \out_obuf/U0/EOUT1 , \out_obuf/U0/EOUT , 
        VCC, AFLSDF_VCC, AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOENFF_BYPASS \out_obuf/U0/U_IOENFF  (.A(\out_obuf/U0/EOUT1 ), .Y(
        \out_obuf/U0/EOUT ));
    IOINFF_BYPASS \a_ibuf/U0/U_IOINFF  (.A(\a_ibuf/U0/YIN1 ), .Y(
        \a_ibuf/U0/YIN ));
    CFG2 #( .INIT(4'h1) )  out_obuf_RNO (.A(a_c), .B(b_c), .Y(N_3_i));
    IOTRI_OB_EB \out_obuf/U0/U_IOTRI  (.D(N_3_i), .E(VCC), .DOUT(
        \out_obuf/U0/DOUT1 ), .EOUT(\out_obuf/U0/EOUT1 ));
    IOOUTFF_BYPASS \out_obuf/U0/U_IOOUTFF  (.A(\out_obuf/U0/DOUT1 ), 
        .Y(\out_obuf/U0/DOUT ));
    IOIN_IB \a_ibuf/U0/U_IOIN  (.YIN(\a_ibuf/U0/YIN ), .E(GND), .Y(a_c)
        );
    sdf_IOPAD_IN \b_ibuf/U0/U_IOPAD  (.PAD(b), .Y(\b_ibuf/U0/YIN1 ));
    IOIN_IB \b_ibuf/U0/U_IOIN  (.YIN(\b_ibuf/U0/YIN ), .E(GND), .Y(b_c)
        );
    sdf_IOPAD_TRI \out_obuf/U0/U_IOPAD  (.PAD(out), .D(
        \out_obuf/U0/DOUT ), .E(\out_obuf/U0/EOUT ));
    IOINFF_BYPASS \b_ibuf/U0/U_IOINFF  (.A(\b_ibuf/U0/YIN1 ), .Y(
        \b_ibuf/U0/YIN ));
    sdf_IOPAD_IN \a_ibuf/U0/U_IOPAD  (.PAD(a), .Y(\a_ibuf/U0/YIN1 ));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
