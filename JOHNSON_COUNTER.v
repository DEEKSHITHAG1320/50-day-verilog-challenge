`timescale 1ns / 1ps
module JOHNSON_COUNTER(
    input CLK,
    input RESET,
    output [3:0] Q
    );
    wire w1;
    assign w1=(~Q[0]);
    DFF D1 (.q(Q[3]), .D(w1), .clk(CLK), .reset(RESET));
    DFF D2 (.q(Q[2]), .D(Q[3]), .clk(CLK), .reset(RESET));
    DFF D3 (.q(Q[1]), .D(Q[2]), .clk(CLK), .reset(RESET));
    DFF D4 (.q(Q[0]), .D(Q[1]), .clk(CLK), .reset(RESET));
endmodule

module DFF(
    input clk,
    input reset,
    input D,
    output reg q
    );
    always @ (posedge clk or posedge reset)
    begin
    if(reset)
    q<=1'b0;
    else
    q<=D;
    end
endmodule