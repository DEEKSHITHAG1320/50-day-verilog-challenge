`timescale 10ns / 1ps
module B_TO_E3(
    input [3:0] B,
    output [3:0] E
    );
    assign E = B + 4'b0011;
endmodule
