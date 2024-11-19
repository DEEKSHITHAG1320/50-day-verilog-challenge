`timescale 1ns / 1ps
module SELF_CORRECTING_COUNTER_TB();
reg CLK;
reg RESET;
wire [3:0]Q;
SELF_CORRECTING_COUNTER UUT (.CLK(CLK), .RESET(RESET), .Q(Q));

initial begin
CLK=0;
forever #5 CLK=~CLK;
end

initial begin
$monitor("Time: %0t | RESET: %b | Q: %d", $time, RESET, Q);
RESET=1;
#15 RESET=0;

#10 UUT.Q=4'b10000;

#200;
$stop;
end
endmodule
