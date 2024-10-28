`timescale 10ns / 1ps
module DEMUX_1_2(
    input i,
    input s,
    output reg [1:0] y
    );
    always @(*)begin
    if(s==0)
    begin
    y[0]=i;
    y[1]=0;
    end
   else
   begin
    y[1]=i;
    y[0]=0;
    end
    end
endmodule
