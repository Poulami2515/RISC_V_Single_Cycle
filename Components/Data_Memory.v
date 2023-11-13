module data_mem(clk, A, WD, RD, WE, reset);
	input clk, WE, reset;
	input [31:0] A, WD;
	output [31:0] RD;
	
	//creation of temp memory
	reg [31:0] Data_Mem [1023:0];
	
	//data reading
	assign RD = (!WE) ? Data_Mem[A] : 32'h00000000;
	
	//data writing
	always @(posedge clk)
	begin
		if(WE)
		begin
			Data_Mem[A] <= WD;
		end
	end
endmodule

// instruction memory -> PC -> Register file -> Data Memory
