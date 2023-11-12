module reg_file(A1, A2, A3, RD1, RD2, WD3, WE3, reset, clk);
	input clk, reset;
	input [31:0] WD3;
	input [4:0] A1, A2, A3;
	output [31:0] RD1, RD2;
	
	//creation of temp memory
	reg [31:0] Registers [31:0];
	
	//read functionality
	assign RD1 = (!reset) ? 32'h00000000 : Registers[A1];
	assign RD2 = (!reset) ? 32'h00000000 : Registers[A2];
	
	//write functionality
	always @(posedge clk)
		begin 
			if(WE3)
			begin 
				Registers[A3] <= WD3;		
			end
		end
endmodule
