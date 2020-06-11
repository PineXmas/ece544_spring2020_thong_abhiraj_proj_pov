module motor_wrapper #(	parameter integer 			duty_width = 8,
						parameter integer           clk_freq = 100_000_000
						)
						(
							input           				clk,
							input           				reset,
							input  [duty_width - 1:0]    	duty,
							output           				pwm,

							//RPM_measure
							input   enc_in,
							output  [31:0] calc_rpm,
							
							//Direction Control
							input	motor_direction_in,
							output reg	motor_direction_out
						);

always @(posedge clk)
	motor_direction_out <= motor_direction_in;

Motor_control #(.duty_width(duty_width)
				)
				motor_control
				(
					.clk(clk),
					.reset(reset),
					.duty(duty),
					.pwm(pwm)
				);
	
	
RPM_measure #(.clk_freq(clk_freq))
            rpm_measure (
					.clk(clk),
					.reset(reset),
					.enc_in(enc_in),
					.calc_rpm(calc_rpm)
			); 
			
endmodule