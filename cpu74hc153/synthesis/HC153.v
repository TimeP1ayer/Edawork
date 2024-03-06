`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module HC153(
       DateOut,
       DateIn,
       Sel,
       Enable
    );
output DateOut;
input  [3:0] DateIn;
input  [1:0] Sel;
input  Enable;

    wire GND, VCC, DateOut_2_1_net_1, DateOut_2_2_net_1, DateOut_2, 
        DateOut_c, \DateIn_c[0] , \DateIn_c[1] , \DateIn_c[2] , 
        \DateIn_c[3] , \Sel_c[0] , \Sel_c[1] , Enable_c;
    
    MX2 DateOut_2_3 (.A(DateOut_2_1_net_1), .B(DateOut_2_2_net_1), .S(
        \Sel_c[0] ), .Y(DateOut_2));
    INBUF \DateIn_pad[3]  (.PAD(DateIn[3]), .Y(\DateIn_c[3] ));
    INBUF \Sel_pad[1]  (.PAD(Sel[1]), .Y(\Sel_c[1] ));
    MX2 DateOut_2_2 (.A(\DateIn_c[1] ), .B(\DateIn_c[3] ), .S(
        \Sel_c[1] ), .Y(DateOut_2_2_net_1));
    OUTBUF DateOut_pad (.D(DateOut_c), .PAD(DateOut));
    INBUF \DateIn_pad[1]  (.PAD(DateIn[1]), .Y(\DateIn_c[1] ));
    VCC VCC_i (.Y(VCC));
    INBUF \DateIn_pad[0]  (.PAD(DateIn[0]), .Y(\DateIn_c[0] ));
    GND GND_i (.Y(GND));
    NOR2A DateOut_pad_RNO (.A(DateOut_2), .B(Enable_c), .Y(DateOut_c));
    INBUF \Sel_pad[0]  (.PAD(Sel[0]), .Y(\Sel_c[0] ));
    MX2 DateOut_2_1 (.A(\DateIn_c[0] ), .B(\DateIn_c[2] ), .S(
        \Sel_c[1] ), .Y(DateOut_2_1_net_1));
    INBUF Enable_pad (.PAD(Enable), .Y(Enable_c));
    INBUF \DateIn_pad[2]  (.PAD(DateIn[2]), .Y(\DateIn_c[2] ));
    
endmodule
