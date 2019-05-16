`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: Alexis Emmanuel Muñoz Dueñas
// 
// Create Date: 23.02.2019 22:18:40
//////////////////////////////////////////////////////////////////////////////////


module Adder4bits_disp(
    input [3:0] A,
    input [3:0] B,
    output cout,
    output [3:0] T,
    output a_seg,
    output b_seg,
    output c_seg,
    output d_seg,
    output e_seg,
    output f_seg,
    output g_seg
    );
    
wire [3:0] S_w;
    
Adder4bits a4b(
.A(A),
 .B(B),
 .S(S_w),
 .cout(cout)
);
    
DecoderBin7seg db7(.seg_a(a_seg), .seg_b(b_seg), .seg_c(c_seg), .seg_d(d_seg), 
                   .seg_e(e_seg), .seg_f(f_seg), .seg_g(g_seg), .T(T), .w(S_w[3]), 
                   .x(S_w[2]), .y(S_w[1]), .z(S_w[0]));

endmodule
