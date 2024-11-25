`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 08:48:19 PM
// Design Name: 
// Module Name: mult_32_bit_tb
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

`timescale 1ns/1ps

module multi_32_bit_tb;

    logic [31:0] A, B;    
    logic [31:0] Y;  

   
    multi_32_bit dut (.A(A),.B(B),.Y(Y)
    );

   
    initial 
    begin
       
       

        A = 32'h3F800000;  
        B = 32'h40000000;  
        #10; 
        A = 32'h40400000;  
        B = 32'h40800000; 
        #10; 
        A = 32'h3F000000;  
        B = 32'h3F000000;  
        #10;
        A = 32'h41200000;  
        B = 32'h40000000;  
        #10; 
        A = 32'h40A00000;  
        B = 32'h40C00000;  
        #10;  
        $stop;
    end

endmodule

