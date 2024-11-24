`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 12:01:20 PM
// Design Name: 
// Module Name: fsm_tb
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

module fsm_tb;

    logic A;                
    logic B;                
    logic rst;            
    logic clk;            
    logic Q;                

   
    fsm uut (
        .A(A),
        .B(B),
        .rst(rst),
        .clk(clk),
        .Q(Q)
    );

    initial 
    begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
       

        rst = 1; A = 0; B = 0; #10; 
        rst = 0; #10;               
        A = 1; #10;                  
        A = 0; #10;                  
        B = 1; #10;                   
        B = 0; #10;                  
        rst = 1; #10;               
        rst = 0; #10;               
        A = 1; #10;                  
        B = 1; #10;                   
        B = 0; #10;              
        rst = 1; #10;           
        rst = 0; #10;            
        A = 1; #10;               
        A = 1; #10;                   
        B = 1; #10;                 

        
        $finish;
    end

endmodule
