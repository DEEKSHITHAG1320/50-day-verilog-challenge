`timescale 1ns / 1ps

module REGISTER_FILE_TB();
reg clk;
reg reset;
reg regWrite;
reg [4:0] readReg1;
reg [4:0] readReg2;
reg [4:0] writeReg;
reg [31:0] writeData;
wire [31:0]readData1;
wire [31:0]readData2;
REGISTER_FILE DM (
           .clk(clk),
           .reset(reset),
           .regWrite(regWrite),
           .readReg1(readReg1),
           .readReg2(readReg2),
           .writeReg(writeReg),
           .writeData(writeData),
           .readData1(readData1),
           .readData2(readData2)
            );
            
initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
reset=1;
regWrite=0;
readReg1=0;
readReg2=0;
writeReg=0;
writeData=0;

#10 reset=0;

regWrite=1;
writeReg=5'b00001;
writeData=32'h12345678;
#10;

writeReg=5'b00010;
writeData=32'h87654321;
#10;

writeReg=5'b00011;
writeData=32'habcdefab;
#10;

writeReg=5'b00100;
writeData=32'h8765abcd;
#10;

writeReg=5'b00101;
writeData=32'ha1b2c3d4;
#10;

writeReg=5'b00110;
writeData=32'he5f67a8b;
#10;

regWrite=0;

readReg1=5'b00001;
readReg2=5'b00010;
#10;

readReg1=5'b00011;
readReg2=5'b00100;
#10;

readReg1=5'b00101;
readReg2=5'b00110;
#10;

reset=1;
#10 reset=0;
readReg1=5'b00001;
readReg2=5'b00010;
#10;
$stop;
end
endmodule
