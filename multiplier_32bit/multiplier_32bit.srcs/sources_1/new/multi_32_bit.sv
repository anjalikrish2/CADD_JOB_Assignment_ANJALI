`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 08:39:51 PM
// Design Name: 
// Module Name: multi_32_bit
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
module multi_32_bit (
    input logic [31:0] A,    
    input logic [31:0] B,    
    output logic [31:0] Y    
);

    
    logic sign_A = A[31];        
    logic [7:0] exponent_A = A[30:23];  
    logic [22:0] mantissa_A = A[22:0];  
    logic sign_B = B[31];        
    logic [7:0] exponent_B = B[30:23];  
    logic [22:0] mantissa_B = B[22:0];
    logic [47:0] mantissa_product = {1'b1, mantissa_A} * {1'b1, mantissa_B};  
    logic [8:0] exponent_sum = (exponent_A + exponent_B) - 8'd127;
    logic [22:0] result_mantissa;
    logic [7:0] result_exponent;
    
    
    assign result_mantissa = (mantissa_product[47]) ? mantissa_product[46:24] : mantissa_product[45:23]; 
    assign result_exponent = (mantissa_product[47]) ? (exponent_sum + 8'd1) : exponent_sum; 
    
   
    logic result_sign = sign_A ^ sign_B;  

    
    assign Y = {result_sign, result_exponent[7:0], result_mantissa};

endmodule

