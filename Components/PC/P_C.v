module P_C(PCNext, PC, reset, clk);

	//initialising input/output ports
	input [31:0] PCNext;
	input reset, clk;
	output reg [31:0] PC; //output ports are wires by default
	always @(posedge clk)
		begin 
		if(reset == 1'b0)
			begin 
			PC <= 32'h00000000;
			end
		else
			begin
			PC <= PCNext;  
			end
		end
		
endmodule
