`timescale 1ns / 1ps

module EPROM(
    input [3:0] addr,
    input we,
    input [15:0] write_data,
    input erase,
    output reg [15:0] data
    );
    reg [15:0] eprom [0:15];
    integer i;
    
    initial begin
    eprom[0] = 16'h01;
    eprom[1] = 16'h02;
    eprom[2] = 16'h03;
    eprom[3] = 16'h04;
    eprom[4] = 16'h05;
    eprom[5] = 16'h06;
    eprom[6] = 16'h07;
    eprom[7] = 16'h08;
    eprom[8] = 16'h09;
    eprom[9] = 16'h0a;
    eprom[10] = 16'h0b;
    eprom[11] = 16'h0c;
    eprom[12] = 16'h0d;
    eprom[13] = 16'h0e;
    eprom[14] = 16'h0f;
    eprom[15] = 16'h10;
    end
    
    always @(*) begin
    if(erase) begin
    for(i=0; i<16; i=i+1) begin
    eprom[i] = 8'h00;
    end
    end
    else if (we) begin
    eprom[addr]=write_data;
    end
    else begin
    data=eprom[addr];
    end
    end
endmodule
