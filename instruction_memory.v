module Instr_Mem(A, RD, reset);
	//input-output declaration
	input [31:0] A;
	input reset;
	output [31:0] RD;
	
	//memory declaration
	reg [31:0] Mem [1023:0]; //1024 registers, each of size 32 bits
	
	//assign keyword used for wire data types for continuous assignement in combinational circuit; inherently non-blocking; blocking/non- blocking in sequential
	assign RD = (!reset) ? Mem[A[31:2]] : 32'h00000000;
	
	initial begin
		Mem[0] = 32'hFFC4A303;
		//$readmemh("memfile.hex", Mem) //reading instructions from hexfile
	end
	
	
	
endmodule
