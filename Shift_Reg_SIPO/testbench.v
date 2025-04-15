module testbench();
	reg clk , reset , sdi ;
	wire [3:0] Q ;


	//Instantiate
	Shift_Reg_SIPO SIPO(
		.clk(clk),
		.reset(reset),
		.sdi(sdi),
		.Q(Q)
	);

	always begin
		#0.5 clk = ~clk ;
	end


	initial begin
		#1;
		reset = 0 ; sdi = 1'b0 ;
		#1;
		reset = 1 ;
		#1;
		clk = 0 ; sdi = 1'b1;
		#1;
		@(posedge clk); sdi = 1'b1;
		#1;
		@(posedge clk); sdi = 1'b0;
		#1;
		@(posedge clk); sdi = 1'b0;
	end

	initial begin
		#20;
		$finish;
	end

endmodule
