`timescale 1ns / 1ps
module SEQUENCE_GENERATOR(
    input clk,
    input reset,
    output reg [3:0] seq_out
    );
    reg [1:0] current_state, next_state;
    
    parameter s0=2'b00,
              s1=2'b01,
              s2=2'b10,
              s3=2'b11;
              
    always @ (posedge clk or posedge reset)
    begin
    if(reset)
    current_state <= s0;
    else
    current_state <= next_state;
    end
    
    always @ (*) begin
    case(current_state)
    s0: next_state=s1;
    s1: next_state=s2;
    s2: next_state=s3;
    s3: next_state=s0;
    default: next_state=s0;
    endcase 
    end
    
    always @(*) begin
    case(current_state)
    s0: seq_out=4'b0011;
    s1: seq_out=4'b0110;
    s2: seq_out=4'b0001;
    s3: seq_out=4'b0100;
    default: seq_out=4'b0000;
    endcase
    end
endmodule
