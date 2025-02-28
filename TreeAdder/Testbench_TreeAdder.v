module Testbench_TreeAdder();
	reg [3:0]a;
	reg [3:0]b;
	reg [7:0]c;
	reg [7:0]d;

	wire [9:0] sumTotal ;

	//Instantiate DUT
	TreeAdder TREEADDER(
		.a(a), .b(b), .c(c), .d(d),
		.sumTotal(sumTotal)
	);

	//Monitor
	initial begin 
		$monitor("a=%d , b=%d , c=%d , d=%d ,sumTotal=%d " , a , b , c ,d , sumTotal);
	end

	//Stimulus
	initial begin
		#1;
		a=4'd3; b=4'd10; c=8'd40; d=8'd139;
		#1;
		a=4'd5; b=4'd8; c=8'd21; d=8'd15;
		#2;
		$stop;
	end
endmodule

