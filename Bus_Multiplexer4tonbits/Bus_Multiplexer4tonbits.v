module Bus_Multiplexer4tonbits
	#(parameter BUS_WIDTH = 8)
	(	
		input [BUS_WIDTH-1:0] A ,
		input [BUS_WIDTH-1:0] B ,
		input [BUS_WIDTH-1:0] C ,
		input [BUS_WIDTH-1:0] D ,
		input [1:0] SEL ,
		output reg [BUS_WIDTH-1:0] Y
	
	);

	always @(*) begin
		if(SEL == 0) 
			Y = A ;
		else if(SEL == 1) 
			Y = B ;
		else if(SEL == 2) 
			Y = C ;
		else
			Y = D ;
	end
endmodule


