module testbench_DecoderNbit();
	parameter DECODER_WIDTH = 5 ;
	reg [DECODER_WIDTH-1 : 0] a ;
	reg enable ;
	wire [2**DECODER_WIDTH-1 : 0] y ;

	//Instantiate DUT
	DecoderNbit 
	#(.N(DECODER_WIDTH))
	DECODER
	(
		.a(a),
		.enable(enable),
		.y(y)
	);

	//Monitor
	initial begin
		$monitor("a=%b , enable=%b , y=%b" , a , enable , y);
	end

	//Stimulus
	initial begin
		#1;
		a = 5'b00001; enable=1;
		#1;
		a = 5'b00000; enable=1;
		#1;
		a = 5'b00010; enable=1;
		#1;
		a = 5'b00001; enable=0;
		#2;
		$stop;
	end
endmodule

