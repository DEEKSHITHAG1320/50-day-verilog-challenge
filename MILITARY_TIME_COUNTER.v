`timescale 1ns / 1ps
module MILITARY_TIME_COUNTER(
    input CLK,
    input RESET,
    output reg [4:0] Q
    );
    always @(posedge CLK or posedge RESET)
    begin
    if (RESET)
    Q<=5'b00000;
    else if (Q==5'b10111)
    Q<=5'b00000;
    else
    Q<=Q+1; 
    end
endmodule
