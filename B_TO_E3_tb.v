`timescale 10ns / 1ps
module B_TO_E3_tb();
reg [3:0] B;
wire [3:0] E;
B_TO_E3 DUT(.B(B), .E(E));
initial begin
B=4'b0000; #10
B=4'b0001; #10
B=4'b0010; #10
B=4'b0011; #10
B=4'b0100; #10
B=4'b0101; #10
B=4'b0110; #10
B=4'b0111; #10
B=4'b1000; #10
B=4'b1001; 
end
endmodule
