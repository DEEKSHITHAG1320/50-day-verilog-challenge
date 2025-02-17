`timescale 1ns / 1ps

module tb_i2c_slave;
    reg clk;
    reg rst;
    reg scl;
    wire sda;
    reg [6:0] slave_addr;
    reg [7:0] data_in;
    wire [7:0] data_out;
    reg sda_tb;
    reg sda_dir;

    // Instantiate the I2C Slave module
    i2c_slave uut (
        .clk(clk),
        .rst(rst),
        .scl(scl),
        .sda(sda),
        .data_out(data_out),
        .data_in(data_in),
        .slave_addr(slave_addr)
    );

    // Clock Generation
    always #5 clk = ~clk;

    // SDA tri-state control in testbench
    assign sda = sda_dir ? sda_tb : 1'bz;

    initial begin
        // Initialize Signals
        clk = 0;
        rst = 1;
        scl = 1;
        sda_tb = 1;
        sda_dir = 0;
        slave_addr = 7'b1010101;  // Example slave address
        data_in = 8'b11001100;    // Example data to send
        
        // Reset the device
        #20 rst = 0;
        
        // Start condition
        #20 sda_tb = 0; scl = 1;
        
        // Address Transfer
        #40 scl = 0; sda_tb = slave_addr[6]; sda_dir = 1; // Address bit 6
        #40 scl = 1;
        #40 scl = 0; sda_tb = slave_addr[5]; // Address bit 5
        #40 scl = 1;
        #40 scl = 0; sda_tb = slave_addr[4]; // Address bit 4
        #40 scl = 1;
        #40 scl = 0; sda_tb = slave_addr[3]; // Address bit 3
        #40 scl = 1;
        #40 scl = 0; sda_tb = slave_addr[2]; // Address bit 2
        #40 scl = 1;
        #40 scl = 0; sda_tb = slave_addr[1]; // Address bit 1
        #40 scl = 1;
        #40 scl = 0; sda_tb = slave_addr[0]; // Address bit 0 (Write)
        #40 scl = 1;
        #40 scl = 0; sda_tb = 0; // Read/Write bit
        #40 scl = 1;

        // Data Transfer
        #40 scl = 0; sda_tb = data_in[7]; // Data bit 7
        #40 scl = 1;
        #40 scl = 0; sda_tb = data_in[6]; // Data bit 6
        #40 scl = 1;
        #40 scl = 0; sda_tb = data_in[5]; // Data bit 5
        #40 scl = 1;
        #40 scl = 0; sda_tb = data_in[4]; // Data bit 4
        #40 scl = 1;
        #40 scl = 0; sda_tb = data_in[3]; // Data bit 3
        #40 scl = 1;
        #40 scl = 0; sda_tb = data_in[2]; // Data bit 2
        #40 scl = 1;
        #40 scl = 0; sda_tb = data_in[1]; // Data bit 1
        #40 scl = 1;
        #40 scl = 0; sda_tb = data_in[0]; // Data bit 0
        #40 scl = 1;

        // Stop condition
        #40 scl = 1; sda_tb = 1; sda_dir = 0;

        // Wait and observe
        #200;

        $stop;
    end
endmodule



