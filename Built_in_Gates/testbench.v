`timescale 1ns/1ps
module testbench();
	reg a , b , c , d ;
	wire o1,o2,o3,o4,o5,o6,o7;

	//Instantiate DUT
	Built_in_Gates GATE(
		.a(a), .b(b), .c(c), .d(d),
		.o1(o1), .o2(o2), .o3(o3), .o4(o4), .o5(o5), .o6(o6), .o7(o7)
	);


	//Stimulus
	initial begin
		#1;
		a=0; b=1; c=1; d=0;
		#1;
		a=1; b=0; c=0; d=1;
	end
endmodule
