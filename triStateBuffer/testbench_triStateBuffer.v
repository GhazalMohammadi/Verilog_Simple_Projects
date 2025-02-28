module testbench_triStateBuffer();
	reg a , c;
	wire f;

	//Instantiate DUT
	triStateBuffer TRISTATE(
		.a(a), .c(c),
		.f(f)
	);

	//Monitor
	initial begin
		$monitor("a=%b , c=%b , f=%b" , a , c , f);
	end

	//Stimulus
	initial begin
		#1;
		a=0; c=0;
		#1;
		a=1; c=0;
		#1;
		a=0; c=1;
		#1;
		a=1; c=1;
		#2;
		$stop;
	end
endmodule
		

