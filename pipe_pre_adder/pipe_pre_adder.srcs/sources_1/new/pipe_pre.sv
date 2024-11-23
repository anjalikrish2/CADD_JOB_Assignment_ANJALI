`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 09:52:08 PM
// Design Name: 
// Module Name: pipe_pre
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

module pipe_pre (
    input logic clk,
    input logic rst_n,
    input logic [31:0] a, 
    input logic [31:0] b,
    output logic [31:0] sum,
    output logic carry_out
);
    logic [31:0] g, p; // Generate and Propagate
    logic [31:0] c; // Carry bits

    // Generate and Propagate
    always_comb begin
        g = a & b; // Generate
        p = a ^ b; // Propagate
    end

    // Pipelined carry calculation
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            c <= 32'b0;
        end else begin
            c[0] <= g[0]; // First carry
            for (int i = 1; i < 32; i++) begin
                c[i] <= g[i] | (p[i] & c[i-1]); // Carry calculation
            end
        end
    end

    // Sum Calculation
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            sum <= 32'b0;
            carry_out <= 1'b0;
        end else begin
            sum <= p ^ c; // Sum calculation
            carry_out <= c[31]; // Final carry out
        end
    end
endmodule
