module HalfAdder_Behavioral(
		input a ,
		input b ,
		output reg sum , //because of always block should be reg output
		output reg carry //because of always block should be reg output
	);

	always @(a or b) begin
		sum = a ^ b ;
		carry = a & b ;
	end
endmodule
