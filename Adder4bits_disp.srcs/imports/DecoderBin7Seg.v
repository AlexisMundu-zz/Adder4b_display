`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO
// Engineer: Cuauhtémoc Aguilera
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps
module DecoderBin7seg(
    output seg_a,
    output seg_b,
    output seg_c,
    output seg_d,
    output seg_e,
    output seg_f,
    output seg_g,
   
    output [3:0] T,
    input w,
    input x,
    input y,
    input z
    
    );
    
    assign T = 4'b1110;

    assign seg_a = (~w&x&~y&~z) | (~w&~x&~y&z) 	| (w&x&~y&z) 	 | (w&~x&y&z);
    assign seg_b = (~w&x&~y&z) 	| (w&x&~z) 	    | (w&y&z) 	     | (x&y&~z);
    assign seg_c = (~w&~x&y&~z) | (w&x&y) 	    | (w&x&~z);
    assign seg_d = (~w&x&~y&~z) | (~x&~y&z) 	| (x&y&z) 	     | (w&~x&y&~z);
    assign seg_e = (~w&x&~y) 	| (~w&z) 	    | (~x&~y&z);
    assign seg_f = (w&x&~y&z) 	| (~w&~x&z) 	| (~w&y&z) 	     | (~w&~x&y);
    assign seg_g = (~w&x&y&z) 	| (~w&~x&~y) 	| (w&x&~y&~z);
    
    
endmodule
