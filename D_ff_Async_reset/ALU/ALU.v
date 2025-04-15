module ALU
	#(parameter BUS_WIDTH = 8)
	(
		input[BUS_WIDTH-1 : 0] A ,
		input[BUS_WIDTH-1 : 0] B ,
		input carry_in ,
		input[3:0] Opcode ,
		output reg[BUS_WIDTH-1 : 0] Y ,
		output reg carry_out ,
		output reg borrow ,
		output zero ,
		output parity ,
		output reg invalid_Op
	);


	//Define a list of Opcodes
	localparam OP_ADD = 1 ; // A + B
	localparam OP_ADD_CARRY = 2 ; // A + B + CARRY
	localparam OP_SUB = 3 ; // A - B
	localparam OP_INC = 4 ; // A++
	localparam OP_DEC = 5 ; // A--
	localparam OP_AND = 6 ; //Bitwise AND
	localparam OP_NOT = 7 ; //NOT A
	localparam OP_ROR = 8 ; //Rotate Right A
	localparam OP_ROL = 9 ; //Rotate Left A


	always @(*) begin
		Y=0; carry_out=0; borrow=0; invalid_Op=0;
		case(Opcode)
			OP_ADD : begin Y = A + B; end
			OP_ADD_CARRY : begin {carry_out , Y} = A + B + carry_in ; end
			OP_SUB : begin {borrow , Y} = A - B ; end
			OP_INC : begin {carry_out , Y} = A + 1'b1 ; end
			OP_DEC : begin {borrow , Y} = A - 1'b1 ; end
			OP_AND : begin Y = A & B ; end
			OP_NOT : begin Y = ~A ; end
			OP_ROR : begin Y = {A[0] , A[BUS_WIDTH-1 : 1]} ; end
			OP_ROL : begin Y = { A[BUS_WIDTH-2 : 0], A[BUS_WIDTH-1]} ; end
			default : begin invalid_Op = 1 ; end
		endcase
	end

	assign parity = ^Y ;
	assign zero = (Y==0) ;
endmodule