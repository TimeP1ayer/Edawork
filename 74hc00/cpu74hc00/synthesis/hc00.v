`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc00(
       a,
       b,
       out
    );
input  a;
input  b;
output out;

    wire GND, VCC, un1_out_net_1, a_c, b_c;
    
    OR2B un1_out (.A(b_c), .B(a_c), .Y(un1_out_net_1));
    OUTBUF out_pad (.D(un1_out_net_1), .PAD(out));
    INBUF b_pad (.PAD(b), .Y(b_c));
    VCC VCC_i (.Y(VCC));
    GND GND_i (.Y(GND));
    INBUF a_pad (.PAD(a), .Y(a_c));
    
endmodule
