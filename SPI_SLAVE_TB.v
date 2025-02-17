`timescale 1ns / 1ps


module tb_spi_slave;

reg clk;
reg rst;
reg sclk;
reg cs;
reg mosi;
wire miso;
reg [7:0] data_in;
wire [7:0] data_out;

spi_slave uut (
    .clk(clk),
    .rst(rst),
    .sclk(sclk),
    .cs(cs),
    .mosi(mosi),
    .miso(miso),
    .data_out(data_out),
    .data_in(data_in)
);

always #5 clk = ~clk; // Generate clock with 10ns period

initial begin
    // Initialize inputs
    clk = 0;
    rst = 1;
    sclk = 0;
    cs = 1;
    mosi = 0;
    data_in = 8'h5A;

    // Apply reset
    #10 rst = 0;
    #10 rst = 1;
    #10 rst = 0;
    
    // Start SPI transaction
    #10 cs = 0;

    // Generate SPI clock and send data to MOSI
    repeat (8) begin
        #20 sclk = 1; mosi = data_in[7];
        #20 sclk = 0; data_in = {data_in[6:0], data_in[7]};
    end

    // End SPI transaction
    #20 cs = 1;

    // End simulation
    #100 $finish;
end

endmodule

