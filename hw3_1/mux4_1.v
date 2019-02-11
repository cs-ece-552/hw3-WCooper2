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

    mux2_1 (A_B, InA, InB, S[0]);
    mux2_1 (C_D, InC, InD, S[0]);

    mux2_1 (Out, A_B, S[1]);

endmodule
