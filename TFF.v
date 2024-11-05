`timescale 10ns / 1ps

module TFF(
    input clk,
    input T,
    output reg Q
    );
    initial begin
    Q = 1'b0;
    end
    always @ (posedge clk)
    begin
    Q<=(~T);
    end
endmodule
