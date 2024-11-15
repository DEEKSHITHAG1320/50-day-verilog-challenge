`timescale 1ns / 1ps
module MILITARY_TIME_COUNTER_TB();
reg CLK;
reg RESET;
wire [4:0] Q;
MILITARY_TIME_COUNTER DM (.CLK(CLK), .RESET(RESET), .Q(Q));

initial begin
CLK=1'b0;
forever #5 CLK=~CLK;
end

initial begin
RESET=1;
#10 RESET=0;
#240;
$finish;
end
endmodule
