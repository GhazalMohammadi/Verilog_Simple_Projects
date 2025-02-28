module testbench();
	parameter ADDER_WIDTH = 10;
	reg [ADDER_WIDTH-1:0] a ;
	reg [ADDER_WIDTH-1:0] b ;
	wire [ADDER_WIDTH:0] sum ;


	//Instantiate DUT
	AdderNbit_Procedural 
	#(.N(ADDER_WIDTH))
	ADDERNBIT
	(	
		.a(a), .b(b),
		.sum(sum)
	);


	//Monitor
	initial begin
		$monitor("a=%d , b=%d , sum=%d" , a , b , sum);
	end

	//Stimulus
	initial begin
		#1;
		a=0; b=0;
		#1;
		a=12; b=28;
		#1;
		a=120; b=68;
		#2;
		$stop;
	end
endmodule
