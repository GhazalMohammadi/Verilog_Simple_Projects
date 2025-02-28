module FullAdder1bit_Structural(
		input A ,
		input B ,
		input CIN,
		output SUM ,
		output COUT
	);

	wire sum1;
	wire carry1;
	wire carry2;


	//Instantiate HalfAdder
	HalfAdder_Structural HALFADDER1(
		.a(A),
		.b(B),
		.sum(sum1),
		.carry(carry1)
	);

	HalfAdder_Structural HALFADDER2(
		.a(sum1),
		.b(CIN),
		.sum(SUM),
		.carry(carry2)
	);

	or OR1(COUT , carry1 , carry2);
endmodule
