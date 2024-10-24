`timescale 10ns / 1ps
module MUX_2_1_tb();
reg [1:0] i;
reg s;
wire y;
MUX_2_1 DUT (.i(i), .s(s), .y(y));
initial begin
i=2'b00; s=0; #10
i=2'b01; s=1; #10
i=2'b10; s=0; #10
i=2'b11; s=1; #10
i=2'b00; s=1; #10
i=2'b01; s=0; #10
i=2'b10; s=1; #10
i=2'b11; s=0;
end
endmodule
