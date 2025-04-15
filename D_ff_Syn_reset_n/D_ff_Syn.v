module D_ff_Syn(
		input D , 
		input clk ,
		input reset ,
		output reg Q ,
		output not_Q
	);


	always @(posedge clk) begin
		if(!reset)
			Q <= 1'b0 ;
		else
			Q <= D ;
	end
	
	assign not_Q = ~Q ;

endmodule
