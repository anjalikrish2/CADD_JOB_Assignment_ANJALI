`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 11:05:49 AM
// Design Name: 
// Module Name: comb1cadd
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

module comb1cadd(a,b,c,d,Y);
input logic a,b,c,d;
output logic Y;
assign Y=(~a)|(a&(~b)&(~c))|((~b)&c&(~d))|(a&b&d)|(b&(~c)&d);
endmodule
