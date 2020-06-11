`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/09/2020 02:47:05 AM
// Design Name: 
// Module Name: Motor_control
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


module Motor_control #(parameter 		//in_clk_freq = 100_000_000, 
										// freq_req = 20_000,
										duty_width = 8
										// sync_count = 3 
										)
										(
    input           				clk,
    input           				reset,
    input  [duty_width - 1:0]    	duty,
    output reg      				pwm
    );

//wire [31:0] clk_freq_divid, calc_rot_high;
//reg  [31:0] rotation_high[sync_count - 1:0];
// reg  [31:0] new_clk_count, clk_count;
reg  [duty_width - 1:0] clk_count;

integer i;

//assign clk_freq_divid = in_clk_freq/freq_req;
// assign rotation_high[0] = (duty * clk_freq_divid)/dut_range;
//assign calc_rot_high = (duty * clk_freq_divid)/dut_range;

always @(posedge clk)
begin
	if(!reset)
		clk_count <= {duty_width{1'b0}};
	else
		clk_count <= clk_count + 1'b1;		
end


always @*
begin
	if(clk_count <= duty)
		pwm <= 1'b1;
	else
		pwm <= 1'b0;
end
endmodule

/*
always @(posedge clk)
begin
    if (!reset)
	begin
		for(i=0; i < sync_count; i = i + 1)
		begin
			rotation_high[i] <= 32'h00;
		end
	end
	else
	begin
	    rotation_high[sync_count-1] <= (duty * clk_freq_divid)>>8;
//		for(i=1; i < sync_count; i = i + 1)
//        begin
//            rotation_high[i] <= rotation_high[i-1];
//        end	
	end
end
*/

// always @(posedge clk)
// begin
    // if (!reset)
	// begin
        // new_clk_count <= 0;
        // clk_count      <= 0;
	// end
	// else
	// begin
        // clk_count = clk_count + 1;
		// if(clk_count <= rotation_high[sync_count-1])
		// begin
			// pwm <= 1'h1;
		// end
		// else
		// begin
			// pwm <= 1'h0;
		// end
		// if(clk_count == clk_freq_divid)
		// begin
			// clk_count <= 32'h0000;
		// end
	// end
// end
// endmodule


/*
module Motor_control
#(
	//parameter declarations
	parameter 			RESET_POLARITY_LOW = 1,				// Reset is active-low?  (default is yes)
	parameter 			PWM_DC_WIDTH = 8					// Number of duty cycle bits for each channel (Default = 8-bit or 1/256 resolution)
)
(
	// port declarations
	input 						clk, 						// system clock
	input						reset,						// system reset
	input	[PWM_DC_WIDTH-1:0]	duty,						// duty cycle for Motor PWM
	output						pwm						// PWM outputs for each channel
);

// local parameters
// localparam PWM_CNTR_WIDTH = PWM_DC_WIDTH + 1;               // make the PWM counter one bit wider than the duty cycle input to keep
localparam PWM_CNTR_WIDTH = PWM_DC_WIDTH;               // make the PWM counter one bit wider than the duty cycle input to keep
                                                            // the duty cycle below 50% per the Nexys4 User manual
localparam RED_INDEX = 2, GREEN_INDEX = 1, BLUE_INDEX = 0;

// internal variables
// loop index
integer i;

// use the reset_POLARITY_LOW parameter to set the reset_Int slevel
wire reset_Int = 1 ? ~reset : reset;
								
// counter array.  Each PWM channel gets its own counter
reg			[PWM_CNTR_WIDTH-1:0]	pwm_cntr_ary;

// output signals
reg					pwm_out_reg;

	
// PWM channel counters
// counters overflow to restart PWM period
always @(posedge clk) begin
		if (reset_Int) begin
			pwm_cntr_ary <= {PWM_CNTR_WIDTH{1'b0}};
		end
		else begin
			pwm_cntr_ary <= pwm_cntr_ary + 1'b1;	
		end
end // pwm counters

// PWM output generation
// Block can be combinational because the counters are synchronized to the clock
// NOTE:  THIS CODE IS SPECIFIC TO RGB PWM
always @* begin
    // control the red PWM channel
    if (pwm_cntr_ary < duty) 
        pwm_out_reg = 1'b1;
    else
        pwm_out_reg = 1'b0;
        
               
end // PWM output generation

// assign the outputs
assign pwm = pwm_out_reg;

// initialize the counters and signal outputs.  Synthesis tool uses initial block for this
initial begin
		pwm_cntr_ary = {PWM_CNTR_WIDTH{1'b0}};
		pwm_out_reg = 1'b0;
end  // initialization block

endmodule

*/			