`timescale 1ns / 1ps

module REGISTER_FILE(
    input clk,
    input reset,
    input regWrite,
    input [4:0] readReg1,
    input [4:0] readReg2,
    input [4:0] writeReg,
    input [31:0] writeData,
    output [31:0] readData1,
    output [31:0] readData2
    );
    
    reg [31:0] registers [31:0];
    integer i;
    
    assign readData1 = registers[readReg1];
    assign readData2 = registers[readReg2];
    
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
         for (i=0; i < 32; i=i+1) begin
          registers[i] <= 32'b0;
         end
        end else if(regWrite) 
    begin
    if(writeReg != 5'b0)
    registers[writeReg] <= writeData;
    end
    end
endmodule
