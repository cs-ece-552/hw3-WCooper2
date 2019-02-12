/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 2

    a 4-bit RCA module
*/
module rca_4b(A, B, C_in, S, C_out);

    // declare constant for size of inputs, outputs (N)
    parameter   N = 4;

    input [N-1: 0] A, B;
    input          C_in;
    output [N-1:0] S;
    output         C_out;

    // YOUR CODE HERE
    wire c01, c12, c23;

    fullAdder_1b (S[0], c01, A[0], B[0], C_in);
    fullAdder_1b (S[1], c12, A[1], B[1], c01);
    fullAdder_1b (S[2], c23, A[2], B[2], c12);
    fullAdder_1b (S[3], C_out, A[3], B[3], c23);

endmodule
