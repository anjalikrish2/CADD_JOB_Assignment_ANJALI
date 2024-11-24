`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 11:48:50 AM
// Design Name: 
// Module Name: cpa4_tb
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

module cpa4_tb;

    logic [3:0] A;       
    logic [3:0] B;      
    logic [3:0] Sum;     

    cpa4 uut (
        .A(A),
        .B(B),
        .Sum(Sum)
    );

    initial
     begin
        
        A = 4'b0000; B = 4'b0000; #10; 
        A = 4'b0001; B = 4'b0001; #10; 
        A = 4'b0010; B = 4'b0011; #10; 
        A = 4'b0110; B = 4'b0101; #10; 
        A = 4'b1000; B = 4'b1000; #10; 
        A = 4'b1111; B = 4'b0001; #10; 
        A = 4'b1010; B = 4'b0101; #10; 
        A = 4'b1100; B = 4'b0011; #10; 

        $finish;
    end

endmodule
