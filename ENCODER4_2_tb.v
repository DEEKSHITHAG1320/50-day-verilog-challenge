`timescale 10ns / 1ps
module ENCODER4_2_tb();
reg [3:0]x;
wire [1:0]y;
ENCODER4_2 dut(.x(x), .y(y));
initial begin
$monitor("Time: %0t | x: %b | y: %b", $time, x, y);
x=4'b0001;
#10 x=4'b0100;
#10 x=4'b0010;
#10 x=4'b1000;
end
endmodule
