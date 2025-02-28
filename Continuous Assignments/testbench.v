module testbench();
	reg a , b ;
	wire out ;

	//Instantiate DUT
	Circuit CIRCUIT(
		.a(a), .b(b),
		.out(out)
	);

	//Monitor
	initial begin
		$monitor(" a=%b , b=%b , out=%b" , a , b , out);
	end

	//Stimulus
	initial begin
		#1;
		a=0; b=0;
		#1;
		a=1; b=1;
		#1;
		a=1; b=0;
		#1;
		a=0; b=1;
		#1;
		$stop;
	end
endmodule

