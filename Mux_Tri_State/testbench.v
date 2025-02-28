module testbench();
	reg a , b , sel;
	wire out;

	//Instantiate DUT
	Mux_Tri_State MUXTRISTATE(
		.a(a), .b(b) , .sel(sel),
		.out(out)
	);

	//Monitor
	initial begin
		$monitor("a=%b , b=%b , sel=%b , out=%b" , a , b, sel , out);
	end

	//Stimulus
	initial begin
		#1;
		a=0; b=1; sel=0;
		#1;
		a=0; b=1; sel=1;
		#2;
		$stop;
		
	end
endmodule
