module testbench_Halfadder();
	reg a ;
	reg b ;

	wire sum ;
	wire carry ;

	//Instantiate DUT
	HalfAdder_Behavioral HALFHADDER1(
		.a(a) ,
		.b(b) ,
		.sum(sum) ,
		.carry(carry)
	);

	initial begin
		#1;
		a=0; b=0;
		#1;
		a=1; b=1;
		#1;
		a=0; b=1;
		#1;
		a=1; b=0;
	end
endmodule

