`timescale 10ns / 1ps

module BASIC_GATES_tb();
reg a,b;
wire c,d,e,f,g,h,i;
BASIC_GATES uut(.a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .h(h), .i(i));

initial begin
$monitor("Time=0%t a=%b b=%b c=%b d=%b e=%b f=%b g=%b h=%b i=%b", $time, a, b, c, d, e, f, g, h, i);
a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;
end
endmodule

