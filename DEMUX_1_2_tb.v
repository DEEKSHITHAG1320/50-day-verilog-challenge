`timescale 10ns / 1ps
module DEMUX_1_2_tb();
reg i,s;
wire [1:0]y;
DEMUX_1_2 DEE(.i(i), .s(s), .y(y));
initial begin
i=0; s=0; #10
i=1; s=0; #10
i=0; s=1; #10
i=1; s=1; 
end
endmodule
