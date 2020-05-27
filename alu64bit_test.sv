// 64-bit ALU test bench template
module alu64bit_test;

	logic [63:0] a;    // Input bit a
    logic [63:0] b;    // Input bit b
    logic cin;         // Carry in
    logic [1:0] op;    // Operation
    logic [63:0] s;   // Output S
    logic cout;        // Carry out
	
	alu64bit alu64_test(
		.a(a),
		.b(b),
		.cin(cin),
		.op(op),
		.s(s),
		.cout(cout)
	);
	
	initial begin
	a= {64{1'b1}};
	b= 0;
	cin= 0;
	op[0]=0;
	op[1]=0;
	#4000
	cin = 1;		
	end

endmodule
