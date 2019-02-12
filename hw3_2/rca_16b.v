/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 2

    a 16-bit RCA module
*/
module rca_16b(A, B, C_in, S, C_out);

    // declare constant for size of inputs, outputs (N)
    parameter   N = 16;

    input [N-1: 0] A, B;
    input          C_in;
    output [N-1:0] S;
    output         C_out;

    // YOUR CODE HERE
    wire c_out0, c_out1, c_out2;

    rca_4b(S[3:0], c_out0, A[3:0], B[3:0], C_in);
    rca_4b(S[7:4], c_out1, A[7:4], B[7:4], c_out0);
    rca_4b(S[11:8], c_out2, A[11:8], B[11:8], c_out1);
    rca_4b(S[15:12], C_out, A[15:12], B[15:12], c_out2);

endmodule
