`timescale 1ns / 1ps

module burst_mode_sram (
    input wire clk,
    input wire cs,     // Chip select
    input wire we,     // Write enable
    input wire [3:0] addr,   // Address
    input wire [3:0] burst_len, // Burst length
    input wire [7:0] data_in,   // Data input
    output reg [7:0] data_out   // Data output
);

    reg [7:0] memory [15:0]; // 16x8 memory array
    reg [3:0] burst_counter; // Burst counter
    
    initial begin
        data_out = 8'h00;
    end

    always @(posedge clk) begin
        if (cs) begin
            if (we) begin
                // Write operation with burst mode
                for (burst_counter = 0; burst_counter < burst_len; burst_counter = burst_counter + 1) begin
                    memory[addr + burst_counter] <= data_in;
                end
            end else begin
                // Read operation with burst mode
                for (burst_counter = 0; burst_counter < burst_len; burst_counter = burst_counter + 1) begin
                    data_out <= memory[addr + burst_counter];
                end
            end
        end
    end
endmodule

