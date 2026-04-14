`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2026 06:15:18 PM
// Design Name: 
// Module Name: simple_memory
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


module simple_memory (
    input clk,
    input we,              // write enable
    input [3:0] addr,
    input [7:0] din,
    output reg [7:0] dout
);

reg [7:0] mem [0:15];     // 16 locations

always @(posedge clk) begin
    if (we)
        mem[addr] <= din; // Write
    else
        dout <= mem[addr]; // Read
end

endmodule