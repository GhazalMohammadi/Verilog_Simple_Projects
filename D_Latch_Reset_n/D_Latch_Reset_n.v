module D_Latch_Reset_n(
		input D ,
		input enable ,
		input reset_n ,
		output Q ,
		output not_Q
	);
	reg DLATCH ;
	
	always @(enable or D or reset_n) begin
		if(!reset_n)
			DLATCH <= 1'b0;
		else if(enable)
			DLATCH <= D ;
	end

	assign Q = DLATCH ;
	assign not_Q = ~Q ;

endmodule