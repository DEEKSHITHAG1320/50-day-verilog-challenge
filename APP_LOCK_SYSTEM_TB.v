`timescale 1ns / 1ps
module APP_LOCK_SYSTEM_TB();
reg [3:0] digit1,digit2,digit3,digit4;
reg [3:0] set1,set2,set3,set4;
reg clk,reset;
wire unlocked;
APP_LOCK_SYSTEM DM(.digit1(digit1), .digit2(digit2), .digit3(digit3), .digit4(digit4), .set1(set1), .set2(set2), .set3(set3), .set4(set4), .clk(clk), .reset(reset), .unlocked(unlocked));

initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin
reset=0;
digit1=4'b0000; digit2=4'b0000; digit3=4'b0000; digit4=4'b0000;
set1=4'b0101; set2=4'b0110; set3=4'b0111; set4=4'b1000;

reset=1;
#10 reset=0;
digit1=4'b0001; digit2=4'b0010; digit3=4'b0011; digit4=4'b0100;
#10 $display ("incorrect passcode: unlocked=%b(expected:0)",unlocked);

digit1=4'b0101; digit2=4'b0110; digit3=4'b0111; digit4=4'b1000;
#10 $display ("correct passcode: unlocked=%b(expected:1)",unlocked);

digit1=4'b0101; digit2=4'b0110; digit3=4'b0001; digit4=4'b0100;
#10 $display ("partial match: unlocked=%b(expected:0)",unlocked);

reset=1;
#10 reset=0;
$display ("reset: unlocked=%b(expected:0)",unlocked);
$stop;
end
endmodule
