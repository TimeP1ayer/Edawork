

`timescale 1ns/100ps

module test_HC148;
reg ei;
reg [7:0]turn;
wire [7:0]in=~turn;
wire [2:0]out;
wire eo,gs;
HC148 u(ei,in,out,eo,gs);
initial
begin
    ei=1;turn=8'b1;
    repeat(8)
        #10 turn = turn <<1;
    ei=0;turn = turn <<1;
    repeat(8)
        #10 turn = turn<<1;
end
endmodule

