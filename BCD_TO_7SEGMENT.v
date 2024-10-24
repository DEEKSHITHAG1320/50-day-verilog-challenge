`timescale 10ns / 1ps
module BCD_TO_7SEGMENT(
    input [3:0] b,
    output reg [6:0] s
    );
    always@(*)
    begin
    case(b)
    4'b0000 : s=7'b0111111;
    4'b0001 : s=7'b0000110;
    4'b0010 : s=7'b1011011;
    4'b0011 : s=7'b1001111;
    4'b0100 : s=7'b1100110;
    4'b0101 : s=7'b1101101;
    4'b0110 : s=7'b1111101;
    4'b0111 : s=7'b0000111;
    4'b1000 : s=7'b1111111;
    4'b1001 : s=7'b1101111;
    endcase
    end
endmodule
