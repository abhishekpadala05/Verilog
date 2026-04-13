`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2026 03:50:24 PM
// Design Name: 
// Module Name: tb_logic_gates
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

module tb_logic_gates;

reg A, B;
wire AND_out, OR_out, NOT_out;
wire NAND_out, NOR_out, XOR_out, XNOR_out;

logic_gates uut (
    .A(A),
    .B(B),
    .AND_out(AND_out),
    .OR_out(OR_out),
    .NOT_out(NOT_out),
    .NAND_out(NAND_out),
    .NOR_out(NOR_out),
    .XOR_out(XOR_out),
    .XNOR_out(XNOR_out)
);

initial begin
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
end

endmodule
