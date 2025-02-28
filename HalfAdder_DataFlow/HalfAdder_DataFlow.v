module HalfAdder_DataFlow(
		input a ,
		input b ,
		output sum ,
		output carry
	);

	assign sum = a ^ b ; // sum = a XOR b
	assign carry  = a & b ; // carry = a & b
endmodule
