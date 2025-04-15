module Bus_Demux
	#(parameter BUS_WIDTH = 8)
	(
		input [BUS_WIDTH-1:0] Y ,
		input [1:0] SEL ,
		output reg [BUS_WIDTH-1:0] A ,
		output reg [BUS_WIDTH-1:0] B ,
		output reg [BUS_WIDTH-1:0] C ,
		output reg [BUS_WIDTH-1:0] D 
	);

	always @(*) begin
		A = 0 ; B = 0 ; C = 0 ; D = 0;
		if(SEL == 0)
			A = Y;
		else if(SEL == 1)
			B = Y;
		else if(SEL == 2)
			C = Y;
		else
			D = Y;
	end
endmodule
