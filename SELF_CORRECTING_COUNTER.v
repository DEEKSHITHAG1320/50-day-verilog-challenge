`timescale 1ns / 1ps
module SELF_CORRECTING_COUNTER(
    input CLK,
    input RESET,
    output reg [3:0] Q
    );
    always @ (posedge CLK or posedge RESET)
    begin
    if (RESET)begin
    Q<=4'b0000;
    end
    else begin
    if(Q<4'b1111)
    begin
    Q<=Q+1;
    end
    else 
    Q<=4'b0000;
    end
    end
endmodule
