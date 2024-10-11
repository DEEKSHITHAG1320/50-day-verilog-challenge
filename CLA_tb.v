`timescale 10ns / 1ps
module CLA_tb();
reg c0;
reg [3:0]a,b;
wire c4;
wire [3:0]s;
CLA dut (.a(a), .b(b), .c0(c0), .s(s), .c4(c4));

initial begin
a=4'b0000; b=4'b0000; c0=1'b0;
#10 a=4'b1001; b=4'b1010; c0=1'b0;
#10 a=4'b0001; b=4'b1001; c0=1'b1;
#10 a=4'b0101; b=4'b0101;  c0=1'b1;
end
endmodule
