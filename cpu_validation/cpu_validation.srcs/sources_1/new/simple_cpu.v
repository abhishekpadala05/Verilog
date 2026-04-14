`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2026 06:11:17 PM
// Design Name: 
// Module Name: simple_cpu
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
////////////////////////////////////////////////////////////////////////////////

module simple_cpu (
    input [3:0] a, b,
    input [1:0] opcode,
    output reg [3:0] result
);

always @(*) begin
    case(opcode)
        2'b00: result = a + b;  // ADD
        2'b01: result = a - b;  // SUB
        2'b10: result = a & b;  // AND
        2'b11: result = a | b;  // OR
        default: result = 4'b0000;
    endcase
end

endmodule