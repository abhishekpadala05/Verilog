`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2026 06:16:11 PM
// Design Name: 
// Module Name: memory_tb
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


module memory_tb;

reg clk, we;
reg [3:0] addr;
reg [7:0] din;
wire [7:0] dout;

// Instantiate memory
simple_memory uut (
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    clk = 0;

    $display("Memory Validation Started");

    // Write data
    we = 1; addr = 4'd2; din = 8'd55;
    #10;

    we = 1; addr = 4'd3; din = 8'd100;
    #10;

    // Read data
    we = 0; addr = 4'd2;
    #10 $display("Read Addr 2: %d", dout);

    we = 0; addr = 4'd3;
    #10 $display("Read Addr 3: %d", dout);

    $display("Memory Validation Completed");
    $finish;
end

endmodule
