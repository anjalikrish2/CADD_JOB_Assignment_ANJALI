`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 10:22:03 PM
// Design Name: 
// Module Name: pipepre_tb
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
module pipepre_tb;
    logic clk;
    logic rst;
    logic [31:0] a, b;
    logic [31:0] sum;
    logic carry;

    pipepre uut (
        .clk(clk),
        .rst(rst),
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial 
    begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial 
    begin
       
        rst = 0;
        a = 32'h0;
        b = 32'h0;
        #10;

       
        rst = 1;
        #10;

        a = 32'hFFFFFFFF;
        b = 32'h1; 
        #10;

       
        a = 32'h12345678; 
        b = 32'h87654321; 
        #10;

        a = 32'hA5A5A5A5; 
        b = 32'h5A5A5A5A; 
        #10;

        a = 32'h0; 
        b = 32'h0; 
        #10;

        // Test case 5
        a = 32'hFFFFFFFF; 
        b = 32'hFFFFFFFF; 
        #10;

        // Finish simulation
        $finish;
    end

  
endmodule




