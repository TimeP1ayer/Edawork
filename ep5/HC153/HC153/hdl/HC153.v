
module HC153(DateOut, DateIn,Sel,Enable );
input [3:0]DateIn;
input [1:0]Sel;
input  Enable;
output reg  DateOut;

always @(Enable or Sel or DateIn)
if(Enable) DateOut = 0;
else    DateOut=DateIn[Sel];




endmodule

