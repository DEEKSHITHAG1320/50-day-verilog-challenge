`timescale 10ns / 1ps

module SIPO_tb();
    reg clk;
    reg SI;
    wire [3:0] Q;
SIPO uut (.clk(clk), .SI(SI), .Q(Q));
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
SI=1'b1; #10
SI=1'b0; #10
SI=1'b1; #10
SI=1'b1; #10
SI=1'b0;
end
endmodule