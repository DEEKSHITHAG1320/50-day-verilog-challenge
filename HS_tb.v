`timescale 10ns / 1ps

module HS_tb();
reg x,y;
wire d,b;
HS uut(.x(x), .y(y), .d(d), .b(b));

initial begin
x=1'b0; y=1'b0;
#10 x=1'b0; y=1'b1;
#10 x=1'b1; y=1'b0;
#10 x=1'b1; y=1'b1;
end
endmodule
