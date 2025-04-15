module testbench();
	reg D , enable , reset_n ;
	wire Q , not_Q ;

	//Instantiate
	D_Latch_Reset_n DLATCH_RESET_N(
		.D(D),
		.enable(enable),
		.reset_n(reset_n),
		.Q(Q),
		.not_Q(not_Q)
	);


	//Stimulus
	initial begin
		$monitor("enable=%b , D=%b , reset_n=%b , Q=%b , not_Q=%b" , enable , D , reset_n , Q , not_Q);
	end

	initial begin 
		enable = 1 ; reset_n = 1 ;
		#1;
		D = 1 ;
		#1;
		D = 0 ;

		#1;
		enable = 0 ; reset_n = 1 ;
		#0.5;
		D = 1 ;
		#0.5;
		D = 0 ;

		#1;
		enable =1; reset_n = 1 ; D = 1;

		#1;
		enable = 1 ; reset_n = 0 ; D = 1 ;
	end

	initial begin
		#20;
		$finish;
	end

endmodule
		

		