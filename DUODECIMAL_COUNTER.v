`timescale 10ns / 1ps
module DUODECIMAL_COUNTER(
    input CLK,
    input RESET,
    output reg [3:0] Q
    );
    always @ (posedge CLK or posedge RESET)
    begin
    if(RESET)
    Q<=4'b0000;
    else if (Q==4'b1100)
    Q<=4'b0000;
    else
    Q<=Q+1;
    end
endmodule
