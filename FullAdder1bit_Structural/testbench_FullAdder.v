module testbench_FullAdder();
	reg A;
	reg B;
	reg CIN;

	wire SUM;
	wire COUT;

	//Instantiate DUT
	FullAdder1bit_Structural FULLADDER1(
		.A(A),
		.B(B),
		.CIN(CIN),
		.SUM(SUM),
		.COUT(COUT)
	);

	initial begin
		$monitor("A=%b , B=%b , CIN=%b , SUM=%b , COUT=%b" , A , B , CIN , SUM , COUT);
	end

	initial begin
		#1;
		A=0; B=0; CIN=0;
		#1;
		A=1; B=1; CIN=1;
		#1;
		A=1; B=1; CIN=0;
		#1;
		A=0; B=0; CIN=1;
	end
endmodule
