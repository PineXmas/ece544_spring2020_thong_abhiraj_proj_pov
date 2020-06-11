`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Detect & compute duty cycle of the input PWM signal
//
// Thong Doan
//////////////////////////////////////////////////////////////////////////////////


module PWDET(
    input               clk,            // clock
    input               reset,          // reset
    input               pwm_signal,     // PWM signal
    output logic [7:0]  duty_cycle      // computed duty cycle of the PWM signal
);
    
    // ==================================================
    // DEFINES
    // ==================================================
    typedef enum {
        S_FIRST_SAMPLE,                 // reset state, to sample the first signal
        S_WAIT_POSEDGE,                 // wait for a posedge from the PWM signal
        S_HIGH,                         // detecting high time
        S_LOW                           // detecting low time
    } state_t;
    
    // ==================================================
    // VARIABLES
    // ==================================================
    logic [31:0]    count_high;         // count high time
    logic [31:0]    count_low;          // count low time
    state_t         state;              // state of the FSM
    logic           last_signal;        // last sampled signal of the PWM
    logic [31:0]    result_add;         // intermediate addition result, to avoid setup time violation
    logic [31:0]    result_mul;         // intermediate multiplication result, to avoid setup time violation
    logic [1:0]     sync_signal_tmp;    // used for synchronizing signal
    logic           sync_signal;        // final synchronized signal 
    
    // ==================================================
    // LOGIC
    // ==================================================
    
    // synchronize signal from outside using double-synchronizer
    always_ff @(posedge clk) begin
        sync_signal_tmp[0] <= pwm_signal;
        sync_signal_tmp[1] <= sync_signal_tmp[0];
    end
    assign sync_signal = sync_signal_tmp[1]; 
    
    // compute intermediate results
    always_ff @(posedge clk) begin
        // period
        result_add <= count_high + count_low;
        
        // high time, scaled down to 0..99 (x99) and restored to original (x2) --> x198
        result_mul <= count_high * 198;
    end
    
    // implicit FSM
    always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            count_high <= 0;
            count_low <= 0;
            state <= S_FIRST_SAMPLE;
            last_signal <= 0;
            duty_cycle <= 0;
        end
        else begin
        
            // update last signal
            last_signal <= sync_signal;
        
            // state transition
            case (state)
                
                // --------------------------------------------------
                // transit to S_WAIT_POSEDGE
                // --------------------------------------------------
                S_FIRST_SAMPLE: begin
                    state <= S_WAIT_POSEDGE;
                end
                
                // --------------------------------------------------
                // wait for a posedge from the PWM signal to transit to S_HIGH
                // --------------------------------------------------
                S_WAIT_POSEDGE: begin
                    // wait for posedge for transition
                    if (~last_signal & sync_signal) begin
                        count_high <= 0;
                        state <= S_HIGH;
                    end
                end
                
                // --------------------------------------------------
                // wait for a negedge from the PWM signal to transit to S_LOW
                // --------------------------------------------------
                S_HIGH: begin
                    // wait for negedge for transition
                    if (last_signal & ~sync_signal) begin
                        count_low <= 0;
                        state <= S_LOW;
                    end
                
                    // count high time
                    count_high <= count_high + 1;
                end
                
                // --------------------------------------------------
                // wait for a posedge from the PWM signal to transit to S_HIGH
                // --------------------------------------------------
                S_LOW: begin
                    // wait for posedge for transition
                    if (~last_signal & sync_signal) begin
                        // compute duty cycle & transit
                        duty_cycle <= result_mul / result_add;
                        count_high <= 0;
                        state <= S_HIGH;
                    end
                
                    // count low time
                    count_low <= count_low + 1;
                end
            endcase
        end
    end

endmodule
