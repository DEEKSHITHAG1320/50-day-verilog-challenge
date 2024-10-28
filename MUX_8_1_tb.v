`timescale 10ns / 1ps
module MUX_8_1_tb();
reg [7:0] i;
reg [2:0] s;
wire y;
MUX_8_1 dut(.i(i), .s(s), .y(y));
initial begin
i=8'b00000000; s=3'b000; #10
i=8'b00000010; s=3'b001; #10
i=8'b00010001; s=3'b010; #10
i=8'b00101001; s=3'b011; #10
i=8'b00001111; s=3'b100; #10
i=8'b11111111; s=3'b101; #10
i=8'b00101011; s=3'b110; #10
i=8'b11110101; s=3'b111; 

end
endmodule
