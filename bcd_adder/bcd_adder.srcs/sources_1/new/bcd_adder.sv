`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 08:03:48 PM
// Design Name: 
// Module Name: bcd_adder
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


module bcd_adder (input  logic [7:0] A,input  logic [7:0] B,input  logic Cin,        
    output logic [7:0] S,    
    output logic Cout        
);

    logic [3:0] lower_sum, upper_sum;  
    logic lower_carry, upper_carry;   

    
    bcd_adder_4bit lower (.A(A[3:0]), .B(B[3:0]),.Cin(Cin),.S(lower_sum),.Cout(lower_carry)
    );

    
    bcd_adder_4bit upper (.A(A[7:4]),.B(B[7:4]),.Cin(lower_carry),.S(upper_sum),.Cout(upper_carry)
    );

    
    assign S = {upper_sum, lower_sum};
    assign Cout = upper_carry;
endmodule
module bcd_adder_4bit (input  logic [3:0] A,input  logic [3:0] B,input  logic Cin,output logic [3:0] S,output logic Cout        
);

    logic [4:0] binary_sum;  
    logic [4:0] new_sum; 
    logic flag;
    assign binary_sum = A + B + Cin;
    assign flag = (binary_sum > 9);
    assign adjusted_sum = flag ? (binary_sum + 5'b00110) : binary_sum;
    assign S = new_sum[3:0];
    assign Cout = flag || new_sum[4];
endmodule
