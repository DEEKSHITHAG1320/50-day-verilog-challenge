`timescale 10ns / 1ps
module PIPO(
    input [3:0] P_I,
    output [3:0] P_O,
    input clk
    );
    wire q3,q2,q1,q0;
    assign P_O={q3,q2,q1,q0};
    D_FF D1 (.Q(q3), .D(P_I[3]), .clk(clk));
    D_FF D2 (.Q(q2), .D(P_I[2]), .clk(clk));
    D_FF D3 (.Q(q1), .D(P_I[1]), .clk(clk));
    D_FF D4 (.Q(q0), .D(P_I[0]), .clk(clk));
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