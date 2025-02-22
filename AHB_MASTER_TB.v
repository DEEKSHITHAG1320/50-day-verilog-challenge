`timescale 1ns / 1ps
`timescale 1ns / 1ps

module AHB_MASTER_TB;

    // Clock and reset signals
    reg        HCLK;
    reg        HRESETn;

    // AHB interface signals
    reg        HREADY;
    reg  [1:0] HRESP;
    reg  [31:0] HRDATA;

    // Control signals
    reg        request_write;
    reg        request_read;
    reg  [31:0] write_data;
    reg  [31:0] read_addr;
    reg  [31:0] write_addr;

    // Outputs from AHB master
    wire [31:0] HADDR;
    wire [31:0] HWDATA;
    wire        HWRITE;
    wire [2:0]  HSIZE;
    wire [2:0]  HBURST;
    wire [3:0]  HPROT;
    wire [1:0]  HTRANS;

    // Instantiate the AHB master module
    AHB_MASTER uut (
        .HCLK(HCLK),
        .HRESETn(HRESETn),
        .HREADY(HREADY),
        .HRESP(HRESP),
        .HRDATA(HRDATA),
        .request_write(request_write),
        .request_read(request_read),
        .write_data(write_data),
        .read_addr(read_addr),
        .write_addr(write_addr),
        .HADDR(HADDR),
        .HWDATA(HWDATA),
        .HWRITE(HWRITE),
        .HSIZE(HSIZE),
        .HBURST(HBURST),
        .HPROT(HPROT),
        .HTRANS(HTRANS)
    );

    // Clock generation
    always #5 HCLK = ~HCLK;  // 10ns clock period

    // Test sequence
    initial begin
        // Initialize signals
        HCLK         = 0;
        HRESETn      = 0;
        HREADY       = 1;
        HRESP        = 2'b00;
        HRDATA       = 32'h00000000;
        request_write = 0;
        request_read  = 0;
        write_data    = 32'hA5A5A5A5;
        read_addr     = 32'h4000_0004;
        write_addr    = 32'h4000_0000;

        // Reset sequence
        #20 HRESETn = 1;
        #10;

        // Write operation
        $display("Starting Write Transaction...");
        request_write = 1;
        #10 request_write = 0;  // Deassert after one clock cycle
        #20;

        // Simulate HREADY high (slave is ready)
        HREADY = 1;
        #10;

        // Read operation
        $display("Starting Read Transaction...");
        request_read = 1;
        #10 request_read = 0;  // Deassert after one clock cycle
        #20;

        // Simulate HREADY high (slave is ready)
        HREADY = 1;
        HRDATA = 32'hDEADBEEF;  // Simulated read data
        #10;

        $display("Read Data Received: %h", HRDATA);

        // End simulation
        #50;
        $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t HADDR=%h HWDATA=%h HWRITE=%b HTRANS=%b HREADY=%b HRDATA=%h", 
                 $time, HADDR, HWDATA, HWRITE, HTRANS, HREADY, HRDATA);
    end

endmodule
