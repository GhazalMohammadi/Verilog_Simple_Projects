module FullAdder1bit_Structural(
		input a,
		input b,
		input cin,
		output sum,
		output cout
	);

	wire sum1;
	wire carry1;
	wire carry2;

	//Instantiate HalfAdder
	HalfAdder_Structural HALFADDER1(
		.a(a),
		.b(b),
		.sum(sum1),
		.cout(carry1)
	);

	HalfAdder_Structural HALFADDER2(
		.a(sum1),
		.b(cin),
		.sum(sum),
		.cout(carry2)
	);

	or OR1(cout , carry1 , carry2);
endmodule

	