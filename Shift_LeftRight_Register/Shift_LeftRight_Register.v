module Shift_LeftRight_Register(
	input load_enable ,
	input left_right_shift ,
	input clk ,
	input reset ,
	input [7:0] i ,
	output reg [7:0] q 
);

	always @(posedge clk or negedge reset) begin
		if(!reset)
			q<=8'b00000000 ;
		else if(load_enable == 1'b0)
			q[7:0] <= i[7:0] ;
		else 
			if(left_right_shift == 1'b0)  //SHIFT LEFT
				q[7:0] <= { q[6:0] , 1'b0};
			else 
				q[7:0] <= { 1'b0 , q[7:1]} ;
			
		

	end

endmodule
			
