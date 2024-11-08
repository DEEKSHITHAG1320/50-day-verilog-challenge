`timescale 10ns / 1ps
module SR_FF_tb();
reg S;
reg R;
reg clk;
wire Q;
SR_FF DUT(.S(S), .R(R), .Q(Q), .clk(clk));
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
S=1'b0; R=1'b0; #10
S=1'b0; R=1'b1; #10
S=1'b1; R=1'b0; #10
S=1'b1; R=1'b1; #10
S=1'b0; R=1'b0; #10
S=1'b0; R=1'b1; #10
S=1'b1; R=1'b0; #10
S=1'b1; R=1'b1; 
end
endmodule
