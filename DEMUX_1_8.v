`timescale 10ns / 1ps
module DEMUX_1_8(
    input i,
    input [2:0] s,
    output reg [7:0] y
    );
    always @(*) begin
    case (s)
    3'b000: y={7'b0,i};
    3'b001: y={6'b0,i,1'b0};
    3'b010: y={5'b0,i,2'b0};
    3'b011: y={4'b0,i,3'b0};
    3'b100: y={3'b0,i,4'b0};
    3'b101: y={2'b0,i,5'b0};
    3'b110: y={1'b0,i,6'b0};
    3'b111: y={i,6'b0};
    endcase
    end
endmodule
