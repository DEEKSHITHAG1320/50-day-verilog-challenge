`timescale 1ns / 1ps
module RIPPLE_COUNTER_TB();
reg [3:0]T;
reg [3:0]CLK;
reg U_D;
reg reset;
wire [3:0]Q;
RIPPLE_COUNTER DUT (.T(T), .CLK(CLK), .Q(Q), .U_D(U_D), .reset(reset));
initial begin
CLK=1'b0;
forever #5 CLK=~CLK;
end
initial begin
reset=1; T=4'b1111; U_D=1;
#5 reset =0;
#150;

reset=1; T=4'b1111; U_D=0;
#5 reset=0;
#160 $finish;
end
endmodule
