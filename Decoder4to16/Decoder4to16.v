module Decoder4to16(
		input [3:0] a ,
		output [15:0] d
	);


	//Instantiate
	Decoder3to8 DEC1(
		.a(a[2:0]),
		.enable(~a[3]),
		.y(d[7:0])
	);


	Decoder3to8 DEC2(
		.a(a[2:0]),
		.enable(a[3]),
		.y(d[15:8])
	);

endmodule