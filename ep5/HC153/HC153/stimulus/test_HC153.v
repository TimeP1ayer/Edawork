
`timescale 1ns/100ps

module test_HC153();
wire out;
reg [3:0]in;
reg [1:0]sel;
reg ei;
HC153 u(out,in,sel,ei);
initial
begin 
    ei=0; sel =0; in = 4'b1010;
    repeat(4)
        #10 sel =sel +1;
    ei = 1; sel =0; in =4'b1010;
    repeat(4)
       #10 sel= sel+1;
end

endmodule

