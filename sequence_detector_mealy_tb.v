`timescale 1ns / 1ps
module sequence_detector_mealy_tb();
reg clk;
reg reset;
reg x;
wire y;
sequence_detector_mealy uut (.clk(clk), .reset(reset), .x(x), .y(y));

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
reset=1;
x=0;
#10 reset=0;
#10 x=0;
#10 x=1;
#10 x=1;
#10 x=1;
#10 x=0;
#10 x=0;
#10 x=0;
#10 x=1;
#10 x=1;
#10 x=0;
#10 x=1;
#10 x=1;
#10 x=1;
#10 x=0;
#200 $stop;
end

endmodule
