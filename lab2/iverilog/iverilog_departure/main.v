// EDITS: 4/28/2016: Added "waiting", "wait_var", "finish", and
//		  "finished_var" test variables for debugging.

module main(CLOCK_50, LEDR, SW, KEY, HEX0, HEX1, HEX4, HEX5, wait_var, finished_var);
	
	input [3:0] KEY;
	input [9:0] SW;
	input CLOCK_50;
	
	output [6:0] HEX0 , HEX1, HEX5, HEX4;
	output [9:0] LEDR;
	output wire wait_var, finished_var;
	
	wire filling , draining, fillFinished, drainFinished, waiting, waitFinished;
	wire [3:0] drainVal, fillVal, waitVal;
	wire [6:0] letter, number;
	
	assign HEX1 = letter;
	assign HEX0 = number;
	assign HEX5 = h5;
	assign HEX4 = h4; 

	assign LEDR[9] = SW[9];
	assign LEDR[8] = SW[8];	
	assign LEDR[1:0] = SW[1:0];
	assign wait_var = waiting;
	assign finished_var = finish;
	
	/*reg [25:0] tBase;
	always@(posedge CLOCK_50) begin
		tBase <= tBase + 1'b1;
	end*/

	interlock inter(
							.draining(draining), 
							.filling(filling), 
							.innerDoor(LEDR[3]),
							.outerDoor(LEDR[2]), 
							.resetLeds(LEDR[7:4]),
							.bathLeaving(SW[1]), 
							.bathArriving(SW[0]), 
							.personCheck(SW[8]),
							.pressureCheck(SW[9]), 
							.innerDoorSwitch(SW[3]), 
							.outerDoorSwitch(SW[2]), 
							.clk(CLOCK_50), 
							.reset(KEY[0]), 
							.drain(KEY[2]),
							.fill(KEY[1]),
							.fillFinished(fillFinished), 
							.drainFinished(drainFinished),
							.waitFinished(waitFinished),
							.waiting(waiting),
							.finish(finish),
							.h5(h5),
							.h4(h4)
						);

	display disp(
						.letter(letter), 
						.num(number), 
						.clk(CLOCK_50), 
						.drainVal(drainVal), 
						.fillVal(fillVal),
						.draining(draining), 
						.filling(filling),
						.waiting(waiting), 
						.waitVal(waitVal)
					);
	
	timer pressurize(
							.val(fillVal),
							.finished(fillFinished), 
							.clk(CLOCK_50), 
							.startingVal(4'b0111), 
							.change(!KEY[1]), 
							.start(filling)
						);
	
	timer depressurize(
								.val(drainVal), 
								.finished(drainFinished), 
								.clk(CLOCK_50), 
								.startingVal(4'b1000), 
								.change(!KEY[2]), 
								.start(draining)
							);

	timer waiting5Sec(
								.val(waitVal), 
								.finished(waitFinished), 
								.clk(CLOCK_50), 
								.startingVal(4'b0101), 
								.change(1'b1),
								.start(waiting)
							);

endmodule


