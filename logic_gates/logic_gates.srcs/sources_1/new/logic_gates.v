`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2026 03:47:39 PM
// Design Name: 
// Module Name: logic_gates
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

module logic_gates(
    input A, B,
    output AND_out, OR_out, NOT_out,
    output NAND_out, NOR_out, XOR_out, XNOR_out
);

// Gate-level modeling (schematic style)
and  g1 (AND_out, A, B);
or   g2 (OR_out, A, B);
not  g3 (NOT_out, A);
nand g4 (NAND_out, A, B);
nor  g5 (NOR_out, A, B);
xor  g6 (XOR_out, A, B);
xnor g7 (XNOR_out, A, B);

endmodule
