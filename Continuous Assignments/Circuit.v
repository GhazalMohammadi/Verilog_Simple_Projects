module Circuit(
		input a , b ,
		output out
	);

	wire not_a , aORb ;

	//Continuous Assignments
	assign not_a = ~a ;
	assign aORb = a | b ;
	assign out = (not_a & aORb)|aORb ;
endmodule
