`timescale 10ns / 1ps

module FA_tb();
reg a,b,c;
wire s,cout;
FA uut(.a(a), .b(b),.c(c), .s(s), .cout(cout));

initial begin 
a=1'b0; b=1'b0; c=1'b0;
#10 a=1'b0; b=1'b0; c=1'b1;
#10 a=1'b0; b=1'b1; c=1'b0;
#10 a=1'b0; b=1'b1; c=1'b1;
#10 a=1'b1; b=1'b0; c=1'b0;
#10 a=1'b1; b=1'b0; c=1'b1;
#10 a=1'b1; b=1'b1; c=1'b0;
#10 a=1'b1; b=1'b1; c=1'b1;
end

endmodule
