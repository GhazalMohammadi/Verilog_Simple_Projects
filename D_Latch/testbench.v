module testbench();

	reg D , enable ;
	wire Q , not_Q ;

	//Instantiate
	D_Latch DLATCH(
		.D(D),
		.enable(enable),
		.Q(Q),
		.not_Q(not_Q)
	);


	initial begin
		$monitor("enable = %b , D = %b , Q = %b , not_Q = %b" , enable , D , Q , not_Q);
	end

	initial begin
		enable = 0 ;
		#1;
		D = 0 ;
		#1;
		D = 1 ;
		#1;
		enable = 1 ;
		#1;
		D = 1 ;
		#1;
		D = 0 ;
	end

	initial begin
		#20;
		$finish;
	end

endmodule
