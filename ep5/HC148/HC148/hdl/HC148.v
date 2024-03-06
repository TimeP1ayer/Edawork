

module HC148( EI, In, Out, EO, GS );
input EI;
input [7:0]In;
output [2:0]Out;
output EO, GS;
reg [2:0]Out;
reg EO, GS;
integer I;

always @(EI or In)
if(EI)
        begin
            Out = 3'b111;EO = 1;GS = 1;
        end
else
    begin
    if(In == 8'b11111111)
        begin
            Out = 3'b111;EO = 0;GS = 1;
        end
    else
        begin
            for(I = 0;I < 8;I = I + 1)
            begin
                if(~In[I])
                begin
                    Out = ~I;EO = 1;GS = 0;
                end
            end
        end
    end
endmodule

