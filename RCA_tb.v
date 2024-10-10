`timescale 10ns / 1ps

module RCA_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]s;
wire cout;
RCA uut (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

initial begin
a=4'b0000; b=4'b0000 ;cin=1'b0;
#10 a=4'b1000; b=4'b1010; cin=1'b1;
#10 a=4'b1010; b=4'b0001; cin=1'b0;
#10 a=4'b1111; b=4'b1111; cin=1'b1;
end
endmodule
