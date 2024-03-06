`timescale 1 ns/100 ps
// Version: v11.9 11.9.0.4


module hc02(
       a,
       b,
       out
    );
input  a;
input  b;
output out;

    wire GND_net_1, VCC_net_1, a_c, b_c, N_3_i;
    
    INBUF a_ibuf (.PAD(a), .Y(a_c));
    VCC VCC (.Y(VCC_net_1));
    CFG2 #( .INIT(4'h1) )  out_obuf_RNO (.A(a_c), .B(b_c), .Y(N_3_i));
    GND GND (.Y(GND_net_1));
    INBUF b_ibuf (.PAD(b), .Y(b_c));
    OUTBUF out_obuf (.D(N_3_i), .PAD(out));
    
endmodule
