module testbench();
	parameter BUS_WIDTH = 8 ;
	reg[BUS_WIDTH-1:0] A;
	reg[BUS_WIDTH-1:0] B;
	reg[BUS_WIDTH-1:0] C;
	reg[BUS_WIDTH-1:0] D;
	reg[1:0] SEL;

	wire[BUS_WIDTH-1:0] Y;


	//Instantiate DUT
	Bus_Multiplexer4tonbits
	  #(.BUS_WIDTH(BUS_WIDTH))
 	  BUS_MUX4TON 
	  (
		.A(A),
		.B(B),
		.C(C),
		.D(D),
		.SEL(SEL),
		.Y(Y)
	   );

	initial begin
		$monitor("A=%b , B=%b , C=%b , D=%b , SEL=%b , Y=%b" , A , B , C , D , SEL , Y);
	end

	initial begin
		#1;
		A=8'b00011000 ; B=8'b11011000 ; C=8'b00000000 ; D=8'b00011011 ; SEL=2'b00;
		#1;
		A=8'b00011000 ; B=8'b11011000 ; C=8'b00000000 ; D=8'b00011011 ; SEL=2'b01;
		#1;
		A=8'b00011000 ; B=8'b11011000 ; C=8'b00000000 ; D=8'b00011011 ; SEL=2'b10;
		#1;
		A=8'b00011000 ; B=8'b11011000 ; C=8'b00000000 ; D=8'b00011011 ; SEL=2'b11;
		#1;
		$stop;
	end
endmodule