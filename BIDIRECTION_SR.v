`timescale 10ns / 1ps
module BIDIRECTION_SR(
    input clk,
    input reset,
    input shift,
    input data_in,
    output reg [3:0] data_out
    );
    always @ (posedge clk or posedge reset)
    begin
    if(reset)
    data_out<=4'b0000;
    else begin
    if(shift)
    data_out<={data_out[2:0],data_in};
    else
    data_out<={data_in,data_out[3:1]};
    end
    end
endmodule
