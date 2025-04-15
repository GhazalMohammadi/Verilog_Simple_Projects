module Priority_Encoder4to2(
		input[3:0] D ,
		output reg [1:0] O ,
		output reg v
	);

	always @(*) begin
		if(D[3])
			O = 2'd3;
		else if(D[2])
			O = 2'd2;
		else if(D[1])
			O = 2'd1;
		else
			O = 2'd0;
	end


	always @(*) begin
		if(!D)
			v = 0;
		else
			v = 1;
	end
endmodule
