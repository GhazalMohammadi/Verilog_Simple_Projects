module FullAdder1bit_DataFlow(
		input a,
		input b,
		input cin,
		output sum,
		output cout
	);

	wire wire1 ;
	wire wire2 ;
	wire wire3 ;

	assign wire1 = a ^ b ;
	assign sum = wire1 ^ cin ;
	assign wire2 = cin & wire1 ;
	assign wire3 = a & b ;
	assign cout = wire2 | wire3 ;

endmodule
