module testbench();
	reg[3:0] D;
	wire[1:0] O ;
	wire v ;
	integer i ;


	//Instantiate DUT
	Priority_Encoder4to2 PR_EN4TO2(
		.D(D),
		.O(O),
		.v(v)
	);

	initial begin
		$monitor(" D=%b , O=%b , v=%d" , D , O ,v);
	end

	initial begin
		#1;
		D = 0 ;
		for( i=0 ; i<4 ; i=i+1) begin
			#1;
			D = 1 << i;
		end
		
		//Check Priority
		#1;
		D = 4'b1001;
		#1;
		D = 4'b0110;
		#1;
		D = 4'b1111;
		#1;
		$stop;
	end
endmodule
		
		
