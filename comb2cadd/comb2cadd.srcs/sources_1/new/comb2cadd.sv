`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 11:17:13 AM
// Design Name: 
// Module Name: comb2cadd
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

module comb2cadd(a,b,c,d,e,Y);
input logic a,b,c,d,e;
output Y;
assign Y=(a&b&(c|d))|((d|e)&((a&c)|((~b)&(~c))))|(((~d)&(~e))&(~(a&b&c)));
endmodule
