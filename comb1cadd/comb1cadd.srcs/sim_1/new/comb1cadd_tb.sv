`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 11:06:42 AM
// Design Name: 
// Module Name: comb1cadd_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module comb1cadd_tb();
reg a,b,c,d;
wire Y;
comb1cadd dut(a,b,c,d,Y);
  
initial
begin
        a=1'b0; b=1'b0; c=1'b0; d=1'b0;
    #10 a=1'b0; b=1'b0; c=1'b0; d=1'b1;
    #10 a=1'b0; b=1'b0; c=1'b1; d=1'b0;
    #10 a=1'b0; b=1'b0; c=1'b1; d=1'b1;
    #10 a=1'b0; b=1'b1; c=1'b0; d=1'b0;
    #10 a=1'b0; b=1'b1; c=1'b0; d=1'b1;
    #10 a=1'b0; b=1'b1; c=1'b1; d=1'b0;
    #10 a=1'b0; b=1'b1; c=1'b1; d=1'b1;
    #10 a=1'b1; b=1'b0; c=1'b0; d=1'b0;
    #10 a=1'b1; b=1'b0; c=1'b0; d=1'b1;
    #10 a=1'b1; b=1'b0; c=1'b1; d=1'b0;
    #10 a=1'b1; b=1'b0; c=1'b1; d=1'b1;
    #10 a=1'b1; b=1'b1; c=1'b0; d=1'b0;
    #10 a=1'b1; b=1'b1; c=1'b0; d=1'b1;
    #10 a=1'b1; b=1'b1; c=1'b1; d=1'b0;
    #10 a=1'b1; b=1'b1; c=1'b1; d=1'b1;
    #10 
    $stop;
end
endmodule
