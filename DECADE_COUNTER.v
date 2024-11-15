`timescale 1ns / 1ps
module DECADE_COUNTER(
    input CLK,
    input RESET,
    output reg [3:0] Q
    );
    always @(posedge CLK or posedge RESET)
    begin
    if (RESET)
    Q<=4'b0000;
    else if (Q==4'b1001)
    Q<=4'b0000;
    else
    Q<=Q+1;
    end
endmodule