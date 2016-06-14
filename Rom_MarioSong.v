`timescale 1ns / 1ps
module Rom_MarioSong(
	input [16:0] address,
	output reg [3:0] data
    );

	reg [3:0] rom_content [0:70566];
	
	always @(address)
		data = rom_content[address];
		
	initial begin
		$readmemh("MarioSong.mif",rom_content,0,70566);
	end

endmodule