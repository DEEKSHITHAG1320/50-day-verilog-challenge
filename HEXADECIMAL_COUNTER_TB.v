`timescale 1ns / 1ps
module HEXADECIMAL_COUNTER_TB();
reg CLK;
reg RESET;
wire [2:0] Q;
HEXADECIMAL_COUNTER DM (.CLK(CLK), .RESET(RESET), .Q(Q));

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
