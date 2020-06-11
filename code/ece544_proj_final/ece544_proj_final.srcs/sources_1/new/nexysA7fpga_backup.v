`timescale 1ns / 1ps

// nexysA7fpga.v - Top level module for the Nexys A7 version of the ECE 544 Getting Started project
//
// Created By:	Roy Kravitz
// Date:		30-March-2020
// Version:		1.0
//
// Description:
// ------------
// This module provides the top level for the Getting Started hardware.
// The module assume that a PmodOLEDrgb is plugged into the JB 
// expansion ports and that a PmodENC is plugged into the JC expansion 
// port (top row).  I picked JB for the PmodOLEDrgb so that the text
// will be right side up when the switches and LEDs are on the bottom
// 
// Modifier:
// ------------
// ECE544 - Project 02
// Thong & Abhiraj
//////////////////////////////////////////////////////////////////////
module nexysA7fpga_backup(
    input				clk,			// 100Mhz clock input
    input				btnC,			// center pushbutton
    input				btnU,			// UP (North) pusbhbutton
    input				btnL,			// LEFT (West) pushbutton
    input				btnD,			// DOWN (South) pushbutton  - used for system reset
    input				btnR,			// RIGHT (East) pushbutton
	input				btnCpuReset,	// CPU reset pushbutton
    input	[15:0]		sw,				// slide switches on Nexys 4
    output	[15:0] 		led,			// LEDs on Nexys 4   
    output              RGB1_Blue,      // RGB1 LED (LD16) 
    output              RGB1_Green,
    output              RGB1_Red,
    output              RGB2_Blue,      // RGB2 LED (LD17)
    output              RGB2_Green,
    output              RGB2_Red,
    output [7:0]        an,             // Seven Segment display
    output [6:0]        seg,
    output              dp,             // decimal point display on the seven segment 
    
    input				uart_rtl_rxd,	// USB UART Rx and Tx on Nexys 4
    output				uart_rtl_txd,	
    
	output  [7:0]       JA,             // JA Pmod conector - Can be used for debugging purposes
    inout	[7:0] 		JB,				// JB Pmod connector - PmodOLEDrgb
    inout	[7:0] 		JC,				// JC Pmod connector - PmodEnc signals
	output	[7:0]		JD				// JD Pmod connector - Can be used for debugging purposes
);

// internal variables
// Clock and Reset 
wire				sysclk;             // 
wire				sysreset_n, sysreset;
wire                clk_out3_0;

// Rotary encoder pins
wire 				Pmod_out_0_pin1_i, Pmod_out_0_pin1_io, Pmod_out_0_pin1_o, Pmod_out_0_pin1_t;
wire 				Pmod_out_0_pin2_i, Pmod_out_0_pin2_io, Pmod_out_0_pin2_o, Pmod_out_0_pin2_t;
wire 				Pmod_out_0_pin3_i, Pmod_out_0_pin3_io, Pmod_out_0_pin3_o, Pmod_out_0_pin3_t;
wire 				Pmod_out_0_pin4_i, Pmod_out_0_pin4_io, Pmod_out_0_pin4_o, Pmod_out_0_pin4_t;
wire 				Pmod_out_0_pin7_i, Pmod_out_0_pin7_io, Pmod_out_0_pin7_o, Pmod_out_0_pin7_t; 
wire 				Pmod_out_0_pin8_i, Pmod_out_0_pin8_io, Pmod_out_0_pin8_o, Pmod_out_0_pin8_t; 
wire 				Pmod_out_0_pin9_i, Pmod_out_0_pin9_io, Pmod_out_0_pin9_o, Pmod_out_0_pin9_t;
wire 				Pmod_out_0_pin10_i,Pmod_out_0_pin10_io, Pmod_out_0_pin10_o, Pmod_out_0_pin10_t;
wire    [1:0]       PmodENC_AB_db;          // debounced signals of A & B pins

// GPIO pins 
wire	[7:0]	    gpio_in;				// embsys GPIO input port
wire	[7:0]	    gpio_out;				// embsys GPIO output port
wire    [31:0]      pwdet_in;               // pwdet info goes into embsys GPIO input port
wire    [15:0]      gpio_leds;              // embsys GPIO output port for LEDs
wire    [31:0]      gpio_buttons;           // embsys GPIO input port for buttons
wire    [31:0]      gpio_switches;          // embsys GPIO input port for switches

// OLED pins 
wire 				pmodoledrgb_out_pin1_i, pmodoledrgb_out_pin1_io, pmodoledrgb_out_pin1_o, pmodoledrgb_out_pin1_t; 
wire 				pmodoledrgb_out_pin2_i, pmodoledrgb_out_pin2_io, pmodoledrgb_out_pin2_o, pmodoledrgb_out_pin2_t; 
wire 				pmodoledrgb_out_pin3_i, pmodoledrgb_out_pin3_io, pmodoledrgb_out_pin3_o, pmodoledrgb_out_pin3_t; 
wire 				pmodoledrgb_out_pin4_i, pmodoledrgb_out_pin4_io, pmodoledrgb_out_pin4_o, pmodoledrgb_out_pin4_t; 
wire 				pmodoledrgb_out_pin7_i, pmodoledrgb_out_pin7_io, pmodoledrgb_out_pin7_o, pmodoledrgb_out_pin7_t; 
wire 				pmodoledrgb_out_pin8_i, pmodoledrgb_out_pin8_io, pmodoledrgb_out_pin8_o, pmodoledrgb_out_pin8_t; 
wire 				pmodoledrgb_out_pin9_i, pmodoledrgb_out_pin9_io, pmodoledrgb_out_pin9_o, pmodoledrgb_out_pin9_t; 
wire 				pmodoledrgb_out_pin10_i, pmodoledrgb_out_pin10_io, pmodoledrgb_out_pin10_o, pmodoledrgb_out_pin10_t;

// RGB LED 
wire                w_RGB1_Red, w_RGB1_Blue, w_RGB1_Green;

// LED pins 
wire    [15:0]      led_int;                // Nexys4IO drives these outputs

// PWM
wire    [7:0]       duty_cycle_R;           // computed duty cycle of R channel
wire    [7:0]       duty_cycle_G;           // computed duty cycle of G channel
wire    [7:0]       duty_cycle_B;           // computed duty cycle of B channel

// PmodHB3
wire                pmodhb3_PWM;
wire                pmodhb3_DIR;

// make the connections to the GPIO port.  Most of the bits are unused in the Getting
// Started project but GPIO's provide a convenient way to get the inputs and
// outputs from logic you create to and from the Microblaze.  For example,
// you may decide that using an axi_gpio peripheral is a good way to interface
// your hardware pulse-width detect logic with the Microblaze.  Our application
// is simple.
// Wrap the RGB led output back to the application program for software pulse-width detect
assign {w_RGB1_Red, w_RGB1_Green, w_RGB1_Blue} = {RGB1_Red, RGB1_Green, RGB1_Blue};
assign gpio_in = {5'b00000, w_RGB1_Red, w_RGB1_Green, w_RGB1_Blue};

// Drive the leds from the signal generated by the microblaze 
//assign led = led_int;                   // LEDs are driven by Nexys4 IO block (uncomment if use Nexys4 IO for driving LEDs)
assign led = gpio_leds;                 // LEDs are driven by GPIO output

// make the connections
// system-wide signals
assign sysclk = clk;
assign sysreset_n = btnCpuReset;		// The CPU reset pushbutton is asserted low.  The other pushbuttons are asserted high
										// but the Microblaze for Nexys 4 expects reset to be asserted low
assign sysreset = ~sysreset_n;			// Generate a reset signal that is asserted high for any logic blocks expecting it.

// Pmod OLED connections 
assign JB[0] = pmodoledrgb_out_pin1_io;
assign JB[1] = pmodoledrgb_out_pin2_io;
assign JB[2] = pmodoledrgb_out_pin3_io;
assign JB[3] = pmodoledrgb_out_pin4_io;
assign JB[4] = pmodoledrgb_out_pin7_io;
assign JB[5] = pmodoledrgb_out_pin8_io;
assign JB[6] = pmodoledrgb_out_pin9_io;
assign JB[7] = pmodoledrgb_out_pin10_io;

// JD connectors can be used for debug purposes
assign JD = 8'h00; 

// PmodENC signals
// JC - top row
// Pins are assigned such that turning the knob to the right
// causes the rotary count to increment.
assign  Pmod_out_0_pin1_io = JC[0];
assign  Pmod_out_0_pin2_io = JC[1];
assign  Pmod_out_0_pin3_io = JC[2];
assign  Pmod_out_0_pin4_io = JC[3];
assign  Pmod_out_0_pin7_io = JC[4];
assign  Pmod_out_0_pin8_io = JC[5];
assign  Pmod_out_0_pin9_io = JC[6];
assign  Pmod_out_0_pin10_io = JC[7];   

// PWM signal
assign pwdet_in = {8'h00, duty_cycle_R, duty_cycle_G, duty_cycle_B};

// PmodHB3: connect to JA
assign JA[0] = pmodhb3_DIR;     // DIR port on PmodHB3, driven from GPIO output
assign JA[1] = pmodhb3_PWM;     // EN port on PmodHB3, driven from GPIO output
assign JA[7:2] = 6'b000000;

// ==================================================
// INSTANCES
// ==================================================

// PWDET for R, G and B
PWDET pwdet_R (
    .clk(clk_out3_0),
    .reset(sysreset),
    .pwm_signal(w_RGB1_Red),
    .duty_cycle(duty_cycle_R)
);
PWDET pwdet_G (
    .clk(clk_out3_0),
    .reset(sysreset),
    .pwm_signal(w_RGB1_Green),
    .duty_cycle(duty_cycle_G)
);
PWDET pwdet_B (
    .clk(clk_out3_0),
    .reset(sysreset),
    .pwm_signal(w_RGB1_Blue),
    .duty_cycle(duty_cycle_B)
);

// debounce buttons & switches
debounce #(
    .CLK_FREQUENCY_HZ(100_000_000)
)debouncer(
    .clk(sysclk),
    .pbtn_in({1'b0, btnC, btnD, btnU, btnL, btnR}),
    .switch_in(sw),
    .pbtn_db({1'b0, gpio_buttons[4:0]}),
    .swtch_db(gpio_switches)
);

// PmodENC interrupt enabling: debounce & map 4 signals from PmodENC to gpio_buttons[11:8]
debounce #(
    .CLK_FREQUENCY_HZ(100_000_000)
)debouncer_PmodENC(
    .clk(sysclk),
    .pbtn_in({2'b00, Pmod_out_0_pin4_i, Pmod_out_0_pin3_i, Pmod_out_0_pin2_i, Pmod_out_0_pin1_i}),
    .switch_in(),
    .pbtn_db({2'b00, gpio_buttons[11:10], PmodENC_AB_db}),
    .swtch_db()
);

// Detect rotation from PmodENC
PmodENC_decode rotation_decoder(
    .clk(sysclk),
    .reset_n(sysreset_n),
    .enc_A(PmodENC_AB_db[0]),
    .enc_B(PmodENC_AB_db[1]),
    .pos(gpio_buttons[31:16])
);

// instantiate the embedded system
embsys EMBSYS
       (// PMOD OLED pins 
        .PmodOLEDrgb_out_0_pin10_i(pmodoledrgb_out_pin10_i),
	    .PmodOLEDrgb_out_0_pin10_o(pmodoledrgb_out_pin10_o),
	    .PmodOLEDrgb_out_0_pin10_t(pmodoledrgb_out_pin10_t),
	    .PmodOLEDrgb_out_0_pin1_i(pmodoledrgb_out_pin1_i),
	    .PmodOLEDrgb_out_0_pin1_o(pmodoledrgb_out_pin1_o),
	    .PmodOLEDrgb_out_0_pin1_t(pmodoledrgb_out_pin1_t),
	    .PmodOLEDrgb_out_0_pin2_i(pmodoledrgb_out_pin2_i),
	    .PmodOLEDrgb_out_0_pin2_o(pmodoledrgb_out_pin2_o),
	    .PmodOLEDrgb_out_0_pin2_t(pmodoledrgb_out_pin2_t),
	    .PmodOLEDrgb_out_0_pin3_i(pmodoledrgb_out_pin3_i),
	    .PmodOLEDrgb_out_0_pin3_o(pmodoledrgb_out_pin3_o),
	    .PmodOLEDrgb_out_0_pin3_t(pmodoledrgb_out_pin3_t),
	    .PmodOLEDrgb_out_0_pin4_i(pmodoledrgb_out_pin4_i),
	    .PmodOLEDrgb_out_0_pin4_o(pmodoledrgb_out_pin4_o),
	    .PmodOLEDrgb_out_0_pin4_t(pmodoledrgb_out_pin4_t),
	    .PmodOLEDrgb_out_0_pin7_i(pmodoledrgb_out_pin7_i),
	    .PmodOLEDrgb_out_0_pin7_o(pmodoledrgb_out_pin7_o),
	    .PmodOLEDrgb_out_0_pin7_t(pmodoledrgb_out_pin7_t),
	    .PmodOLEDrgb_out_0_pin8_i(pmodoledrgb_out_pin8_i),
	    .PmodOLEDrgb_out_0_pin8_o(pmodoledrgb_out_pin8_o),
	    .PmodOLEDrgb_out_0_pin8_t(pmodoledrgb_out_pin8_t),
	    .PmodOLEDrgb_out_0_pin9_i(pmodoledrgb_out_pin9_i),
	    .PmodOLEDrgb_out_0_pin9_o(pmodoledrgb_out_pin9_o),
	    .PmodOLEDrgb_out_0_pin9_t(pmodoledrgb_out_pin9_t),
	    
	    // GPIO pins 
        .gpio_buttons_tri_i(gpio_buttons),
        .gpio_leds_tri_o(gpio_leds),
        .gpio_switches_tri_i(gpio_switches),
        .gpio_out_tri_o(),                                      // unused output port, for now
        .gpio_hb3_EN_DIR_tri_o({pmodhb3_PWM, pmodhb3_DIR}),
        .gpio_hb3_RPM_tri_i(),                                  // RPM output from PmodHB3 IP, leave blank for now
        
        // Pmod Rotary Encoder
	    .Pmod_out_0_pin10_i(Pmod_out_0_pin10_i),
        .Pmod_out_0_pin10_o(Pmod_out_0_pin10_o),
        .Pmod_out_0_pin10_t(Pmod_out_0_pin10_t),
        .Pmod_out_0_pin1_i(Pmod_out_0_pin1_i),
        .Pmod_out_0_pin1_o(Pmod_out_0_pin1_o),
        .Pmod_out_0_pin1_t(Pmod_out_0_pin1_t),
        .Pmod_out_0_pin2_i(Pmod_out_0_pin2_i),
        .Pmod_out_0_pin2_o(Pmod_out_0_pin2_o),
        .Pmod_out_0_pin2_t(Pmod_out_0_pin2_t),
        .Pmod_out_0_pin3_i(Pmod_out_0_pin3_i),
        .Pmod_out_0_pin3_o(Pmod_out_0_pin3_o),
        .Pmod_out_0_pin3_t(Pmod_out_0_pin3_t),
        .Pmod_out_0_pin4_i(Pmod_out_0_pin4_i),
        .Pmod_out_0_pin4_o(Pmod_out_0_pin4_o),
        .Pmod_out_0_pin4_t(Pmod_out_0_pin4_t),
        .Pmod_out_0_pin7_i(Pmod_out_0_pin7_i),
        .Pmod_out_0_pin7_o(Pmod_out_0_pin7_o),
        .Pmod_out_0_pin7_t(Pmod_out_0_pin7_t),
        .Pmod_out_0_pin8_i(Pmod_out_0_pin8_i),
        .Pmod_out_0_pin8_o(Pmod_out_0_pin8_o),
        .Pmod_out_0_pin8_t(Pmod_out_0_pin8_t),
        .Pmod_out_0_pin9_i(Pmod_out_0_pin9_i),
        .Pmod_out_0_pin9_o(Pmod_out_0_pin9_o),
        .Pmod_out_0_pin9_t(Pmod_out_0_pin9_t),
        // RGB1/2 Led's 
        .RGB1_Blue_0(RGB1_Blue),
        .RGB1_Green_0(RGB1_Green),
        .RGB1_Red_0(RGB1_Red),
        .RGB2_Blue_0(RGB2_Blue),
        .RGB2_Green_0(RGB2_Green),
        .RGB2_Red_0(RGB2_Red),
        // Seven Segment Display anode control  
        .an_0(an),
        .dp_0(dp),
        .led_0(led_int),
        .seg_0(seg),
        // Push buttons and switches  
        .btnC_0(btnC),
        .btnD_0(btnD),
        .btnL_0(btnL),
        .btnR_0(btnR),
        .btnU_0(btnU),
        .sw_0(sw),
        // reset and clock 
        .sysreset_n(sysreset_n),
        .sysclk(sysclk),
        .clk_out3_0(clk_out3_0),
        // UART pins 
        .uart_rtl_0_rxd(uart_rtl_rxd),
        .uart_rtl_0_txd(uart_rtl_txd));
        
// Tristate buffers for the pmodOLEDrgb pins
// generated by PMOD bridge component.  Many
// of these signals are not tri-state.
IOBUF pmodoledrgb_out_pin1_iobuf
(
    .I(pmodoledrgb_out_pin1_o),
    .IO(pmodoledrgb_out_pin1_io),
    .O(pmodoledrgb_out_pin1_i),
    .T(pmodoledrgb_out_pin1_t)
);

IOBUF pmodoledrgb_out_pin2_iobuf
(
    .I(pmodoledrgb_out_pin2_o),
    .IO(pmodoledrgb_out_pin2_io),
    .O(pmodoledrgb_out_pin2_i),
    .T(pmodoledrgb_out_pin2_t)
);

IOBUF pmodoledrgb_out_pin3_iobuf
(
    .I(pmodoledrgb_out_pin3_o),
    .IO(pmodoledrgb_out_pin3_io),
    .O(pmodoledrgb_out_pin3_i),
    .T(pmodoledrgb_out_pin3_t)
);

IOBUF pmodoledrgb_out_pin4_iobuf
(
    .I(pmodoledrgb_out_pin4_o),
    .IO(pmodoledrgb_out_pin4_io),
    .O(pmodoledrgb_out_pin4_i),
    .T(pmodoledrgb_out_pin4_t)
);

IOBUF pmodoledrgb_out_pin7_iobuf
(
    .I(pmodoledrgb_out_pin7_o),
    .IO(pmodoledrgb_out_pin7_io),
    .O(pmodoledrgb_out_pin7_i),
    .T(pmodoledrgb_out_pin7_t)
);

IOBUF pmodoledrgb_out_pin8_iobuf
(
    .I(pmodoledrgb_out_pin8_o),
    .IO(pmodoledrgb_out_pin8_io),
    .O(pmodoledrgb_out_pin8_i),
    .T(pmodoledrgb_out_pin8_t)
);

IOBUF pmodoledrgb_out_pin9_iobuf
(
    .I(pmodoledrgb_out_pin9_o),
    .IO(pmodoledrgb_out_pin9_io),
    .O(pmodoledrgb_out_pin9_i),
    .T(pmodoledrgb_out_pin9_t)
);

IOBUF pmodoledrgb_out_pin10_iobuf
(
    .I(pmodoledrgb_out_pin10_o),
    .IO(pmodoledrgb_out_pin10_io),
    .O(pmodoledrgb_out_pin10_i),
    .T(pmodoledrgb_out_pin10_t)
);

// Tristate buffers for the pmodENC pins
// generated by PMOD bridge component.  Many
// of these signals are not tri-state.
IOBUF Pmod_out_0_pin1_iobuf
     (.I(Pmod_out_0_pin1_o),
      .IO(Pmod_out_0_pin1_io),
      .O(Pmod_out_0_pin1_i),
      .T(Pmod_out_0_pin1_t));
	  
IOBUF Pmod_out_0_pin2_iobuf
     (.I(Pmod_out_0_pin2_o),
      .IO(Pmod_out_0_pin2_io),
      .O(Pmod_out_0_pin2_i),
      .T(Pmod_out_0_pin2_t));
	  
IOBUF Pmod_out_0_pin3_iobuf
     (.I(Pmod_out_0_pin3_o),
      .IO(Pmod_out_0_pin3_io),
      .O(Pmod_out_0_pin3_i),
      .T(Pmod_out_0_pin3_t));
	  
IOBUF Pmod_out_0_pin4_iobuf
     (.I(Pmod_out_0_pin4_o),
      .IO(Pmod_out_0_pin4_io),
      .O(Pmod_out_0_pin4_i),
      .T(Pmod_out_0_pin4_t));
	  
IOBUF Pmod_out_0_pin7_iobuf
     (.I(Pmod_out_0_pin7_o),
      .IO(Pmod_out_0_pin7_io),
      .O(Pmod_out_0_pin7_i),
      .T(Pmod_out_0_pin7_t));
	  
IOBUF Pmod_out_0_pin8_iobuf
     (.I(Pmod_out_0_pin8_o),
      .IO(Pmod_out_0_pin8_io),
      .O(Pmod_out_0_pin8_i),
      .T(Pmod_out_0_pin8_t));
	  
IOBUF Pmod_out_0_pin9_iobuf
     (.I(Pmod_out_0_pin9_o),
      .IO(Pmod_out_0_pin9_io),
      .O(Pmod_out_0_pin9_i),
      .T(Pmod_out_0_pin9_t));
	  
IOBUF Pmod_out_0_pin10_iobuf
     (.I(Pmod_out_0_pin10_o),
          .IO(Pmod_out_0_pin10_io),
          .O(Pmod_out_0_pin10_i),
          .T(Pmod_out_0_pin10_t));

endmodule
