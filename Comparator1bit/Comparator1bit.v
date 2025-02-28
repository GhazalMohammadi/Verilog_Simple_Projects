module Comparator1bit(
		input a ,b,
		output smaller , equal , greater
	);

	wire not_a , not_b ;

	not NOT1(not_a , a);
	not NOT2(not_b , b);

	//Smaller
	and AND1( smaller , not_a , b);

	//Equal
	xnor XNOR1(equal , a , b) ;

	//Greater
	and AND2(greater , a , not_b);

endmodule