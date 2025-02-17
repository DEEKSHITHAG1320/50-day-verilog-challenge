`timescale 1ns / 1ps

module tb_spi_master;

reg clk;
reg rst;
reg start;
reg [7:0] data_in;
wire [7:0] data_out;
wire sclk;
wire mosi;
reg miso;
wire cs;

spi_master uut (
    .clk(clk),
    .rst(rst),
    .start(start),
    .data_in(data_in),
    .data_out(data_out),
    .sclk(sclk),
    .mosi(mosi),
    .miso(miso),
    .cs(cs)
);

always #5 clk = ~clk; // Generate clock with 10ns period

initial begin
    // Initialize inputs
    clk = 0;
    rst = 1;
    start = 0;
    data_in = 8'hA5;
    miso = 0;

    // Apply reset
    #10 rst = 0;
    #10 rst = 1;
    #10 rst = 0;
    
    // Start SPI transaction
    #10 start = 1;

    // Simulate MISO data
    #20 miso = 1;
    #20 miso = 0;
    #20 miso = 1;
    #20 miso = 0;
    #20 miso = 1;
    #20 miso = 0;
    #20 miso = 1;
    #20 miso = 0;

    // End simulation
    #100 $finish;
end

endmodule

