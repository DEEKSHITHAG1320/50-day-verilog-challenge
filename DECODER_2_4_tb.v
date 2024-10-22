`timescale 10ns / 1ps
module DECODER_2_4_tb();
reg [1:0] x;
wire [3:0] y;
DECODER_2_4 dut (.x(x), .y(y));
initial begin
x=2'b00;#10
x=2'b01;#10
x=2'b10;#10
x=2'b11;
end
endmodule
