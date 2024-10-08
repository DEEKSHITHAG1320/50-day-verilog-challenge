`timescale 10ns / 1ps

module FS_tb();
reg x,y,z;
wire b,d;
FS uut(.x(x), .y(y), .z(z), .d(d), .b(b));

initial begin
x=1'b0; y=1'b0; z=1'b0;
#10 x=1'b0; y=1'b0; z=1'b1;
#10 x=1'b0; y=1'b1; z=1'b0;
#10 x=1'b0; y=1'b1; z=1'b1;
#10 x=1'b1; y=1'b0; z=1'b0;
#10 x=1'b1; y=1'b0; z=1'b1;
#10 x=1'b1; y=1'b1; z=1'b0;
#10 x=1'b1; y=1'b1; z=1'b1;
end

endmodule
