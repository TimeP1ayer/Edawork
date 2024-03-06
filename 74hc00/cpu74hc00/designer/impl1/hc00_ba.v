`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4
// File used only for Simulation


module hc00(
       a,
       b,
       out
    );
input  a;
input  b;
output out;

    wire un1_out_net_1, a_c, b_c, \out_pad/U0/NET1 , \out_pad/U0/NET2 , 
        VCC, \b_pad/U0/NET1 , \a_pad/U0/NET1 , GND, AFLSDF_VCC, 
        AFLSDF_GND;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign AFLSDF_GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign AFLSDF_VCC = VCC_power_net1;
    
    IOIN_IB \b_pad/U0/U1  (.YIN(\b_pad/U0/NET1 ), .Y(b_c));
    OR2B un1_out (.A(b_c), .B(a_c), .Y(un1_out_net_1));
    IOPAD_IN \a_pad/U0/U0  (.PAD(a), .Y(\a_pad/U0/NET1 ));
    IOTRI_OB_EB \out_pad/U0/U1  (.D(un1_out_net_1), .E(VCC), .DOUT(
        \out_pad/U0/NET1 ), .EOUT(\out_pad/U0/NET2 ));
    IOIN_IB \a_pad/U0/U1  (.YIN(\a_pad/U0/NET1 ), .Y(a_c));
    IOPAD_IN \b_pad/U0/U0  (.PAD(b), .Y(\b_pad/U0/NET1 ));
    IOPAD_TRI \out_pad/U0/U0  (.D(\out_pad/U0/NET1 ), .E(
        \out_pad/U0/NET2 ), .PAD(out));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
