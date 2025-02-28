module Mux_Tri_State(
		input a , b , sel,
		output out
	);

	bufif0 BUF1(out , a , sel);
	bufif1 BUF2(out , b , sel);
endmodule

	
