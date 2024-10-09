`timescale 10ns / 1ps
module SQUARER(
    input a2,
    input a1,
    input a0,
    output y5,
    output y4,
    output y3,
    output y2,
    output y1,
    output y0
    );
    assign y0=a0;
    assign y1=1'b0;
    assign y2=(~a0)&a1;
    assign y3=a0&(a1^a2);
    assign y4=a2&((~a1)|a0);
    assign y5=a2&a1;
endmodule
