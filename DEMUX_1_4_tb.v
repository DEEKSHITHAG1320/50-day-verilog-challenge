`timescale 1ns / 1ps
module DEMUX_1_4_tb();
reg i;
reg [1:0] s;
wire [3:0]y;
DEMUX_1_4 dut(.i(i), .s(s), .y(y));
initial begin
i=0; s=2'b00; #10
i=1; s=2'b00; #10
i=0; s=2'b01; #10
i=1; s=2'b01; #10
i=0; s=2'b10; #10
i=1; s=2'b10; #10
i=0; s=2'b11; #10
i=1; s=2'b11; 
end
endmodule
