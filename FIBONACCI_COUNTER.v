`timescale 1ns / 1ps
module FIBONACCI_COUNTER(
    input CLK,
    input RESET,
    output [31:0] F
    );
    reg [31:0] F1,F2;
    
    always @(posedge CLK or negedge RESET)
    begin
    if(~RESET) begin
    F1<=0;
    F2<=1;
    end
    else begin
   F1<=F2;
   F2<=F;
    end
    end
    assign F=F1+F2;
endmodule
