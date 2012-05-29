module led_serializer (rst, clk50, r, g, b, o, oDONE, oNEXT, oLED);

// TODO: Clean up (i.e factor Next LED and take sample together)
// Dumb bug, 1st LED address is wrong
// Fix? Hack around-able by overflow-- I.E. LED 29
// Fix code, hack in place, or wrap with hack?
// FIX address widths?

	// Number of LEDs on bus, Zero indexed
	localparam MAXLED = 8'd119;
	
	//params:
	// 50,000,000 = 50mhz
	// 50m * .7us = 35 cycles
	// 50m * 1.3us = 65 cycles
	// 50m * 2.5us = 125 cycles
	// reset
	// 24us = 1200 cycles, counter =

parameter US7 = 12'd35;
parameter US13 = 12'd66;
parameter US25 = 12'd123;
parameter US240 = 12'd1200;

	// Set IO

	input rst;
	input clk50;
	input [7:0] r;
	input [7:0] g;
	input [7:0] b;
	output o;
	output oDONE;
	output oNEXT;
	output [15:0] oLED;
	
	reg out;
	reg colorBit;
	reg done;
	reg newLED;
	reg [15:0] num;		// Current LED in strand
	reg [11:0] cycle;	// Cycle counter
	reg [23:0] color;	// Saved RGB snapshot
	reg [6:0] index;		// bit counter
	reg [3:0] state, next;	// FSM state counter
	reg clrCycle;				// Clear cycles
	reg clrIdex;
	reg incIdex;
	reg incNum;
	reg clrNum;
	reg sampleColor;
	
	// Assign outs
	
	assign o=out;		// Output signal
	assign oNEXT = newLED;	// Ready for next LED
	assign oDONE = done;	// Sequence done
	assign oLED = num;	// Current LED number
	
//params:
// 50,000,000 = 50mhz
// 50m * .7us = 35 cycles
// 50m * 1.3us = 65 cycles
// 50m * 2.5us = 125 cycles
// reset
// 24us = 1200 cycles, counter =



// States 

  parameter S0  = 4'b0000,
            S1  = 4'b0001,
            S2  = 4'b0010,
            S3  = 4'b0011,
            S4  = 4'b0100,
            S5  = 4'b0101,
            S6  = 4'b0110,
            S7  = 4'b0111,
            S8  = 4'b1000,
            S3P  = 4'b1001;

// reg out;
// reg cycles;
// reg led;

always @ (posedge clk50, posedge rst) begin//, posedge rst) begin
	if (rst) begin 
		state <= S0;
		num <= 0;
		index <= 0;
	end
	else begin
		state <= next;
		colorBit <= color[index];
		if (sampleColor) color <= {b, g, r}; // Grab LED
		if (clrCycle) cycle <= 12'b0;
		else cycle <= cycle + 1'b1;
		if (clrIdex) index <= 0;
		if (incIdex) index <= index + 1;
		if (clrNum) num <= 0;
		if (incNum) num <= num + 1;
	end
end

