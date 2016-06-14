`timescale 1ns / 1ps
module Main(
	input clk50Mghz,
	input c,
	output [3:0] data
    );
	 
	 reg[16:0] address;
	 wire clk_c;
	 wire clk_s;
	 reg temp;
	 assign clk_s = temp;
	 reg [11:0]divider;
	CLK_Divider #(.counter_limit(16'h11ad))clk(.clk(clk50Mghz),.clk1hz(clk_c));
	
	Rom_MarioSong rom(address,data);
	
	always @(posedge clk_s)
	begin
		address = address+1;
	end
		
	always @(c)
	begin
		if(c)
		begin
			temp = clk_c;
		end
		else
		begin
			temp = 0;
		end	
	end


endmodule
