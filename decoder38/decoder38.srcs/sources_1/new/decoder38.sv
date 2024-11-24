`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 05:55:19 PM
// Design Name: 
// Module Name: decoder38
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
module decoder38(input logic [2:0] in, output logic [7:0] out);
  always_comb
    case(in)
      3'b000 : out = 8'b00000001;
      3'b001 : out = 8'b00000010;
      3'b010 : out = 8'b00000100;
      3'b011 : out = 8'b00001000;
      3'b100 : out = 8'b00010000;
      3'b101 : out = 8'b00100000;
      3'b110 : out = 8'b01000000;
      3'b111 : out = 8'b10000000;
      default: out = 8'bxxxxxxxx;
       
    endcase
endmodule