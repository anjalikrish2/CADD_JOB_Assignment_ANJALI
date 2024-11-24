`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 11:48:23 AM
// Design Name: 
// Module Name: cpa4
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
module cpa4 (
    input logic [3:0] A,     
    input logic [3:0] B,     
    output logic [3:0] Sum    
);

    logic [3:0] carry; 

    assign {carry[0], Sum[0]} = A[0] + B[0];
    assign {carry[1], Sum[1]} = A[1] + B[1] + carry[0];
    assign {carry[2], Sum[2]} = A[2] + B[2] + carry[1];
    assign {carry[3], Sum[3]} = A[3] + B[3] + carry[2];

endmodule
