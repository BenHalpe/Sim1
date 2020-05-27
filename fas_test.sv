// Full Adder/Subtractor test bench template
module fas_test;

// Put your code here
// ------------------
logic tst_a;
logic tst_b;
logic tst_cin;
logic tst_a_ns;
logic tst_s;
logic tst_cout;

fas fasTest ( 
	.a(tst_a),
	.b(tst_b),
	.cin(tst_cin),
	.a_ns(tst_a_ns),
	.s(tst_s),
	.cout(tst_cout)
);

initial begin
	tst_a = 0;
	tst_b = 0;
	tst_cin = 0;
	tst_a_ns = 0;
	#10
	tst_a = 1;
	#12 
	tst_a = 0;
	#10
	tst_a = 0;

end

// End of your code

endmodule
