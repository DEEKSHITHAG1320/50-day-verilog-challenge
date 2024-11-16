`timescale 1ns / 1ps
module MIN_SEC_COUNTER(
    input CLK,
    input RESET,
    output reg [5:0] Q
    );
    always @ (posedge CLK or posedge RESET)
    begin
    if(RESET)
    Q<=6'b000000;
    else if(Q==6'b111011)
    Q<=6'b000000;
    else
    Q<=Q+1;
    end
endmodule
