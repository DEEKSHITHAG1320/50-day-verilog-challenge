`timescale 1ns / 1ps
module MIN_SEC_COUNTER_TB();
reg CLK;
reg RESET;
wire [5:0] Q;
MIN_SEC_COUNTER DM (.CLK(CLK), .RESET(RESET), .Q(Q));

initial begin
CLK=0;
forever #5 CLK=~CLK;
end

initial begin
RESET=1;
#10 RESET=0;
#600 $finish;
end

endmodule
