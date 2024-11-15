`timescale 10ns / 1ps
module DUODECIMAL_COUNTER_TB();
reg CLK;
reg RESET;
wire [3:0]Q;
DUODECIMAL_COUNTER DUT (.CLK(CLK), .RESET(RESET), .Q(Q));

initial begin
CLK=1'b0;
forever #5 CLK=~CLK;
end

initial begin
RESET=1;
#10 RESET=0;
#100; $finish;
end
endmodule
