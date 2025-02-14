`timescale 1ns / 1ps

module page_mode_dram (
    input wire clk,
    input wire cs, // Chip select
    input wire we, // Write enable
    input wire [3:0] row, // Row address
    input wire [3:0] col, // Column address
    input wire [7:0] data_in, // Data input
    output reg [7:0] data_out // Data output
);

    reg [7:0] memory [15:0][15:0]; // 16x16 memory array

    always @(posedge clk) begin
        if (cs) begin
            if (we) begin
                memory[row][col] <= data_in; // Write data
            end else begin
                data_out <= memory[row][col]; // Read data
            end
        end
    end

    // Hold the previous value when `we` is high
    always @(negedge cs or posedge clk) begin
        if (!cs) begin
            data_out <= 8'h00; // Default value or previous value can be held here
        end else if (!we) begin
            data_out <= memory[row][col]; // Update data_out on read
        end
    end
endmodule


