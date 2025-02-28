module Mux1bit(
		input a , b , sel,
		output out
	);

	wire not_sel , out1 , out2 ;
	
	not NOT1( not_sel , sel);
	and AND1(out1 , not_sel , a);
	and AND2(out2 , sel , b);
	or OR1(out , out1 , out2);

endmodule
