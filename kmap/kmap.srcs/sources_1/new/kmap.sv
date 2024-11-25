`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 11:40:12 AM
// Design Name: 
// Module Name: kmap
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

module kmap(a,x,y);
input logic[3:0] a;
output logic x,y;
assign x=((~a[3])&(~a[2])&a[1])|((~a[3])&a[2]&a[0])|(a[2]&(~a[1])&a[0])|(a[3]&(~a[2])&a[1]&a[0]);
assign y=((~a[3])&(~a[2])&(~a[1])&(~a[0]))|((~a[3])&(~a[2])&a[1]&a[0])|((~a[3])&a[2]&a[1]&(~a[0]))|(a[3]&a[2]&(~a[1])&(~a[0]))|(a[3]&a[2]&a[1]&a[0])|(a[3]&(~a[2])&(~a[1])&a[0]);
endmodule
