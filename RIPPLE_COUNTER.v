`timescale 1ns / 1ps
module RIPPLE_COUNTER(
    input [3:0] T,
    input [3:0] CLK,
    input reset,
    input U_D,
    output [3:0] Q
    );
    TFF E1 (.q(Q[0]), .t(T[0]), .clk(CLK), .reset(reset));
    TFF E2 (.q(Q[1]), .t(T[1]), .clk(U_D ? Q[0] : ~Q[0]), .reset(reset));
    TFF E3 (.q(Q[2]), .t(T[2]), .clk(U_D ? Q[1] : ~Q[1]), .reset(reset));
    TFF E4 (.q(Q[3]), .t(T[3]), .clk(U_D ? Q[2] : ~Q[2]), .reset(reset));
endmodule

module TFF(
    input t,
    input clk,
    input reset,
    output reg q
    );
    initial begin
    q<=1'b0;
    end
    always @ (posedge clk or posedge reset)
    begin
    if(reset)
    q<=0;
    else if(t)
    q<=~q;
    end
endmodule
