`timescale 10ns / 1ps

module MUL2_tb();
reg [1:0]a,b;
wire [3:0]c;
MUL2 dut (.a(a), .b(b), .c(c));

initial begin
a=2'b00; b=2'b00;
#10 a=2'b01; b=2'b01;
#10 a=2'b11; b=2'b10;
#10 a=2'b10; b=2'b01;
end
endmodule
