// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
logic g1Out, g3Out, g4Out, g5Out, g6Out, g7Out, g8Out, g9Out, g10Out, g11Out;

XOR2 #(.Tpdlh(6),.Tpdhl(5)) g1 (.A(a), .B(b), .Z(g1Out));
XOR2 #(.Tpdlh(6),.Tpdhl(5)) g2 (.A(g1Out), .B(cin), .Z(s));

NOT #(.Tpdlh(10),.Tpdhl(9)) g3 (.A(b), .Z(g3Out));
NOT #(.Tpdlh(10),.Tpdhl(9)) g4 (.A(cin), .Z(g4Out));

OR2 #(.Tpdlh(10),.Tpdhl(8)) g5 (.A(g3Out), .B(g4Out), .Z(g5Out));
NOT #(.Tpdlh(10),.Tpdhl(9)) g6 (.A(g5Out), .Z(g6Out));

OR2 #(.Tpdlh(10),.Tpdhl(8)) g7 (.A(cin), .B(b), .Z(g7Out));
NOT #(.Tpdlh(10),.Tpdhl(9)) g8 (.A(g7Out), .Z(g8Out));

XOR2 #(.Tpdlh(6),.Tpdhl(5)) g9 (.A(a), .B(a_ns), .Z(g9Out));

OR2 #(.Tpdlh(10),.Tpdhl(8)) g10 (.A(g8Out), .B(g9Out), .Z(g10Out));
NOT #(.Tpdlh(10),.Tpdhl(9)) g11 (.A(g10Out), .Z(g11Out));

OR2 #(.Tpdlh(10),.Tpdhl(8)) g12 (.A(g6Out), .B(g11Out), .Z(cout));


// End of your code

endmodule
