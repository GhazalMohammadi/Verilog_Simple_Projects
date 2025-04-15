module D_Latch(
		input D , 
		input enable ,
		output Q , 
		output not_Q 
	);

	reg DLatch ;

	always @(D or enable) begin
		if(enable)
			DLatch <= D ;
	end

	assign Q = DLatch ;
	assign not_Q = ~Q ;

endmodule