`timescale 10ns / 1ps
module DEMUX_1_8_tb();
reg i;
reg [2:0] s;
wire [7:0] y;
DEMUX_1_8 DEE(.i(i), .s(s), .y(y));
initial begin
i=1; s=3'b000; #10
i=0; s=3'b000; #10
i=1; s=3'b001; #10
i=0; s=3'b001; #10
i=1; s=3'b010; #10
i=0; s=3'b010; #10
i=1; s=3'b011; #10
i=0; s=3'b011; #10
i=1; s=3'b100; #10
i=0; s=3'b100; #10
i=1; s=3'b101; #10
i=0; s=3'b101; #10
i=1; s=3'b110; #10
i=0; s=3'b110; #10
i=1; s=3'b111; #10
i=0; s=3'b111;
end
endmodule
