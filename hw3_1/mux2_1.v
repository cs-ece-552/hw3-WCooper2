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
    wire inv_s, A, B;

    /* Invert the needed input signals */
    not1 notS (.out(inv_s), .in1(S));

    nand2 AS (.out(A), .in1(InA), .in2(inv_s));
    nand2 BS (.out(B), .in1(InB), .in2(S));

    nand2 out (.out(Out), .in1(A), .in2(B));


endmodule
