/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    2-1 mux template
*/
module mux2_1(InA, InB, S, Out);
    input   InA, InB;
    input   S;
    output  Out;

    // YOUR CODE HERE
    wire inv_a, inv_b, inv_s, inv_out, A, B;

    /* Invert the needed input signals */
    not1 (inv_a, a);
    not1 (inv_b, b);
    not1 (inv_s, s);

    nor2 (A, inv_a, s);
    nor2 (B, inv_b, inv_s);

    nor2 (inv_out, A, B);
    not1 (Out, inv_out);

endmodule
