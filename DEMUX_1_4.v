`timescale 10ns / 1ps
module DEMUX_1_4(
    input i,
    input [1:0] s,
    output reg [3:0] y
    );
    always @(*) begin
    case (s)
    2'b00: y={3'b0,i};
    2'b01: y={2'b0,i,1'b0};
    2'b10: y={1'b0,i,2'b0};
    2'b11: y={i,3'b0};
    endcase
    end
endmodule
