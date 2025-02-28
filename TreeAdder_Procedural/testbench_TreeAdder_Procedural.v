module testbench_TreeAdder_Procedural();
	reg [3:0] a , b;
	reg [7:0] c , d;

	wire [4:0] sum1;
	wire [8:0] sum2;
	wire [9:0] sum;


	//Instantiate DUT
	TreeAdder_Procedural TREEADDER(
		.a(a), .b(b), .c(c), .d(d),
		.sum1(sum1), .sum2(sum2), .sum(sum)
	);

	//Monitor
	initial begin
		$monitor("a=%d , b=%d , c=%d , d=%d , sum1=%d , sum2=%d , sum=%d" , a , b , c , d , sum1 , sum2 , sum);
	end

	initial begin
		#1;
		a=4'd2; b=4'd8; c=8'd20; d=8'd32;
		#1;
		a=6'd2; b=4'd8; c=8'd15; d=8'd25;
		#3;
		$stop;
	end
endmodule


