module testbench_Comparator1bit();
	reg a , b ;
	wire smaller , equal , greater;

	//Instantiate DUT
	Comparator1bit COMPARATOR(
		.a(a), .b(b),
		.smaller(smaller), .equal(equal), .greater(greater)
	);

	//Monitor
	initial begin
		$monitor("a=%b , b=%b , smaller=%b , equal=%b , greater=%b" , a , b ,smaller , equal , greater);
	end

	initial begin
		#1;
		a=0; b=0;
		#1;
		a=0; b=1;
		#1;
		a=1; b=0;
		#1;
		a=1; b=1;
		#3;
		$stop;
	end
endmodule

