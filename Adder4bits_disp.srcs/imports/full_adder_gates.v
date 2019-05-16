`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: Alexis Muñoz 
// 
// Create Date: 01.02.2019 09:50:53
//////////////////////////////////////////////////////////////////////////////////


module full_adder_gates(
    input a,
    input b,
    input ci,
    output co,
    output s
    );
    assign s = (a ^ b) ^ ci;
    assign co = ((a & b) | (a & ci)) | (b & ci);
endmodule
