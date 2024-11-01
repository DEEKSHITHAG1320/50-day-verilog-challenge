`timescale 10ns / 1ps
module E3_TO_B(
    input [3:0] E,
    output [3:0] B
    );
    assign B = E - 4'b0011;
endmodule
