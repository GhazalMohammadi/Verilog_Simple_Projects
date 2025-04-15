module Testbench();
	parameter BUS_WIDTH = 8 ;
	reg [BUS_WIDTH-1:0] A ;
	reg [BUS_WIDTH-1:0] B ;
	reg [3:0] Opcode ;
	reg carry_in ;

	wire [BUS_WIDTH-1:0] Y ;
	wire carry_out ;
	wire borrow ; 
	wire zero ;
	wire parity ;
	wire invalid_Op;

	//Instantiate
	ALU
		#(.BUS_WIDTH(BUS_WIDTH))
		ALU_INS
		(
			.A(A),
			.B(B),
			.Opcode(Opcode),
			.carry_in(carry_in),
			.Y(Y),
			.carry_out(carry_out),
			.borrow(borrow),
			.zero(zero),
			.parity(parity),
			.invalid_Op(invalid_Op)
		);

	initial begin
		$monitor("opcode=%d , A=%d , B=%d , carry_in=%d , Y=%d , carry_out=%b , borrow=%b , zero=%b , parity=%b , invalid_Op=%b" , Opcode , A , B , carry_in , Y , carry_out , borrow , zero , parity , invalid_Op);
	end

	initial begin
		#1;
		$display("Op_Code Invalid");
		Opcode = 10 ; A = 0 ; B = 5 ; carry_in = 0 ;
		#1;
		$display("Test ADD");
		Opcode = 1 ; A = 2 ; B = 5 ; carry_in = 1 ;
		#1;
		$display("Test ADD_Carry");
		Opcode = 2 ; A = 2 ; B = 5 ; carry_in = 1 ;
		#1;
		$display("Test SUB");
		Opcode = 3 ; A = 8 ; B = 5 ; carry_in = 1 ;
		#1;
		$display("Test INC");
		Opcode = 4 ; A = 2 ; B = 5 ; carry_in = 1 ;
		#1;
		$display("Test INC");
		Opcode = 5 ; A = 2 ; B = 5 ; carry_in = 1 ;
		#1;
		$display("Test Bitwise And");
		Opcode = 6 ; A = 2 ; B = 5 ; carry_in = 1 ;
		#1;
		$display("Test NOT");
		Opcode = 7 ; A = 2 ; B = 5 ; carry_in = 1 ;
		#1;
		$display("Test ROR");
		Opcode = 8 ; A = 2 ; B = 5 ; carry_in = 1 ;
		#1;
		$display("Test ROL");
		Opcode = 9 ; A = 2 ; B = 5 ; carry_in = 1 ;
		#1;
		$stop;
	end
endmodule


