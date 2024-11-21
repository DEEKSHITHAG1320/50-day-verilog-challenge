`timescale 1ns / 1ps
module sequence_detector_mealy(
    input clk,
    input reset,
    input x,
    output y
    );
    
    wire qa,qb,da,db;
    
    assign da=(qa&(~qb))|(qb&x&(~qa));
    assign db=(qa&(~x))|((~qa)&(~qb)&x);
    assign y=(qa&(~qb)&(~x));
    
    DFF D1(.Q(qa), .D(da), .clk(clk), .reset(reset)); 
    DFF D2(.Q(qb), .D(db), .clk(clk), .reset(reset));
   
endmodule

module DFF(
    input clk,
    input reset,
    input D,
    output reg Q
    );
    always @ (posedge clk or posedge reset)
    begin
    if(reset)
    Q<=0;
    else
    Q<=D;
    end
endmodule