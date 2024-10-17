`timescale 10ns / 1ps
module COMP_4_tb();
reg [3:0]a,b;
wire E,G,L;
COMP_4 dut (.a(a), .b(b), .E(E), .G(G), .L(L));
initial begin
$monitor("Time: %0t | a: %b, b: %b | E: %b, G: %b, L: %b", $time, a, b, E, G, L);
a=4'b0000; b=4'b0000;
#10 a=4'b0001; b=4'b0010;
#10 a=4'b1000; b=4'b0001;
#10 a=4'b1101; b=4'b1110;
$finish;
end
endmodule
