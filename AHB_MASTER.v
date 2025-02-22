`timescale 1ns / 1ps

module AHB_MASTER (
    input  wire        HCLK,      // Clock
    input  wire        HRESETn,   // Active low reset
    input  wire        HREADY,    // Slave ready signal
    input  wire [1:0]  HRESP,     // Response from slave
    input  wire [31:0] HRDATA,    // Read data from slave
    input  wire        request_write,  // Signal to start a write transaction
    input  wire        request_read,   // Signal to start a read transaction
    input  wire [31:0] write_data,     // Data to write
    input  wire [31:0] read_addr,      // Address to read from
    input  wire [31:0] write_addr,     // Address to write to
    output reg  [31:0] HADDR,     // Address bus
    output reg  [31:0] HWDATA,    // Write data
    output reg         HWRITE,    // Write enable
    output reg  [2:0]  HSIZE,     // Transfer size
    output reg  [2:0]  HBURST,    // Burst type
    output reg  [3:0]  HPROT,     // Protection control
    output reg  [1:0]  HTRANS     // Transfer type
);

    // Define states manually
    parameter IDLE   = 2'b00;
    parameter BUSY   = 2'b01;
    parameter NONSEQ = 2'b10;
    parameter SEQ    = 2'b11;

    reg [1:0] state;

    always @(posedge HCLK or negedge HRESETn) begin
        if (!HRESETn) begin
            HADDR   <= 32'd0;
            HWDATA  <= 32'd0;
            HWRITE  <= 1'b0;
            HSIZE   <= 3'b010;  // Word size (4 bytes)
            HBURST  <= 3'b000;  // Single transfer
            HPROT   <= 4'b0011; // Normal, non-secure, privileged, data access
            HTRANS  <= IDLE;
            state   <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    if (request_write) begin
                        HADDR  <= write_addr; 
                        HWDATA <= write_data;
                        HWRITE <= 1'b1;         // Write operation
                        HTRANS <= NONSEQ;       // Start transaction
                        state  <= BUSY;
                    end else if (request_read) begin
                        HADDR  <= read_addr;
                        HWRITE <= 1'b0;         // Read operation
                        HTRANS <= NONSEQ;       // Start transaction
                        state  <= BUSY;
                    end
                end
                
                BUSY: begin
                    if (HREADY) begin
                        HTRANS <= SEQ; // Continue transfer
                        state  <= IDLE;
                    end
                end
                
                default: state <= IDLE;
            endcase
        end
    end
endmodule
