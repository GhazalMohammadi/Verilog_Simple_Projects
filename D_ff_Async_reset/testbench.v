module testbench();
	reg D , clk , reset ;
	wire Q , not_Q ;

	//Instantiate
	D_ff_Async_reset DFLIPFLOPASYN (
		.D(D) ,
		.clk(clk) , 
		.reset(reset) , 
		.Q(Q) ,
		.not_Q(not_Q)
	);


	initial begin
		$monitor("D=%b , clk=%b , reset=%b , Q=%b , not_Q=%b" , D , clk , reset , Q , not_Q);
	end


	initial begin
		clk = 0 ;
		#1 ; 
		clk = 0 ; D = 0 ; reset = 1 ;
		#0.5;
		clk = 1 ;
		#0.5;
		clk=0 ; D = 1 ;
		#1;
		clk=1 ; D = 1 ;
		#0.5;
		reset = 0 ;

	end

	initial begin
		#20 ;
		$finish;
	end

endmodule
