`timescale 1ns / 1ps
module HEXADECIMAL_COUNTER(
    input CLK,
    input RESET,
    output reg [2:0] Q
    );
    always @(posedge CLK or posedge RESET)
    begin
    if (RESET)
    Q<=3'b000;
    else if(Q==3'b101)
    Q<=3'b000;
    else 
    Q<=Q+1;
    end
endmodule
