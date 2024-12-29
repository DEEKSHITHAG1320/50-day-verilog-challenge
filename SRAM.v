`timescale 1ns / 1ps

module SRAM (
    input clk,we,
    input [3:0] addr,
    input [15:0] wdata,
    output reg [15:0] rdata
    );
    
    reg [15:0] sram [0:15];
    integer i;
    
    initial begin
    for(i=0; i<16; i=i+1) begin
    sram[i]=0;
    end
    rdata=0;
    end
    
    always @ (posedge clk) begin
        if(we) begin
            sram[addr] <= wdata;
        end
        else begin
            rdata <= sram[addr];
        end
    end
endmodule
