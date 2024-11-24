`timescale 1ns / 1ps
module SEQUENCE_GENERATOR_TB();
reg clk;
reg reset;
wire [3:0] seq_out;
SEQUENCE_GENERATOR DM (.clk(clk), .reset(reset), .seq_out(seq_out));

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
reset=1;
#10 reset=0;
#100 $stop;
end

endmodule
