module testbench_FullAdder4bits();
	reg [3:0]a;
	reg [3:0]b;
	reg carry_in;

	wire carry_out;
	wire [3:0]sum;

	//Instantiate DUT
	FullAdder4bits_Structural FULLADDER4BITS(
		.a(a),
		.b(b),
		.carry_in(carry_in),
		.carry_out(carry_out),
		.sum(sum)
	);

	//Monitor
	initial begin
		$monitor("a=%b , b=%b , carry_in=%b , carry_out=%b , sum=%b" , a , b ,carry_in , carry_out , sum);
	end

	//Stimulus
	initial begin
		#1;
		a=4'b0000; b=4'b0000; carry_in=0;
		#1;
		a=4'b0001; b=4'b0000; carry_in=0;
		#1;
		a=4'b0011; b=4'b0001; carry_in=1;
		#1;
		a=4'b1000; b=4'b0001; carry_in=0;
		#1;
		a=4'b1111; b=4'b1111; carry_in=1;
	end
endmodule