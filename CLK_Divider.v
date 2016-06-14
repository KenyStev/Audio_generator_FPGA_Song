`timescale 1ns / 1ps

module CLK_Divider(
    input clk,
	 output clk1hz
	 );
	 
	 reg [21:0] counter;
	 reg clk1hz_buff;
	 parameter 
		counter_limit = 16'hbaa;
	 
	 assign clk1hz = clk1hz_buff;
	 
	 always @(posedge clk)
	 begin 
	 
		counter = counter +1;
		
		if(counter == (counter_limit/2))
		begin
			clk1hz_buff = !clk1hz_buff;
			counter = 22'h0;
		end
	end
	
	
	
	
	// synthesis attribute CLKFX_DIVIDE of vga_clock_dcm is 4
	// synthesis attribute CLKFX_MULTIPLY of vga_clock_dcm is 2
	//DCM vga_clock_dcm (.CLKIN(clk50mhz),.CLKFX(clk_c));

endmodule
