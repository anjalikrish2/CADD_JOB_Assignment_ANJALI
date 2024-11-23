`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 09:25:27 PM
// Design Name: 
// Module Name: prefix_adder
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
module prefix_adder (
    input logic [31:0] a, b,
    input logic cin,
    output logic [31:0] sum,
    output logic cout
);
    logic [31:0] p, g; 
    logic [31:0] c;     

    
    always_comb 
    begin
        p = a ^ b;   
        g = a & b;   
        c[0] = cin;  
        for (int i = 1; i < 32; i++) begin
            c[i] = g[i-1] | (p[i-1] & c[i-1]); 
        end
        end
    assign sum = p ^ c;
    assign cout = g[31] | (p[31] & c[31]);
 
endmodule



