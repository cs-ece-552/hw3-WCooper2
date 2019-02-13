/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    4-1 mux template
*/
module mux4_1(InA, InB, InC, InD, S, Out);
    input        InA, InB, InC, InD;
    input [1:0]  S;
    output       Out;

    // YOUR CODE HERE
    wire A_B, C_D;

    mux2_1 mux_ab (.Out(A_B), .InA(InA), .InB(InB), .S(S[0]));
    mux2_1 mux_cd (.Out(C_D), .InA(InC), .InB(InD), .S(S[0]));

    mux2_1 mux_out (.Out(Out), .InA(A_B), .InB(C_D), .S(S[1]));

endmodule
