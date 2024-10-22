`timescale 10ns / 1ps
module DECODER_3_8_tb();
reg [2:0] x;
wire [7:0] y;
DECODER_3_8 dut (.x(x), .y(y));
initial begin
x=3'b000;#10
x=3'b001;#10
x=3'b010;#10
x=3'b011;#10
x=3'b100;#10
x=3'b101;#10
x=3'b110;#10
x=3'b111;
end
endmodule
