`timescale 10ns / 1ps
module PISO(
    input [3:0] A,
    input clk,
    input S,
    output data_out
    );
    wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
    wire q3,q2,q1,q0;
    not g1 (w1,S);
    and g2 (w2,S,q3);
    and g3 (w3,A[2],w1);
    or g4 (w4,w2,w3);
    and g5 (w5,q2,S);
    and g6 (w6,A[1],w1);
    or g7 (w7,w5,w6);
    and g8 (w8,q1,S);
    and g9 (w9,A[0],w1);
    or g10 (w10,w8,w9);
    D_FF D1(.Q(q3), .D(A[3]), .clk(clk));
    D_FF D2(.Q(q2), .D(w4), .clk(clk));
    D_FF D3(.Q(q1), .D(w7), .clk(clk));
    D_FF D4(.Q(q0), .D(w10), .clk(clk));
    assign data_out=q0;
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