`timescale 10ns / 1ps
module PRIORITY_ENCODER_8_3(
    input [7:0] x,
    output reg [2:0] y
    );
    always@(*)
    begin
    if(x[7]==1)
    y=3'b111;
    else if(x[6]==1)
    y=3'b110;
    else if(x[5]==1)
    y=3'b101;
    else if(x[4]==1)
    y=3'b100;
    else if(x[3]==1)
    y=3'b011;
    else if(x[2]==1)
    y=3'b010;
    else if(x[1]==1)
    y=3'b001;
    else if(x[0]==1)
    y=3'b000;
    else
    y=3'bxxx;
    end
endmodule
