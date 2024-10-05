`timescale 10ns / 1ps


module HA_tb();
reg a,b;
wire s,c;
HA uut(.a(a), .b(b), .s(s), .c(c));

initial begin
a=1'b0; b=1'b0;
#10; a=1'b0; b=1'b1;
#10; a=1'b1; b=1'b0;
#10; a=1'b1; b=1'b1;
end

endmodule
