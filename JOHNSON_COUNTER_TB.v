`timescale 1ns / 1ps
module JOHNSON_COUNTER_TB();
reg CLK;
reg RESET;
wire [3:0]Q;
JOHNSON_COUNTER DM (.CLK(CLK), .RESET(RESET), .Q(Q));

initial begin
CLK=0;
forever #5 CLK=~CLK;
end

initial begin
RESET=1;
#10 RESET=0;
#100;
$finish;
end
endmodule
