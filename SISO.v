`timescale 10ns / 1ps
module SISO(
    input data_in,
    output data_out,
    input clk
    );
    wire q0,q1,q2,q3;
    D_FF E1(.Q(q0), .D(data_in), .clk(clk));
    D_FF E2(.Q(q1), .D(q0), .clk(clk));
    D_FF E3(.Q(q2), .D(q1), .clk(clk));
    D_FF E4(.Q(q3), .D(q2), .clk(clk));
    assign data_out=q3;
    endmodule

module D_FF(
    input D,clk,
    output reg Q
    );
    always @ (posedge clk)
    begin
    Q<=D;
    end
    endmodule