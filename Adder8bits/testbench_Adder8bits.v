`timescale 1ns/1ps
module testbench_Adder8bits();
	reg [7:0] a = 0 ;
	reg [7:0] b = 0 ;

	wire [8:0] sum ;

	//Instantiate DUT
	Adder8bits ADDER(
		.a(a) ,
		.b(b) ,
		.sum(sum)
	);

	initial begin
		$monitor("a=%d , b=%d , sum=%d" , a , b , sum);
	end

	initial begin
		#1;
		a = 1 ;
		#1;
		a = 100 ;
		b = 234 ;
		#1
		a = 98 ;
		b = 678 ;
	end
endmodule	
