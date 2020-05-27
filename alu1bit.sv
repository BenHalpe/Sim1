// 1-bit ALU template
module alu1bit (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic [1:0] op,    // Operation
    output logic s,          // Output S
    output logic cout        // Carry out
);

// Put your code here
// ------------------
logic g1Out,g2Out,g3Out,g4Out,g5Out;


OR2 #(.Tpdlh(10),.Tpdhl(8)) g1 (.A(a), .B(b), .Z(g1Out));
NOT #(.Tpdlh(10),.Tpdhl(9)) g2 (.A(g1Out), .Z(g2Out));

XOR2 #(.Tpdlh(6),.Tpdhl(5)) g3 (.A(a), .B(b), .Z(g3Out));

NOT #(.Tpdlh(10),.Tpdhl(9)) g4 (.A(op[0]), .Z(g4Out));

fas g5 (.a(a), .b(b), .cin(cin), .a_ns(g4Out), .s(g5Out), .cout(cout));

mux4 g6 (.d0(g2Out), .d1(g3Out), .d2(g5Out), .d3(g5Out), .sel(op[1:0]), .z(s));





// End of your code

endmodule
