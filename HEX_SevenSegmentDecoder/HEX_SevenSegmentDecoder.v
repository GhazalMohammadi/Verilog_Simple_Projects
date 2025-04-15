module HEX_SevenSegmentDecoder
	(
		input[3:0] in ,
		output reg a ,
		output reg b ,
		output reg c ,
		output reg d ,
		output reg e ,
		output reg f ,
		output reg g ,
		output reg dot
	);

	always @(*) begin
		dot = 1'b1;
		case(in)
		4'd0 : {a,b,c,d,e,f,g} = 7'b1111110 ;
		4'd1 : {a,b,c,d,e,f,g} = 7'b0110000 ;
		4'd2 : {a,b,c,d,e,f,g} = 7'b1101101 ;
		4'd3 : {a,b,c,d,e,f,g} = 7'b1111001 ;
		4'd4 : {a,b,c,d,e,f,g} = 7'b0110011 ;
		4'd5 : {a,b,c,d,e,f,g} = 7'b1011011 ;
		4'd6 : {a,b,c,d,e,f,g} = 7'b1011111 ;
		4'd7 : {a,b,c,d,e,f,g} = 7'b1110000 ;
		4'd8 : {a,b,c,d,e,f,g} = 7'b1111111 ;
		4'd9 : {a,b,c,d,e,f,g} = 7'b1111011 ;
		endcase
	end

	

endmodule
