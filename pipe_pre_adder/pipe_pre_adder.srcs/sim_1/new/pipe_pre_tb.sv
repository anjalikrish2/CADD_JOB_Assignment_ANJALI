`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 09:52:27 PM
// Design Name: 
// Module Name: pipe_pre_tb
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
module tb_prefix_adder_32;
    logic clk;
    logic rst_n;
    logic [31:0] a, b;
    logic [31:0] sum;
    logic carry_out;

    // Instantiate the prefix adder
    prefix_adder_32 uut (
        .clk(clk),
        .rst_n(rst_n),
        .a(a),
        .b(b),
        .sum(sum),
        .carry_out(carry_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 time unit period
    end

    // Test sequence
    initial begin
        // Initialize
        rst_n = 0;
        a = 32'h0;
        b = 32'h0;
        #10;

        // Release reset
        rst_n = 1;
        #10;

        // Test case 1
        a = 32'hFFFFFFFF; // Max value
        b = 32'h1; // Add 1
        #10;

        // Test case 2
        a = 32'h12345678; 
        b = 32'h87654321; 
        #10;

        // Test case 3
        a = 32'hA5A5A5A5; 
        b = 32'h5A5A5A5A; 
        #10;

        // Test case 4
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

    // Monitor outputs
    initial begin
        $monitor("Time: %0t | a: %h | b: %h | sum: %h | carry_out: %b", 
                  $time, a, b, sum, carry_out);
    end
endmodule


