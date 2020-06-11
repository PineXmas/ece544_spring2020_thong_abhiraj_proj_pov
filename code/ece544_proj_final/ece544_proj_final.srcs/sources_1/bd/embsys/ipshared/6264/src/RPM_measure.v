`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/07/2020 06:20:45 PM
// Design Name: 
// Module Name: RPM_measure
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RPM_measure #(parameter clk_freq = 100_000_000) (
    input   clk,
    input   enc_in,
	input 	reset,
    output reg [31:0] calc_rpm
    ); 
	
reg	[31:0]	clk_counter;
//reg	[31:0]	f_pulse_counter;

reg	[31:0]	enc_counter;
reg         enc_l_state;


//assign calc_rpm = ((f_pulse_counter * 60 )/3)>>2;

//    known frequency, pulses of clock  100M       1sec
//    pulses for (12 pulses of motor)    X       y
/*
    y: the time in sec of 1 rotation --> the number of rotations in 1 sec = 1 / y
    y * 60 --> the time in sec of 60 rotations
*/

always @(posedge clk)
begin
	if (!reset)
	begin
			clk_counter <= 32'h0;
			enc_counter <= 32'h0;
			enc_l_state <= 1'h0;
//			f_pulse_counter <= 32'd0;
			
	end
	else
	begin
//		if((enc_l_state != enc_in) && (enc_in == 1'h1))
		if(~enc_l_state && enc_in)
		begin
			enc_counter <= enc_counter + 1'h1;
		end
		
		clk_counter <= clk_counter + 1'h1;
		enc_l_state <= enc_in;
		
		if(clk_counter == clk_freq)
		begin
//			rpm_track[i] <= ((enc_counter * 60 )/3)>>2;
//			calc_rpm <= enc_counter * 5;  // same_as_but_simplified calc_rpm <= ((enc_counter * 60 )/3)>>2;
            //calc_rpm <= ((enc_counter * 15)/29)>>2;  // same_as_but_simplified calc_rpm <= ((enc_counter * 60 )/3)>>2;
			calc_rpm <= enc_counter;       //Number of pulses encountered in one seconds
			clk_counter <= 32'h00000000;
			enc_counter <= 31'h0;
			// i = i + 1'h1;
			// if(i >=  {avg_read{1'b1}})
				// i = {avg_read{1'b0}};
		end
	end
end

// always @*
// begin
	// avg_tracker = 0;
	// for(j = 0; j < 2**avg_read; j = j + 1)
	// begin
		// avg_tracker = avg_tracker + rpm_track[j];
	// end
	// calc_rpm = avg_tracker / j;
// end

//always @(posedge clk)
//begin
//	if (!reset)
//	begin
//			clk_counter <= 32'h0;
//			enc_counter <= 4'h0;
//			enc_l_state <= 1'h0;
			
//	end
//	else
//	begin
////		if((enc_l_state != enc_in) && (enc_in == 1'h1))
//		if(~enc_l_state && enc_in)
//		begin
//			enc_counter = enc_counter + 1'h1;
//		end
		
//		clk_counter <= clk_counter + 1'h1;
//		enc_l_state <= enc_in;
		
//		if(enc_counter == 8'h0C)
//		begin
//			f_pulse_counter <= clk_counter;
//			clk_counter <= 32'h00000000;
//			enc_counter <= 8'h0;
//		end
//	end
//end
	
endmodule
