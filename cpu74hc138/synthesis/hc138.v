`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc138(
       enable,
       DateA,
       out
    );
input  [2:0] enable;
input  [2:0] DateA;
output [7:0] out;

    wire GND, VCC, \enable_pad_RNICNFE1[0]_net_1 , \out_1[0]_net_1 , 
        \out_1[1]_net_1 , \out_1[2]_net_1 , \out_1[3]_net_1 , 
        \enable_c[0] , \enable_c[1] , \enable_c[2] , \DateA_c[0] , 
        \DateA_c[1] , \DateA_c[2] , \out_c[0] , \out_c[1] , \out_c[2] , 
        \out_c[3] , \out_c[4] , \out_c[5] , \out_c[6] , \out_c[7] ;
    
    NOR3C \out[4]  (.A(\DateA_c[2] ), .B(
        \enable_pad_RNICNFE1[0]_net_1 ), .C(\out_1[0]_net_1 ), .Y(
        \out_c[4] ));
    NOR3C \enable_pad_RNICNFE1[0]  (.A(\enable_c[1] ), .B(
        \enable_c[2] ), .C(\enable_c[0] ), .Y(
        \enable_pad_RNICNFE1[0]_net_1 ));
    OUTBUF \out_pad[1]  (.D(\out_c[1] ), .PAD(out[1]));
    INBUF \DateA_pad[1]  (.PAD(DateA[1]), .Y(\DateA_c[1] ));
    OUTBUF \out_pad[4]  (.D(\out_c[4] ), .PAD(out[4]));
    NOR2A \out_1[1]  (.A(\DateA_c[0] ), .B(\DateA_c[1] ), .Y(
        \out_1[1]_net_1 ));
    NOR2 \out_1[0]  (.A(\DateA_c[1] ), .B(\DateA_c[0] ), .Y(
        \out_1[0]_net_1 ));
    OUTBUF \out_pad[6]  (.D(\out_c[6] ), .PAD(out[6]));
    NOR2A \out_1[2]  (.A(\DateA_c[1] ), .B(\DateA_c[0] ), .Y(
        \out_1[2]_net_1 ));
    OUTBUF \out_pad[2]  (.D(\out_c[2] ), .PAD(out[2]));
    NOR3B \out[1]  (.A(\enable_pad_RNICNFE1[0]_net_1 ), .B(
        \out_1[1]_net_1 ), .C(\DateA_c[2] ), .Y(\out_c[1] ));
    VCC VCC_i (.Y(VCC));
    INBUF \DateA_pad[0]  (.PAD(DateA[0]), .Y(\DateA_c[0] ));
    OUTBUF \out_pad[7]  (.D(\out_c[7] ), .PAD(out[7]));
    NOR3C \out[5]  (.A(\DateA_c[2] ), .B(
        \enable_pad_RNICNFE1[0]_net_1 ), .C(\out_1[1]_net_1 ), .Y(
        \out_c[5] ));
    INBUF \enable_pad[2]  (.PAD(enable[2]), .Y(\enable_c[2] ));
    NOR2B \out_1[3]  (.A(\DateA_c[1] ), .B(\DateA_c[0] ), .Y(
        \out_1[3]_net_1 ));
    NOR3B \out[0]  (.A(\enable_pad_RNICNFE1[0]_net_1 ), .B(
        \out_1[0]_net_1 ), .C(\DateA_c[2] ), .Y(\out_c[0] ));
    GND GND_i (.Y(GND));
    INBUF \enable_pad[1]  (.PAD(enable[1]), .Y(\enable_c[1] ));
    NOR3B \out[2]  (.A(\enable_pad_RNICNFE1[0]_net_1 ), .B(
        \out_1[2]_net_1 ), .C(\DateA_c[2] ), .Y(\out_c[2] ));
    NOR3C \out[7]  (.A(\DateA_c[2] ), .B(
        \enable_pad_RNICNFE1[0]_net_1 ), .C(\out_1[3]_net_1 ), .Y(
        \out_c[7] ));
    INBUF \enable_pad[0]  (.PAD(enable[0]), .Y(\enable_c[0] ));
    NOR3B \out[3]  (.A(\enable_pad_RNICNFE1[0]_net_1 ), .B(
        \out_1[3]_net_1 ), .C(\DateA_c[2] ), .Y(\out_c[3] ));
    OUTBUF \out_pad[0]  (.D(\out_c[0] ), .PAD(out[0]));
    INBUF \DateA_pad[2]  (.PAD(DateA[2]), .Y(\DateA_c[2] ));
    NOR3C \out[6]  (.A(\DateA_c[2] ), .B(
        \enable_pad_RNICNFE1[0]_net_1 ), .C(\out_1[2]_net_1 ), .Y(
        \out_c[6] ));
    OUTBUF \out_pad[5]  (.D(\out_c[5] ), .PAD(out[5]));
    OUTBUF \out_pad[3]  (.D(\out_c[3] ), .PAD(out[3]));
    
endmodule
