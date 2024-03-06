module testhc138;
reg [2:0]enable;
reg [2:0]DateA;
wire [7:0]out;


hc138 cpu(enable, DateA, out);
initial
begin
enable=3'b000;
DateA=3'b010;
#10;
DateA=3'b101;
#5
enable=3'b111;
#5
DateA=3'b001;
#5
DateA=3'b010;
#5
DateA=3'b100;
end
initial
$monitor("DateA=%b,enable=%b,out=%b",DateA,enable,out);
endmodule

