`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2026 06:12:31 PM
// Design Name: 
// Module Name: cpu_tb
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

module cpu_tb;

reg [3:0] a, b;
reg [1:0] opcode;
wire [3:0] result;

// Instantiate CPU
simple_cpu uut (
    .a(a),
    .b(b),
    .opcode(opcode),
    .result(result)
);

initial begin
    $display("CPU Validation Started");

    // Test ADD
    a = 4'd5; b = 4'd3; opcode = 2'b00;
    #10 $display("ADD: %d", result);

    // Test SUB
    a = 4'd7; b = 4'd2; opcode = 2'b01;
    #10 $display("SUB: %d", result);

    // Test AND
    a = 4'd6; b = 4'd3; opcode = 2'b10;
    #10 $display("AND: %d", result);

    // Test OR
    a = 4'd6; b = 4'd3; opcode = 2'b11;
    #10 $display("OR: %d", result);

    $display("CPU Validation Completed");
    $finish;
end

endmodule



