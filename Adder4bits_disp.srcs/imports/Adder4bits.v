`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: Alexis Emmanuel Muñoz Dueñas
// 
// Create Date: 23.02.2019 20:45:52
//////////////////////////////////////////////////////////////////////////////////


module Adder4bits(
    input [3:0] A,
    input [3:0] B,
    input cin,
    output [4:0] S
    );

wire co_s_1, co_s_2, co_s_3;

full_adder_gates fa1(.a(A[0]), .b(B[0]), .ci(cin), .co(co_s_1), .s(S[0]));
full_adder_gates fa2(.a(A[1]), .b(B[1]), .ci(co_s_1), .co(co_s_2), .s(S[1]));
full_adder_gates fa3(.a(A[2]), .b(B[2]), .ci(co_s_2), .co(co_s_3), .s(S[2]));
full_adder_gates fa4(.a(A[3]), .b(B[3]), .ci(co_s_3), .co(S[4]), .s(S[3]));

endmodule
