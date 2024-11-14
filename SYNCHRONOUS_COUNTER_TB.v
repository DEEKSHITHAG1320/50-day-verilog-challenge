`timescale 1ns / 1ps
module SYNCHRONOUS_COUNTER_TB();
reg clk;
reg reset;
reg u_d;
wire [3:0]Q;
SYNCHRONOUS_COUNTER DUT (.clk(clk), .reset(reset), .u_d(u_d), .Q(Q));
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
reset=1;
u_d=1;
 #5 reset=0; 
 #150 u_d=0;
 
 reset=1; u_d=0;
 
 #5 reset=0;
 #160 u_d=1;
 $finish;
end
endmodule
