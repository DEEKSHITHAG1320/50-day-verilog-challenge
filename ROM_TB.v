`timescale 1ns / 1ps

module ROM_TB();
reg [3:0] address;
wire [15:0] data;
ROM DM(.address(address), .data(data));

initial begin
address = 4'd0; #10;
address = 4'd1; #10;
address = 4'd2; #10;
address = 4'd3; #10;
address = 4'd4; #10;
address = 4'd5; #10;
address = 4'd6; #10;
address = 4'd7; #10;
address = 4'd8; #10;
address = 4'd9; #10;
address = 4'd10; #10;
address = 4'd11; #10;
address = 4'd12; #10;
address = 4'd13; #10;
address = 4'd14; #10;
address = 4'd15; #10;
$finish;
end
endmodule
