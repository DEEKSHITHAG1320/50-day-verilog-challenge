`timescale 1ns / 1ps

module EPROM_TB();
reg [3:0] addr;
reg we;
reg [15:0] write_data;
reg erase;
wire [15:0] data;
EPROM DM (.addr(addr), .we(we), .write_data(write_data), .erase(erase), .data(data));

initial begin
we=0; erase=0; write_data=16'h00; addr=4'd0;

#10 addr=4'd0;
#10 addr=4'd1;
#10 addr=4'd2;
#10 addr=4'd3;
#10 addr=4'd4;
#10 addr=4'd5;
#10 addr=4'd6;
#10 addr=4'd7;
#10 addr=4'd8;
#10 addr=4'd9;
#10 addr=4'd10;
#10 addr=4'd11;
#10 addr=4'd12;
#10 addr=4'd13;
#10 addr=4'd14;
#10 addr=4'd15;

#10 erase=1;
#10 erase=0;

#10 addr=4'd0;
#10 addr=4'd1;
#10 addr=4'd2;
#10 addr=4'd3;
#10 addr=4'd4;

#10 we=1;
addr=4'd3; write_data=8'haa;
#10 we=0;

#10 we=1;
addr=4'd4; write_data=8'hbb;
#10 we=0;

#10 we=1;
addr=4'd10; write_data=8'h22;
#10 we=0;

#10 addr=4'd2;

#10 $finish;
end
endmodule
