`timescale 1ns / 1ps
module MEALY_FSM(
    input clk,
    input x,
    output y
    );
    wire w1,w2,w3,da,db,a,b;
    
    assign w1=(~x);
    assign da=(w1&b);
    assign db=(x&(~a));
    assign w2=(w1&b);
    assign w3=(a&x);
    assign y=(w2|w3);
    
    DFF D1(.q(a), .d(da), .clk(clk));
    DFF D2(.q(b), .d(db), .clk(clk));
endmodule

module DFF(
    input clk,
    input d,
    output reg q
    );initial q<=0;
    always @ (posedge clk)
    begin
    q<=d;
    end
endmodule