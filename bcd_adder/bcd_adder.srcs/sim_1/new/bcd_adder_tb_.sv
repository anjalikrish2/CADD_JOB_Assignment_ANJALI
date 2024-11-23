`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/23/2024 08:16:13 PM
// Design Name: 
// Module Name: bcd_adder_tb_
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

module bcd_adder_tb();
    reg [7:0] A; 
    reg [7:0] B;
    reg Cin;              
    wire [7:0] S;          
    wire Cout;             

    
    bcd_adder dut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .S(S),
        .Cout(Cout)
    );

    
    initial begin
       
        $display("Time\tA\tB\tCin\tS\tCout");
        $monitor("%0t\t%d\t%d\t%b\t%d\t%b", $time, A, B, Cin, S, Cout);

        
        A = 8'd12; B = 8'd34; Cin = 0; #10; 
        A = 8'd49; B = 8'd53; Cin = 0; #10; // just to chek carry adjust
        A = 8'd99; B = 8'd1;  Cin = 0; #10; 
        A = 8'd99; B = 8'd99; Cin = 1; #10; 
        
       
        $stop;
    end

endmodule

