`timescale 1ns / 1ps
module MEALY_FSM_TB();
reg clk;
reg x;
wire y;
MEALY_FSM DM (.clk(clk), .x(x), .y(y));

initial begin
clk=0;
forever #10 clk=~clk;
end

initial begin
x=0;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=0;
#10 x=1;
#50;
$stop;
end
endmodule
