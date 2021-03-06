/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    a 4-bit (quad) 4-1 Mux template
*/
module mux4_1_4b(InA, InB, InC, InD, S, Out);

    // parameter N for length of inputs and outputs (to use with larger inputs/outputs)
    parameter N = 4;

    input [N-1:0]   InA, InB, InC, InD;
    input [1:0]     S;
    output [N-1:0]  Out;

    // YOUR CODE HERE
    mux4_1 bit0 (.Out(Out[0]),.InA(InA[0]),.InB(InB[0]),.InC(InC[0]),.InD(InD[0]),.S(S));
    mux4_1 bit1 (.Out(Out[1]),.InA(InA[1]),.InB(InB[1]),.InC(InC[1]),.InD(InD[1]),.S(S));
    mux4_1 bit2 (.Out(Out[2]),.InA(InA[2]),.InB(InB[2]),.InC(InC[2]),.InD(InD[2]),.S(S));
    mux4_1 bit3 (.Out(Out[3]),.InA(InA[3]),.InB(InB[3]),.InC(InC[3]),.InD(InD[3]),.S(S));


endmodule
