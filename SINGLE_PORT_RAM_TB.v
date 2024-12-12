`timescale 1ns / 1ps

module SINGLE_PORT_RAM_TB();
parameter data_width=8;
parameter addr_width=4;
reg clk;
reg we;
reg [addr_width-1:0] addr;
reg [data_width-1:0] data_in;
wire [data_width-1:0] data_out;
SINGLE_PORT_RAM #(
            .data_width(data_width),
            .addr_width(addr_width)
            ) DM (
            .clk(clk),
            .we(we),
            .addr(addr),
            .data_in(data_in),
            .data_out(data_out)
            );
            
initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
we=0;
addr=0;
data_in=0;

#10;
we=1; addr=4'd0; data_in=8'ha5;

#10;
we=1; addr=4'd1; data_in=8'h56;

#10;
we=1; addr=4'd2; data_in=8'hb4;

#10;
we=0; addr=4'd0;
#10;
we=0;addr=4'd1;
#10;
we=0;addr=4'd2;

#20;
$stop;

end
endmodule
