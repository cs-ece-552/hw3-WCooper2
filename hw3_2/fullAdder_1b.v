/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 2

    a 1-bit full adder
*/
module fullAdder_1b(A, B, C_in, S, C_out);
    input  A, B;
    input  C_in;
    output S;
    output C_out;

    // YOUR CODE HERE
    wire inv_a, inv_b, inv_cin;
    wire b_cin, a_cin, ab, c_val;

    not1 (inv_a, A);
    not1 (inv_b, B);
    not1 (inv_cin, C_in);

    nor2 (b_cin, inv_b, inv_cin);
    nor2 (a_cin, inv_b, inv_cin);
    nor2 (ab, inv_a, inv_b);

    nor3(c_val, b_cin, a_cin, ab);
    xor3(S,a,b,c);

    not(C_out, c_val);
endmodule
