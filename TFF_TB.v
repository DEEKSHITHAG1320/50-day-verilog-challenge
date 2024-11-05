`timescale 10ns / 1ps
module TFF_TB();
reg clk,T;
wire Q;
TFF DUT (.clk(clk), .T(T), .Q(Q));
initial begin
clk = 1'b0;
forever #5 clk=~clk;
end
initial begin
T=0; #10
T=1; #10
T=1; #10
T=0; #10
T=0; #10
T=1; #10
T=1; #10
T=0; 
end
endmodule
