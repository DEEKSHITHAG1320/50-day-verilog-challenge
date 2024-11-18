`timescale 1ns / 1ps
module FIBONACCI_COUNTER_TB();
reg CLK;
reg RESET;
wire [31:0] F;
FIBONACCI_COUNTER DM (.CLK(CLK), .RESET(RESET), .F(F));

always #2 CLK=~CLK;
initial begin
CLK=0;
RESET=0;
#4 RESET=1;
#500;
$finish;
end
endmodule
