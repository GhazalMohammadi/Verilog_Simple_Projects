module Testbench();

	parameter BUS_WIDTH = 8 ;

	reg[BUS_WIDTH-1:0] Y ;
	reg[1:0] SEL;

	wire[BUS_WIDTH-1:0] A ;
	wire[BUS_WIDTH-1:0] B ;
	wire[BUS_WIDTH-1:0] C ;
	wire[BUS_WIDTH-1:0] D ;


	//Instantiate DUT
	Bus_Demux
		#(.BUS_WIDTH(BUS_WIDTH))
		BUS_DEMUX
		(
			.Y(Y),
			.SEL(SEL),
			.A(A),
			.B(B),
			.C(C),
			.D(D)
		);

	initial begin
		$monitor("Y=%d , SEL=%d , A=%d , B=%d , C=%d , D=%d" , Y , SEL , A , B , C , D);
	end

	initial begin
		#1;
		Y = 123; SEL=0 ;
		#1;
		Y = 123; SEL=1 ;
		#1;
		Y = 123; SEL=2 ;
		#1;
		Y = 123; SEL=3 ;
		#1;
		$stop;
	end
endmodule