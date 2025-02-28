module HalfAdder_Structural(
		input a,
		input b,
		output sum,
		output cout
	);

	xor XOR1( sum , a , b);
	and AND1( cout , a , b);

endmodule
