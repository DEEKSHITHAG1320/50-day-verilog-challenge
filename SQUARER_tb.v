`timescale 10ns / 1ps
module SQUARER_tb();
reg a2,a1,a0;
wire y5,y4,y3,y2,y1,y0;
SQUARER dut(.a2(a2), .a1(a1), .a0(a0), .y5(y5), .y4(y4), .y3(y3), .y2(y2), .y1(y1), .y0(y0));

initial begin
a2=1'b0; a1=1'b0; a0=1'b0;
#10 a2=1'b0; a1=1'b0; a0=1'b1;
#10 a2=1'b0; a1=1'b1; a0=1'b0;
#10 a2=1'b0; a1=1'b1; a0=1'b1;
#10 a2=1'b1; a1=1'b0; a0=1'b0;
#10 a2=1'b1; a1=1'b0; a0=1'b1;
#10 a2=1'b1; a1=1'b1; a0=1'b0;
#10 a2=1'b1; a1=1'b1; a0=1'b1;
end
endmodule
