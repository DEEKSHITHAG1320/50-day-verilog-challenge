`timescale 10ns / 1ps
module MUL43_tb();
reg [3:0]a;
reg [2:0]b;
wire [6:0]c;
MUL43 dut(.a(a), .b(b), .c(c));

initial begin
a=4'b0000; b=3'b000;
#10 a=4'b0011; b=3'b010;
#10 a=4'b1110; b=3'b101;
#10 a=4'b1010; b=3'b110;

end
endmodule
