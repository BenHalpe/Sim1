// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

	logic w1;
	logic w2;
	logic w3;
	logic w4;
	logic w5;
	logic w6;
	logic w7;
	
	NOT #(
		.Tpdlh(10),
		.Tpdhl(9)
	) g1 (
		.A(d0),
		.Z(w1)
	);
	
	OR2 #(
		.Tpdlh(10),
		.Tpdhl(8)
	) g2 (
		.A(w1),
		.B(sel),
		.Z(w2)
	);
	
	NOT #(
		.Tpdlh(10),
		.Tpdhl(9)
	) g3 (
		.A(w2),
		.Z(w3)
	);
	
	NOT #(
		.Tpdlh(10),
		.Tpdhl(9)
	) g4 (
		.A(d1),
		.Z(w4)
	);
	
	NOT #(
		.Tpdlh(10),
		.Tpdhl(9)
	) g5 (
		.A(sel),
		.Z(w5)
	);
	
	OR2 #(
		.Tpdlh(10),
		.Tpdhl(8)
	) g6 (
		.A(w4),
		.B(w5),
		.Z(w6)
	);
	
	NOT #(
		.Tpdlh(10),
		.Tpdhl(9)
	) g7 (
		.A(w6),
		.Z(w7)
	);
	
	OR2 #(
		.Tpdlh(10),
		.Tpdhl(8)
	) g8 (
		.A(w3),
		.B(w7),
		.Z(z)
	);



endmodule
