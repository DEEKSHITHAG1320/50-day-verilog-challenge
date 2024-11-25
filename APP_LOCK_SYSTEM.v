`timescale 1ns / 1ps
module APP_LOCK_SYSTEM(
    input [3:0] digit1,digit2,digit3,digit4,
    input [3:0] set1,set2,set3,set4,
    input clk,
    input reset,
    output reg unlocked
    );
    
    always @ (posedge clk or posedge reset)
    begin
    if(reset)
    unlocked<=0;
    else if (digit1 == set1 && digit2 == set2 && digit3 == set3 &&
    digit4 == set4)
    unlocked<=1;
    else
    unlocked<=0;
    end

endmodule
