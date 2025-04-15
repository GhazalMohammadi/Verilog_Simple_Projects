module Shift_Reg_SIPO(
		input clk ,
		input sdi ,
		input reset ,
		output reg [3:0] Q
	);

	always @(posedge clk or negedge reset) begin
		if(!reset)
			Q <= 4'b0000 ;
		else
			Q[3:0] <= { Q[2:0], sdi} ;
	end

endmodule