module alu(A,B,ALUControl,Result, N, Z, C, V);
	//declaring inputs
	input [31:0] A,B;
	input [2:0] ALUControl;
	
	//declaring outputs
	output [31:0] Result;
	output N,Z,C,V;
	
	//declaring interim wires
	wire [31:0] a_and_b;
	wire [31:0] a_or_b;
	wire [31:0] not_b;
	wire [31:0] mux1;
	wire [31:0] sum;
	wire [31:0] mux2;
	wire cout;
	
	//logic design
	assign a_and_b = A & B; //and operation
	assign a_or_b = A | B; //or operation
	assign not_b = ~B; //not operation
	assign mux1 = ALUControl[0] ? not_b : B; //2:1 MUX design
	assign {cout,sum} = A + mux1 + ALUControl[0]; //addition/subtraction
	assign mux2 = (ALUControl[1:0] == 2'b00) ? sum : // 4:1 MUX design
		          (ALUControl[1:0] == 2'b01) ? sum :
		          (ALUControl[1:0] == 2'b10) ? a_and_b : a_or_b;
	assign Result = mux2;
	
	//flag assignment
	assign Z = &(~Result); //Zero flag
	assign N = Result[31]; //Negative flag
	assign C = cout & (~ALUControl[1]); // Carry flag
	
endmodule
