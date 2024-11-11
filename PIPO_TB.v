`timescale 10ns / 1ps
module PIPO_TB();
reg [3:0] P_I;
reg clk;
wire [3:0] P_O;
PIPO SUT (.P_I(P_I), .P_O(P_O), .clk(clk));
initial begin 
clk=1'b1;
forever #5 clk=~clk;
end
initial begin
P_I=4'b1101;
#10 P_I=4'b0101;
#10 P_I=4'b1010;
#10 P_I=4'b0011;
end
endmodule
