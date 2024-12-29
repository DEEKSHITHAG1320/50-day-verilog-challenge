`timescale 1ns / 1ps

module SRAM_TB();
reg clk;
reg we;
reg [3:0] addr;
reg [15:0] wdata;
wire [15:0] rdata;
SRAM DM (
    .clk(clk),
    .we(we),
    .addr(addr),
    .wdata(wdata),
    .rdata(rdata)
    );
            
initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
we=0;
addr=0;
wdata=0;

#10;
we=1; addr=4'd0; wdata=16'haaaa;

#10;
we=1; addr=4'd2; wdata=16'h5678;

#10;
we=1; addr=4'd4; wdata=16'hb4b3;

#10;
we=1; addr=4'd6; wdata=16'hcccc;

#10;
we=0; addr=4'd0;
#10;
we=0;addr=4'd2;
#10;
we=0;addr=4'd4;
#10;
we=0;addr=4'd6;
#10;
we=0;addr=4'd1;
#10;
we=0;addr=4'd5;

#20;
$stop;

end
endmodule
