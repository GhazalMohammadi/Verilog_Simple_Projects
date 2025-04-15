module Shift_Reg_PIPO(
		input clk ,
		input [3:0] D ,
		input reset ,
		output reg [3:0] Q 
	);


	always @(posedge clk or negedge reset) begin
		if(!reset)
			Q <= 4'b0000 ;
		else
			Q[3:0] <= D[3:0] ;

	end

endmodule
