`timescale 1ns / 1ps

module ROM(
    input [3:0] address,
    output reg [7:0] data
    );
    reg [7:0] rom [15:0];
    
    initial begin
    rom[0] = 8'h01;
    rom[1] = 8'h02;
    rom[2] = 8'h03;
    rom[3] = 8'h04;
    rom[4] = 8'h05;
    rom[5] = 8'h06;
    rom[6] = 8'h07;
    rom[7] = 8'h08;
    rom[8] = 8'h09;
    rom[9] = 8'h0a;
    rom[10] = 8'h0b;
    rom[11] = 8'h0c;
    rom[12] = 8'h0d;
    rom[13] = 8'h0e;
    rom[14] = 8'h0f;
    rom[15] = 8'h10;
    end
    
    always @(*) begin
    data = rom[address];
    end
endmodule
