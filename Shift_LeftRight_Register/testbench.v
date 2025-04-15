module testbench();
	reg load_enable , reset , left_right_shift , clk ;
	reg [7:0] i ;

	wire [7:0] q;

	//Instantiate
	Shift_LeftRight_Register SHIFT1(
		.load_enable(load_enable),
		.reset(reset),
		.left_right_shift(left_right_shift),
		.clk(clk),
		.i(i),
		.q(q)
	);


	always begin
		#0.5 clk = ~clk ;
	end

	initial begin
		#1;
		clk = 0 ; reset = 0 ; load_enable = 0 ;
		#2;
		reset = 1 ; load_enable = 0 ; i = 8'b1111_1111 ;
		#2;
		@(posedge clk); i = 8'b1111_0011 ;
		#4;
		load_enable = 1 ; left_right_shift = 0 ;

	end

	initial begin
		#20;
		$finish ;
	end

endmodule
		
