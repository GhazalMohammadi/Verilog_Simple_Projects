module testbench();
	reg clk , reset ;
	reg [3:0] D ;

	wire [3:0] Q ;
	integer i ;

	//Instatiate
	Shift_Reg_PIPO PIPO(
		.D(D) ,
		.clk(clk) ,
		.reset(reset) ,
		.Q(Q)
	);

	always begin
		#0.5 clk = ~clk ;
	end

    	// Create stimulus	  
    	initial begin
	    #1; // apply reset to the circuit
            reset = 0; D = 0; 		
	    #1.3; // release the reset
	    reset = 1;
	    clk = 0 ;
		
            // Wait for the positive edge of clk
	    // and change the data input d
	    for (i=0; i<5; i=i+1) begin
                 @(posedge clk); D = $random;
	    end	
     	end
	
    	// This will stop the simulator when the time expires
    	initial begin
       	 #20 $finish;
    	end

endmodule
	
	