always @ (state or cycle) begin
	next = S0;
	clrCycle = 0;
	clrIdex = 0;
	clrNum = 0;
	incIdex = 0;
	incNum = 0;
	sampleColor = 0;
	case (state)
	// State 0 - Master Reset
		S0	:	begin
					//cycle = 0;	// Don't count cycles
					clrCycle = 1'b1; // Clear Cycles
					//num = 8'b0; 	// Start at LED number 0
					done = 1'b0;	// We are not done
					newLED = 1'b1; // About to grab an LED
					sampleColor = 1;
					out = 1'b0;		// No output yet
					//color = 24'b0;	// No color yet
					// THIS IS REDUNDANT // clrNum = 1'b1;
					next = S1;	// Go grab a color
					
				end
				
	// STATE 1 - Reset
	//	+ Save R, G, B to index[24]
	//	+ Set Done to False
	//	+ Zero cycle count
	//	+ Set next to 2
	//	+ Set out to 0
	//	+ Set bitNo to 0
	
		S1 :	begin
					newLED = 1'b0; // Done grabbing led
					//cycle = 0; // Clear cycles
					clrCycle = 1'b11;
					clrIdex = 1'b1;
					out = 1'b0; // Output
					next = S2; // Send initial Pulse
				end
				
		// Send ON for .7us, then BIT, then off.
		S2 : begin
					//clrCycle = 0;
					//next = S2;
					//out = (cycle < US7) ? 1 : ((cycle < US13) ? color[index] : 0);
					out = (cycle < US7) ? 1 : ((cycle < US13) ? colorBit : 0);
					if (cycle > US25) begin
						next = S3P;
						clrCycle = 1'b1;
						//next = S4;
					end
					else next = S2;
				end
				
		S3P: begin
			out = 0;
			incIdex = 1;
			next = S3;
		end
		
		S3 : begin
				//next = S3;
					out = 0;
					clrCycle = 1;
					if (index < 7'd24) begin
						next = S2;
					end else begin
						if (num < MAXLED) begin
							clrIdex = 1'b1;
							incNum = 1'b1;
							newLED = 1'b1;
							sampleColor = 1;
							next = S1;
							//next = S5; //lol
						end else begin
							next = S4;
						end
						
					end
			  end
		
		S4	: begin
					out = 0;
					if (cycle < US240) next = S4;
					else begin
						next = S5;
						//done = 1;
					end
			end

		S5: begin
					done = 1;
					out = 1'b0; // bz?
					next = S5;
			 end
		
		endcase
end


// STATE 2 - First 0.7 us
//	+ Set out to 1
//	+ Set next to 2 until cycle = 0.7
//	+ Increment cycle count
//	+ if cycle is .7 us go to 3

// STATE 3 - Next 0.7 us
//	out = (cycle < 65 ) ? index[bitNo] : 1'b0;
//	+ Increment cycle count
//	+ if cycle => 125
//		next state = 4

// State 4 - Advance and check bitcounter	

endmodule


/*
module led_serializer (rst, clk50, r, g, b, o, oDONE, oNEXT, oLED);

	// Set IO

	input rst;
	input clk50;
	input [7:0] r;
	input [7:0] g;
	input [7:0] b;
	output o;
	output oDONE;
	output oNEXT;
	output [7:0] oLED;
	
	// Set REGs
	
	reg out;
	reg done;
	reg newLED;
	reg [7:0] num;		// Current LED in strand
	reg [10:0] cycle;	// Cycle counter
	reg [23:0] color;	// Saved RGB snapshot
	reg [4:0] index;		// bit counter
	reg [3:0] state, next;	// FSM state counter
	reg clrCycle;				// Clear cycles
	
	// Assign outs
	
	assign o=out;		// Output signal
	assign oNEXT = newLED;	// Ready for next LED
	assign oDONE = done;	// Sequence done
	assign oLED = num;	// Current LED number

//params:
// 50,000,000 = 50mhz
// 50m * .7us = 35 cycles
// 50m * 1.3us = 65 cycles
// 50m * 2.5us = 125 cycles
// reset
// 24us = 1200 cycles, counter =

// MaxLEDs, Zero indexed
localparam MAXLED = 8'd29;

parameter US7 = 11'd35;
parameter US13 = 11'd64;
parameter US25 = 11'd124;
parameter US240 = 11'd1200;


// States 

  parameter S0  = 4'b0000,
            S1  = 4'b0001,
            S2  = 4'b0010,
            S3  = 4'b0011,
            S4  = 4'b0100,
            S5  = 4'b0101,
            S6  = 4'b0110,
            S7  = 4'b0111,
            S8  = 4'b1000,
            S9  = 4'b1001;

// reg out;
// reg cycles;
// reg led;

always @ (posedge clk50 or posedge rst) begin//, posedge rst) begin
	if (rst) state <= S0;
	else begin
		state <= next;
		if (clrCycle) cycle <= 0;
		else cycle <= cycle + 1;
	end
end

always @ (state or cycle or index or num) begin
	next = 4'bx;
	clrCycle = 0;
	case (state)
	
	// State 0 - Master Reset
		S0	:	begin
					//cycle = 0;	// Don't count cycles
					clrCycle = 1; // Clear Cycles
					num = 0; 	// Start at LED number 0
					done = 0;	// We are not done
					newLED = 1; // About to grab an LED
					out = 0;		// No output yet
					color = 0;	// No color yet
					next = S1;	// Go grab a color
				end
				
	// STATE 1 - Reset
	//	+ Save R, G, B to index[24]
	//	+ Set Done to False
	//	+ Zero cycle count
	//	+ Set next to 2
	//	+ Set out to 0
	//	+ Set bitNo to 0
	
		S1 :	begin
					color = {r, g, b}; // Grab LED
					newLED = 0; // Done grabbing led
					//cycle = 0; // Clear cycles
					clrCycle = 1;
					index = 0; // Zero Bit
					out = 0; // Output
					next = S2; // Send initial Pulse
				end
				
		// Send ON for .7us, then BIT, then off.
		S2 : begin
					out = (cycle < US7) ? 1 : ((cycle < US13) ? color[index] : 0);
					if (cycle < US25) next = S2;
					else next = S3;
				end
				
		S3 : begin
					out = 0;
					clrCycle = 1;
					if (index < 23) begin
						//done = 1; // test
						index = index + 1'b1;
						//num = num + 1; // test
						next = S2;
					end else
					if (num < MAXLED) begin
						newLED = 1'b1;
						num = num + 1'b1;
						next = S1;
					end else next = S4;
			  end
		
		S4	: begin
					out = 1'b0;
					if (cycle < US240) next = S4;
					else begin
						next = S5;
						done = 1;
					end
			end

		S5: begin
					done = 1'b1;
					out = 1'bz;
					next = S5;
					num = 8'hFF;
			 end
		
		endcase
end


// STATE 2 - First 0.7 us
//	+ Set out to 1
//	+ Set next to 2 until cycle = 0.7
//	+ Increment cycle count
//	+ if cycle is .7 us go to 3

// STATE 3 - Next 0.7 us
//	out = (cycle < 65 ) ? index[bitNo] : 1'b0;
//	+ Increment cycle count
//	+ if cycle => 125
//		next state = 4

// State 4 - Advance and check bitcounter	

endmodule

*/
