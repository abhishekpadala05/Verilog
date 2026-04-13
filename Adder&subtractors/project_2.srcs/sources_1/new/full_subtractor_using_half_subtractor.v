`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2026 04:24:16 PM
// Design Name: 
// Module Name: full_subtractor_using_half_subtractor
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


module full_subtractor_using_half_subtractor(
    input a, b, bin,
    output diff, borrow
);

    wire w1, w2, w3;

    // First half subtractor
    half_subtractor hs1(
        .a(a),
        .b(b),
        .diff(w1),
        .borrow(w2)
    );

    // Second half subtractor
    half_subtractor hs2(
        .a(w1),
        .b(bin),
        .diff(diff),
        .borrow(w3)
    );

    // Final borrow
    or o1(borrow, w2, w3);

endmodule
