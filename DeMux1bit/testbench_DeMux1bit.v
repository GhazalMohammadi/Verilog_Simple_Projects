module testbench_DeMux1bit();
	reg in , sel;
	wire y0 , y1;

	//Instantiate DUT
	DeMux1bit DEMUX(
		.in(in), .sel(sel),
		.y0(y0), .y1(y1)
	);

	//Monitor
	initial begin
		$monitor("in=%b , sel=%b , y0=%b , y1=%b" , in , sel , y0 , y1);
	end

	//Stimulus
	initial begin
		#1;
		in=0; sel=0; 
		#1;
		in=1; sel=1;
		#1;
		in=0; sel=1;
		#2;
		$stop;
	end
endmodule
