`timescale 10ns / 1ps
module JK_FF_TB();
reg J;
reg K;
reg clk;
wire Q;
JK_FF DUT(.J(J), .K(K), .Q(Q), .clk(clk));
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
J=1'b0; K=1'b0; #10
J=1'b0; K=1'b1; #10
J=1'b1; K=1'b0; #10
J=1'b1; K=1'b1; #10
J=1'b0; K=1'b0; #10
J=1'b0; K=1'b1; #10
J=1'b1; K=1'b0; #10
J=1'b1; K=1'b1; 
end
endmodule
