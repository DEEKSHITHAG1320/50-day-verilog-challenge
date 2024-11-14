`timescale 1ns / 1ps
module SYNCHRONOUS_COUNTER(
    input clk,
    input reset,
    input u_d,
    output reg [3:0] Q
    );
    always@(posedge clk or posedge reset)
    begin
    if(reset)
    Q<=0;
    else if(u_d)
    Q<=Q+1;
    else
    Q<=Q-1;
    end
endmodule

