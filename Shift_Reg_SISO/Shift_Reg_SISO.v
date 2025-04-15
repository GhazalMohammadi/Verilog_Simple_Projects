module Shift_Reg_SISO(
		input clk ,
		input reset ,
		input sdi ,
		output sdo
	);

	reg [3:0] SISO ;	
	
	always @(posedge clk or negedge reset) begin
		if(!reset)
			SISO <= 4'b0000;
		else
			SISO[3:0] <= {SISO[2:0] , sdi};
	end

	assign sdo = SISO[3];
endmodule