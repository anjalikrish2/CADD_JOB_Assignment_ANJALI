`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/24/2024 12:00:32 PM
// Design Name: 
// Module Name: fsm
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
module fsm (
    input logic A, B, rst, clk,
    output logic Q
);
    typedef enum logic [1:0] {S0, S1, S2} state_t;
    state_t current_state, next_state;

    always_ff @(posedge clk or posedge rst) 
    begin
        if (rst)
            current_state <= S0;
        else
            current_state <= next_state;
    end

    always_comb 
    begin
        case (current_state)
            S0: next_state = (A) ? S1 : S0;
            S1: next_state = (B) ? S2 : S1;
            S2: next_state = (rst) ? S0 : S2;
            default: next_state = S0;
        endcase
    end

    assign Q = (current_state == S2);
endmodule

