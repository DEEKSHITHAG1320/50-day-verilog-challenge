`timescale 10ns / 1ps
module JK_FF(
    input J,
    input K,
    output reg Q,
    input clk
    );
    initial begin
    Q=1'b0;
    end
    always @ (posedge clk)
    begin
    if(J==1'b0 && K==1'b0)
    Q<=Q;
    else if (J==1'b0 && K==1'b1)
    Q<=1'b0;
    else if (J==1'b1 && K==1'b0)
    Q<=1'b1;
    else
    Q<=~Q;
    end
endmodule
