module DeMux1bit(
		input in , sel ,
		output y0 , y1
	);

	wire not_sel;
	
	not NOT1(not_sel , sel);
	and AND1(y0 , in , not_sel);
	and AND2(y1 , in , sel);

endmodule
