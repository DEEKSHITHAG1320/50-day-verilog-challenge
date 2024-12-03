`timescale 1ns / 1ps
module VENDING_MACHINE_TB();
reg clk;
reg reset;
reg [3:0] deposited_amount;
reg [1:0] item_code;
wire dispense;
wire [3:0] balance;
VENDING_MACHINE DM (
    .clk(clk),
    .reset(reset), 
    .deposited_amount(deposited_amount), 
    .item_code(item_code), 
    .dispense(dispense), 
    .balance(balance)
    );
    initial begin
    clk=0;
    reset=1;
    deposited_amount=0;
    item_code=0;
    
    #5 reset=0;
    
    deposited_amount=4'd5;
    item_code=2'b00;
    #10;
    
    deposited_amount=4'd3;
    item_code=2'b00;
    #10;
    
    deposited_amount=4'd8;
    item_code=2'b00;
    #10;
    
    deposited_amount=4'd7;
    item_code=2'b01;
    #10;
    
    deposited_amount=4'd5;
    item_code=2'b01;
    #10;
    
    deposited_amount=4'd10;
    item_code=2'b01;
    #10;
    
    deposited_amount=4'd10;
    item_code=2'b10;
    #10;
    
    deposited_amount=4'd4;
    item_code=2'b10;
    #10;
    
    deposited_amount=4'd12;
    item_code=2'b10;
    #10;
    
    deposited_amount=4'd12;
    item_code=2'b11;
    #10;
    
    deposited_amount=4'd15;
    item_code=2'b11;
    #10;
    
    deposited_amount=4'd11;
    item_code=2'b11;
    #10;
 
    $finish;
    end
    
    always #5 clk=~clk;
    
endmodule 
