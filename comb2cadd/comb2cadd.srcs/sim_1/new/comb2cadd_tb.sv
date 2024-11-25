`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 11:17:30 AM
// Design Name: 
// Module Name: comb2cadd_tb
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
module comb2cadd_tb();
reg a,b,c,d,e;
wire Y;
comb2cadd i1(a,b,c,d,e,Y);
initial
begin
     a=1'b0; b=1'b0; c=1'b0; d=1'b0; e=1'b0;#10
     a=1'b0; b=1'b0; c=1'b0; d=1'b0; e=1'b1;#10
     a=1'b0; b=1'b0; c=1'b0; d=1'b1; e=1'b0;#10
     a=1'b0; b=1'b0; c=1'b0; d=1'b1; e=1'b1;#10
     a=1'b0; b=1'b0; c=1'b1; d=1'b0; e=1'b0;#10
     a=1'b0; b=1'b0; c=1'b1; d=1'b0; e=1'b1;#10
     a=1'b0; b=1'b0; c=1'b1; d=1'b1; e=1'b0;#10
     a=1'b0; b=1'b0; c=1'b1; d=1'b1; e=1'b1;#10
     a=1'b0; b=1'b1; c=1'b0; d=1'b0; e=1'b0;#10
     a=1'b0; b=1'b1; c=1'b0; d=1'b0; e=1'b1;#10
     a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b0;#10
     a=1'b0; b=1'b1; c=1'b0; d=1'b1; e=1'b1;#10
     a=1'b0; b=1'b1; c=1'b1; d=1'b0; e=1'b0;#10
     a=1'b0; b=1'b1; c=1'b1; d=1'b0; e=1'b1;#10
     a=1'b0; b=1'b1; c=1'b1; d=1'b1; e=1'b0;#10
     a=1'b0; b=1'b1; c=1'b1; d=1'b1; e=1'b1;#10
     a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b0;#10
     a=1'b1; b=1'b0; c=1'b0; d=1'b0; e=1'b1;#10
     a=1'b1; b=1'b0; c=1'b0; d=1'b1; e=1'b0;#10
     a=1'b1; b=1'b0; c=1'b0; d=1'b1; e=1'b1;#10
     a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b0;#10
     a=1'b1; b=1'b0; c=1'b1; d=1'b0; e=1'b1;#10
     a=1'b1; b=1'b0; c=1'b1; d=1'b1; e=1'b0;#10
     a=1'b1; b=1'b0; c=1'b1; d=1'b1; e=1'b1;#10
     a=1'b1; b=1'b1; c=1'b0; d=1'b0; e=1'b0;#10
     a=1'b1; b=1'b1; c=1'b0; d=1'b0; e=1'b1;#10
     a=1'b1; b=1'b1; c=1'b0; d=1'b1; e=1'b0;#10
     a=1'b1; b=1'b1; c=1'b0; d=1'b1; e=1'b1;#10
     a=1'b1; b=1'b1; c=1'b1; d=1'b0; e=1'b0;#10
     a=1'b1; b=1'b1; c=1'b1; d=1'b0; e=1'b1;#10
     a=1'b1; b=1'b1; c=1'b1; d=1'b1; e=1'b0;#10
     a=1'b1; b=1'b1; c=1'b1; d=1'b1; e=1'b1;#10
    
    $stop;
end
endmodule
