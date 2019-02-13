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

    not1 nota (.out(inv_a), .in1(A));
    not1 notb (.out(inv_b), .in1(B));
    not1 notcin (.out(inv_cin), .in1(C_in));

    nor2 norBC (.out(b_cin), .in1(inv_b), .in2(inv_cin));
    nor2 norAC (.out(a_cin), .in1(inv_a), .in2(inv_cin));
    nor2 norAB (.out(ab), .in1(inv_a), .in2(inv_b));

    nor3 norABC (.out(c_val), .in1(b_cin), .in2(a_cin), .in3(ab));
    xor3 sum (.out(S),.in1(A),.in2(B),.in3(C_in));

    not1 out (.out(C_out),.in1(c_val));
endmodule
