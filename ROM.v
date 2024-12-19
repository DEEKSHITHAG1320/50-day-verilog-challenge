`timescale 1ns / 1ps

module ROM(
    input [3:0] address,
    output reg [15:0] data
    );
    reg [15:0] rom [15:0];
    
    initial begin
    rom[0] = 16'd1;
    rom[1] = 16'd2;
    rom[2] = 16'd3;
    rom[3] = 16'd4;
    rom[4] = 16'd5;
    rom[5] = 16'd6;
    rom[6] = 16'd7;
    rom[7] = 16'd8;
    rom[8] = 16'd9;
    rom[9] = 16'd10;
    rom[10] = 16'd11;
    rom[11] = 16'd12;
    rom[12] = 16'd13;
    rom[13] = 16'd14;
    rom[14] = 16'd15;
    rom[15] = 16'd16;
    end
    
    always @(*) begin
    data = rom[address];
    end
endmodule
