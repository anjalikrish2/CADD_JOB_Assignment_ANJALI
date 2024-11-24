`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 08:12:19 PM
// Design Name: 
// Module Name: priorityenc83_tb
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

module priorityenc83_tb;
    reg [7:0] in;
    wire [2:0] out;
    wire valid;
    priorityenc83 dut (
        .in(in),
        .out(out),
        .valid(valid)
    );
    initial begin
        in = 8'b00000000; #10; 
        in = 8'b00000001; #10; 
        in = 8'b00000010; #10; 
        in = 8'b00000100; #10; 
        in = 8'b00001000; #10; 
        in = 8'b00010000; #10; 
        in = 8'b00100000; #10; 
        in = 8'b01000000; #10; 
        in = 8'b10000000; #10; 
        in = 8'b10101010; #10; 
        $stop;
    end
endmodule
