`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 10:21:45 PM
// Design Name: 
// Module Name: pipepre
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
module pipepre (
    input logic clk,
    input logic rst,
    input logic [31:0] a, 
    input logic [31:0] b,
    output logic [31:0] sum,
    output logic carry
);
    logic [31:0] g, p; 
    logic [31:0] c; 

   
    always_comb 
    begin
        g = a & b;
        p = a ^ b; 
    end

    always_ff @(posedge clk or negedge rst) 
    begin
        if (!rst) 
        begin
            c <= 32'b0;
        end 
        else 
        begin
            c[0] <= g[0];
            for (int i = 1; i < 32; i++) begin
                c[i] <= g[i] | (p[i] & c[i-1]); 
            end
        end
    end

    always_ff @(posedge clk or negedge rst) begin
        if (!rst) 
        begin
            sum <= 32'b0;
            carry <= 1'b0;
        end 
        else 
        begin
            sum <= p ^ c; 
            carry <= c[31]; 
        end
    end
endmodule



