module testbench();
	reg [3:0] a ;
	wire [15:0] d;

	//Instantiate DUT
	Decoder4to16 DECODER4TO6(
		.a(a),
		.d(d)
	);

	//Monitor
	initial begin 
		$monitor("a=%b  , d=%b" , a, d);
	end

	//Stimulus
	initial begin
		#1;
		a=4'b0000;
		#1;
		a=4'b1000;
		#1;
		a=4'b0001;
		#1;
		a=4'b1001;
		#2;
		$stop;
	end
endmodule
		
