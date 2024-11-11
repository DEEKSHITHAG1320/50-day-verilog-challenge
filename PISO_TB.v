`timescale 10ns / 1ps
module PISO_TB();
reg [3:0] A;
reg clk;
reg S;
wire data_out;
PISO SUT (.A(A), .S(S), .clk(clk), .data_out(data_out));
initial begin
clk=1'b1;
forever #5 clk=~clk;
end
initial begin
 A = 4'b0111;
 S = 0; #10;       
 @(posedge clk) S = 1; #10;
 @(posedge clk) S = 1; #10;
 @(posedge clk) S = 1; #10;
 @(posedge clk) S = 1; #10;
 A = 4'b0101;
 S= 0; #10;
 @(posedge clk) S= 1; #10;
 @(posedge clk) S= 1; #10;
 @(posedge clk) S= 1; #10;
 @(posedge clk) S= 1; #10;
 $finish;
 end
endmodule
