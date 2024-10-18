`timescale 10ns / 1ps
module ENCODER4_2(
    input [3:0] x,
    output [1:0] y
    );
    assign y[0]=x[1]|x[3];
    assign y[1]=x[2]|x[3];
endmodule
