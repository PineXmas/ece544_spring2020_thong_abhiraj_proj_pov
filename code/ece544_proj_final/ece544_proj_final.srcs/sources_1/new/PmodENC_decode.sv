`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// ECE544 - Project 02
// Thong & Abhiraj
// --------------------
// This module decode the signals A and B from PmodENC and convert into rotation
// signals, every 1ms
//////////////////////////////////////////////////////////////////////////////////


module PmodENC_decode#(
    
)(
    input logic         clk,        // clock signal
    input logic         reset_n,    // reset active low
    input logic         enc_A,      // signal A from PmodENC
    input logic         enc_B,      // signal B from PmodENC
    
    output logic [7:0]  pos         // shaft position
    );
    
    // ==================================================
    // INTERNAL VARIABLES
    // ==================================================
    
    // previous values
    logic enc_A_last;
    logic enc_B_last;
    
    // ==================================================
    // LOGIC
    // ==================================================
    
    // determine rotation at every 1ms
    always_ff @ (posedge clk, negedge reset_n) begin
    
        if (~reset_n) begin
            pos <= 0;
            enc_A_last <= 1;
            enc_B_last <= 1;
        end
        else begin
            if (&{enc_A, ~enc_A_last, enc_B}) begin
                pos <= pos + 1;
            end
            else if (&{enc_B, ~enc_B_last, enc_A}) begin
                pos <= pos - 1;
            end
            
            // record enc_A & enc_B values
            enc_A_last <= enc_A;
            enc_B_last <= enc_B;
        end
    end
    
endmodule
