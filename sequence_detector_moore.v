`timescale 1ns / 1ps
module sequence_detector_moore(
    input clk,
    input reset,
    input x,
    output y
    );
    wire qa,qb,qc,da,db,dc;
    
    assign da=qb&qc&x;
    assign db=(qb&(~qc)&x)|((~qb)&qc&x);
    assign dc=(~x)|(qb&(~qc)&x);
    assign y=qa;
    
    DFF D1(.Q(qa), .D(da), .clk(clk), .reset(reset));
    DFF D2(.Q(qb), .D(db), .clk(clk), .reset(reset));
    DFF D3(.Q(qc), .D(dc), .clk(clk), .reset(reset));
endmodule

module DFF(
    input clk,
    input reset,
    input D,
    output reg Q
    );
    initial begin
    Q=0;
    end
    always @ (posedge clk or posedge reset)
    begin
    if(reset)
    Q<=0;
    else
    Q<=D;
    end
endmodule
