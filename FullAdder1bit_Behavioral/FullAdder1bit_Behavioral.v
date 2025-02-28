module FullAdder1bit_Behavioral(
		input a,
		input b,
		input cin,
		output reg sum,
		output reg cout
	);

	always @(a or b or cin) begin
		sum = (a ^ b) ^ cin ;
		cout = ((a ^ b) & cin) | (a & b);
	end
endmodule
