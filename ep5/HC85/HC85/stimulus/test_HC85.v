
`timescale 1ns/1ns

module test_HC85;


reg [3:0]DateA;
reg [3:0]DateB;
reg [2:0]Cas;
wire [2:0]Q;

HC85 hc85(DateA,DateB,Cas,Q);

initial 
begin
    Cas=3'b100;
    DateA=4'b1011;
    DateB=4'b1011;
#5;
#10;
    DateA=4'b1010;
#10;
Cas=3'b001;
#10;
DateB=4'b1010; 

end
initial

$monitor("dataA=%b,dataB=%b,cas=%b,Q=%b",DateA,DateB,Cas,Q);

endmodule

