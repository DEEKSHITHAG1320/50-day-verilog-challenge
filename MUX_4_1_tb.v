`timescale 10ns / 1ps
module MUX_4_1_tb();
reg [3:0] i;
reg [1:0] s;
wire y;
MUX_4_1 DUT (.i(i), .s(s), .y(y));
initial begin
i=4'b0000; s=2'b00; #10
i=4'b0011; s=2'b01; #10
i=4'b0010; s=2'b10; #10
i=4'b0111; s=2'b11; #10
i=4'b0100; s=2'b00; #10
i=4'b0101; s=2'b01; #10
i=4'b0110; s=2'b10; #10
i=4'b0111; s=2'b11; #10
i=4'b1000; s=2'b11;
end
endmodule
