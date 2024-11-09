`timescale 10ns / 1ps
module SISO_TB();
reg data_in,clk;
wire data_out;
SISO DUT(.data_in(data_in), .data_out(data_out), .clk(clk));
initial begin
clk=1'b0;
forever #5 clk=~clk;
end
initial begin
data_in=1'b1; #10
data_in=1'b0; #10
data_in=1'b1; #10
data_in=1'b1; #10
data_in=1'b0; #10
data_in=1'b0; #10
data_in=1'b0; #10
data_in=1'b0; 
end
endmodule
