module FullAdder4bits_Structural(
		input [3:0]a,
		input [3:0]b,
		input carry_in,
		output carry_out,
		output [3:0]sum
	); 

	wire [2:0] c ;

	//Instantiate
	FullAdder1bit_Structural FULLADDER1(
		.a(a[0]),
		.b(b[0]),
		.cin(carry_in),
		.sum(sum[0]),
		.cout(c[0])
	);

	FullAdder1bit_Structural FULLADDER2(
		.a(a[1]),
		.b(b[1]),
		.cin(c[0]),
		.sum(sum[1]),
		.cout(c[1])
	);

	FullAdder1bit_Structural FULLADDER3(
		.a(a[2]),
		.b(b[2]),
		.cin(c[1]),
		.sum(sum[2]),
		.cout(c[2])
	);

	FullAdder1bit_Structural FULLADDER4(
		.a(a[3]),
		.b(b[3]),
		.cin(c[2]),
		.sum(sum[3]),
		.cout(carry_out)
	);

endmodule
