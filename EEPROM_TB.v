`timescale 1ns / 1ps

module EEPROM_TB();
reg [3:0] addr;
reg we;
reg erase_enable;
reg [15:0] write_data;
wire [15:0] data;
EEPROM DM (.addr(addr),
           .we(we),
           .erase_enable(erase_enable),
           .write_data(write_data),
           .data(data)); 

initial begin
we=0; erase_enable=0; write_data=8'h00; addr=4'd0;

#10 addr = 4'd0;
#10 addr = 4'd1;
#10 addr = 4'd2;
#10 addr = 4'd3;
#10 addr = 4'd4;
#10 addr = 4'd5;
#10 addr = 4'd6;


#10 erase_enable=1; addr=4'd1;
#10 erase_enable=0;
#10 erase_enable=1; addr=4'd3;
#10 erase_enable=0;
#10 erase_enable=1; addr=4'd5;
#10 erase_enable=0;

#10 addr=4'd1;
#10 addr=4'd3;
#10 addr=4'd5;

#10 we=1; addr=4'd2; write_data=16'haa;
#10 we=0;
#10 we=1; addr=4'd4; write_data=16'hbb;
#10 we=0;
#10 we=1; addr=4'd8; write_data=16'hcc;
#10 we=0;
#10 we=1; addr=4'd15; write_data=16'hdd;
#10 we=0;

#10 addr=4'd2;
#10 addr=4'd4;
#10 addr=4'd8;
#10 addr=4'd15;

#10 addr = 4'd12;
#10 addr = 4'd13;
#10 addr = 4'd14;
#10 addr = 4'd15;

#10 $finish;
end    
endmodule
