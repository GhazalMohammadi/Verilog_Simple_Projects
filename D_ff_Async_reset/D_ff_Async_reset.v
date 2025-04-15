module D_ff_Async_reset(
		input D ,
		input clk ,
		input reset ,
		output reg Q ,
		output not_Q
	);

	always @(posedge clk or negedge reset) begin
		if(!reset)
			Q <= 1'b0 ;
		else
			Q <= D ;
	end

	assign not_Q = ~Q ;

endmodule
