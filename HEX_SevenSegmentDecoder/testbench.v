module testbench();
	reg [3:0] in ;
	wire a , b , c , d , e , f , g ;
	wire dot ;
	integer i ;


	//Instantiate
	HEX_SevenSegmentDecoder SEVSEG (
		.in(in),
		.a(a) ,
		.b(b) ,
		.c(c) ,
		.d(d) ,
		.e(e) ,
		.f(f) ,
		.g(g) ,
		.dot(dot)
	);

	initial begin
		$monitor("in=%d , SEVENSEG = %b , dot=%b" , in , {a,b,c,d,e,f,g} , dot);
	end

	initial begin 
		#1;
		for(i=0 ; i<10 ; i=i+1) begin
			#1;
			in = i ;
			#1;
		end
		#1;
	end

endmodule