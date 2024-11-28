`timescale 1ns / 1ps
module TRAFFIC_CONTROLLER(
    input clk,
    input rst,
    output reg [2:0] east,south,west,north
    );
     
reg [2:0] count;
reg [2:0] state;

parameter east_green=3'b000;
parameter east_yellow=3'b001;
parameter south_green=3'b010;
parameter south_yellow=3'b011;
parameter west_green=3'b100;
parameter west_yellow=3'b101;
parameter north_green=3'b110;
parameter north_yellow=3'b111;
parameter green=3'd1;
parameter yellow=3'd2;
parameter red=3'd3;

always@(posedge(clk)) begin
if(rst==1) begin
    count<=0;
    state<=east_green;
end
else case(state) 
east_green:  begin      
if (count==3'd7) begin
    count<=0;
    state<=east_yellow; 
end else begin
    count<=count+1;
    state<=east_green;  
end
end
east_yellow: begin
if(count==3'd4) begin
    count<=0;
    state<=south_green; 
end else begin
    count<=count+1;
    state<=east_yellow;
end
end
south_green: begin
if (count==3'd7) begin
    count<=0;
    state<=south_yellow; 
end else begin
    count<=count+1;
    state<=south_green;
end
end
south_yellow: begin
if(count==3'd4) begin
    count<=0;
    state<=west_green; 
end else begin
    count<=count+1;
    state<=south_yellow;
end
end  
west_green: begin
if(count==3'd7) begin
    count<=0;
    state<=west_yellow;  
end else begin
    count<=count+1;
    state<=west_green;
end
end
west_yellow: begin
if (count==3'd4) begin
    count<=0;
    state<=north_green; 
end else begin
    count<=count+1;
    state<=west_yellow;
end
end
north_green: begin
if (count==3'd7) begin
    count<=0;
    state<=north_yellow; 
end else begin
    count<=count+1;
    state<=north_green;
end
end
north_yellow: begin
if(count==3'd4) begin
    count<=0;
    state<=east_green;
end else begin
    count<=count+1;
    state<=north_yellow;
end
end
endcase
end

always@(state) begin
case(state)
east_green: begin
east=green;
south=red;
west=red;
north=red;
end
east_yellow: begin
east=yellow;
south=yellow;
west=red;
north=red;
end
south_green: begin
east=red;
south=green;
west=red;
north=red;
end
south_yellow: begin
east=red;
south=yellow;
west=yellow;
north=red;
end
west_green: begin
east=red;
south=red;
west=green;
north=red;
end
west_yellow: begin
east=red;
south=red;
west=yellow;
north=yellow;
end
north_green: begin
east=red;
south=red;
west=red;
north=green;
end
north_yellow: begin
east=yellow;
south=red;
west=red;
north=yellow;
end
endcase
end
endmodule
