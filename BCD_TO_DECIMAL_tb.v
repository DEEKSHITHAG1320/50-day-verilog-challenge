`timescale 10ns / 1ps
module BCD_TO_DECIMAL_tb();
reg [3:0] b;
wire [9:0] d;
BCD_TO_DECIMAL dut(.b(b), .d(d));
initial begin
b=4'b0000;#10
b=4'b0001;#10
b=4'b0010;#10
b=4'b0011;#10
b=4'b0100;#10
b=4'b0101;#10
b=4'b0110;#10
b=4'b0111;#10
b=4'b1000;#10
b=4'b1001;
end
endmodule
