`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 11:37:57 AM
// Design Name: 
// Module Name: prienc4_tb
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
module prienc4_tb;

    // Testbench signals
    logic [3:0] in;
    logic [1:0] out;
    logic valid;

    // Instantiate the 4-input priority encoder
    prienc4 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    // Test vector generation
    initial begin
        // Monitor the signals
        $monitor("Input: %b, Output: %b, Valid: %b", in, out, valid);

        // Test cases
        in = 4'b0000; #10; // No inputs active
        in = 4'b0001; #10; // Input 0 active
        in = 4'b0010; #10; // Input 1 active
        in = 4'b0100; #10; // Input 2 active
        in = 4'b1000; #10; // Input 3 active
        in = 4'b1100; #10; // Inputs 2 and 3 active
        in = 4'b1110; #10; // Inputs 1, 2, and 3 active
        in = 4'b1111; #10; // All inputs active

        // End simulation
        $finish;
    end

endmodule
