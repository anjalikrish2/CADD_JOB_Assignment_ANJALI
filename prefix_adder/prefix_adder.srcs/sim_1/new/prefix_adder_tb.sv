`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 09:29:04 PM
// Design Name: 
// Module Name: prefix_adder_tb
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
module prefix_adder_tb;
    logic [31:0] a, b;
    logic cin;
    logic [31:0] sum;
    logic cout;

    prefix_adder uut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .sum(sum), 
        .cout(cout)
    );

    initial
     begin
       
        a = 32'hA5A5A5A5; b = 32'h5A5A5A5A; cin = 0;#10;
        a = 32'hFFFF0000; b = 32'h0000FFFF; cin = 1;#10;
        a = 32'hFFFFFFFF; b = 32'h00000001; cin = 0;#10;
        a = 32'h12345678; b = 32'h87654321; cin = 1;#10;
        a = 32'hDEADBEEF; b = 32'hBEEFDEAD; cin = 0;#10;
        a = 32'hFFFFFFFE; b = 32'h00000001; cin = 0;#10;
    end
endmodule



