`timescale 1ns/1ps
module Built_in_Gates(
		input a,b,c,d,
		output o1,o2,o3,o4,o5,o6,o7
	);

	//Without Delay
	and AND1(o1 , a , b);
	or OR1(o2 , c , d);
	nand NAND1(o3 , a , c);
	nor NOR1(o4 , b , d);
	buf BUF1(o5 , a);

	//With Delay
	and #1 AND2(o6 , b , c );
	buf #1 BUF2(o7 , d);
endmodule


