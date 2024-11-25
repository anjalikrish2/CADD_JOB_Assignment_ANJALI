`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 11:44:13 AM
// Design Name: 
// Module Name: comb3cadd
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

module comb3cadd(a,b,c,d,Y,Z);
input logic a,b,c,d;
output logic Y,Z;
assign Y=d|(a&c&(~b));
assign Z=(b&d)|(a&(~c)&d);
endmodule
