`timescale 10ns / 1ps
module BCD_TO_DECIMAL(
    input [3:0] b,
    output [9:0] d
    );
    assign d[0]=(~b[3])&(~b[2])&(~b[1])&(~b[0]); 
    assign d[1]=(~b[3])&(~b[2])&(~b[1])&(b[0]);
    assign d[2]=(~b[3])&(~b[2])&(b[1])&(~b[0]);
    assign d[3]=(~b[3])&(~b[2])&(b[1])&(b[0]);
    assign d[4]=(~b[3])&(b[2])&(~b[1])&(~b[0]);
    assign d[5]=(~b[3])&(b[2])&(~b[1])&(b[0]);
    assign d[6]=(~b[3])&(b[2])&(b[1])&(~b[0]);
    assign d[7]=(~b[3])&(b[2])&(b[1])&(b[0]);
    assign d[8]=(b[3])&(~b[2])&(~b[1])&(~b[0]);
    assign d[9]=(b[3])&(~b[2])&(~b[1])&(b[0]);
endmodule
