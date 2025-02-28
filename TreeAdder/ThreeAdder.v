module TreeAdder(
		input [3:0]a , 
		input [3:0]b , 
		input [7:0]c , 
		input [7:0]d ,
		output [9:0] sumTotal
	);

	wire [4:0]sum1 ;
	wire [8:0]sum2 ;

	assign sum1 = a + b ;
	assign sum2 = c + d ;
	assign sumTotal = sum1 + sum2 ;

endmodule
