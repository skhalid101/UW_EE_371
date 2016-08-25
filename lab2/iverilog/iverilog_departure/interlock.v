// EDIT 4/28/2016: Added "waiting" and "finish" test variables for debugging
module interlock(
						filling, 
						draining, 
						innerDoor, 
						outerDoor, 
						resetLeds, 
						bathLeaving, 
						bathArriving, 
						personCheck, 
						pressureCheck, 
						drain, 
						fill, 
						innerDoorSwitch, 
						outerDoorSwitch, 
						clk, 
						reset, 
						drainFinished, 
						fillFinished, 
						waitFinished, 
						waiting, 		// Added
						finish,			// Added
						h5, 
						h4
					);
	
	input bathLeaving, 
			bathArriving, 
			personCheck, 
			pressureCheck, 
			drain, 
			fill,
			innerDoorSwitch, 
			outerDoorSwitch, 
			clk,
			reset,
			waitFinished,
			drainFinished, 
			fillFinished;
			
	output reg innerDoor, 
				  outerDoor;
	output reg [3:0] resetLeds; // Present state of the machine
	
	// Initialize added variables to 0
	initial begin
		waiting = 0;
		finish = 0;
	end
	
	output reg 	filling, 
				draining, 
				waiting,
				finish;
				  
	output reg h5, h4; // Displays 		  
				  
	reg [3:0] ps;
	
	wire nReset;
	not resetNot (nReset , reset);

	parameter [3:0] closedLow = 4'b0100, 
					closedHigh = 4'b0101;
	parameter [3:0] outerOpen = 4'b0110, 
					innerOpen = 4'b0111;
	parameter [3:0] swChkOutOpen = 4'b1000, 
					swChkOutClose = 4'b1001;
	parameter [3:0] swChkInOpen = 4'b1010, 
					swChkInClose = 4'b1011;
	parameter [3:0] timerFill = 4'b1100, 
					timerDrain = 4'b1101;
	parameter [3:0] resetting = 4'b0000, 
					pressureStatus = 4'b0001;
	parameter [3:0] doorStatus = 4'b0010, 
					waiting5 = 4'b0011;
	parameter [3:0] closedLowIn = 4'b1110;
	parameter [6:0] i = ~7'b0000110, 
						 n = ~7'b0110111, 
						 off = ~7'b0000000;
	parameter [3:0] bufferState = 4'b1111;
	
	
	
	
	always@(posedge clk) begin
		if (nReset) begin
				ps <= closedLow;
				resetLeds [3:0] <= closedLow;
				innerDoor <= 1'b0;
				outerDoor <= 1'b0;
				draining <= 0;
				filling <= 0;
		end else begin
			case (ps)
				resetting: begin
					if (!personCheck && !pressureCheck && !bathLeaving) begin
						ps <= timerFill;
						innerDoor <= 1'b0;
						outerDoor <= 1'b0;
						resetLeds <= timerFill;
					end
					else if (bathLeaving && !pressureCheck && !personCheck)
					begin 
					       ps <=swChkInOpen ;
							 resetLeds <= swChkInOpen; 
							 innerDoor <= 1'b1; 
					end 
					else if (pressureCheck && bathLeaving) 
					begin
					      ps <= timerDrain ;
							resetLeds <= timerDrain; 
							draining <= 1 ; 
							
					end 
					else if(!personCheck && pressureCheck)
					begin 
					     ps <= swChkOutOpen;
						  resetLeds <= swChkOutOpen;
						  outerDoor <= 1'b1; 
				   end 
					else if ( personCheck && !pressureCheck) 
					begin
				         ps <= swChkInOpen;
						   resetLeds <= swChkInOpen;
						   innerDoor <= 1'b1; 	
					end 
				end
				
				// Check the door status. Both the inner door and outter door
				// must be closed before moving to next state (checking pressure)
				doorStatus: begin
					if (!outerDoorSwitch && !innerDoorSwitch) begin
						ps <= pressureStatus;
						resetLeds <= pressureStatus; 
					end
				end
				
				pressureStatus: begin
					if (!pressureCheck) begin
						ps <= closedLow;
						resetLeds <= closedLow;
					end else begin
						ps <= timerDrain;
						draining <= 1;
						resetLeds <= timerDrain;
					end
				end
				
				closedLow: begin
					if (bathArriving) begin
							ps <= waiting5;
							waiting <= 1'b1;
							resetLeds <= waiting5;
					end else 
					if(bathLeaving) begin
							ps <= waiting5;
							innerDoor <= 1'b0;
							outerDoor <=1'b0;
							waiting <= 1'b1;
							resetLeds <= waiting5;
					end else 
					if (innerDoorSwitch) begin
						ps <= closedLow;
						innerDoor <= 1'b1;
						h5 <= i;
						h4 <= n;
						resetLeds <= closedLow;
					end	
				end
				
				closedLowIn: begin 
					if (!innerDoorSwitch) begin
						innerDoor <=1'b1; 
						ps <= closedLowIn;
						resetLeds <= closedLowIn;
					end else 
					if (innerDoorSwitch) begin 
						innerDoor <= 1'b1;
						h5 <=i;
						h4 <=n;
						ps <= swChkInOpen;
						resetLeds <= swChkInOpen;
					end 
					end  
				
				
				closedHigh: begin
					if (bathArriving && !outerDoor) begin
						ps <= swChkOutOpen;
						outerDoor <= 1'b1;
						resetLeds <= swChkOutOpen;
					end 
					else if (bathLeaving) begin
						ps <= swChkOutOpen;
						outerDoor <= 1'b1;
						resetLeds <= swChkOutOpen;
					end
				end
				
				outerOpen: begin
					if (outerDoorSwitch) begin
						h5 <= i;
						h4 <= n;
						ps <= outerOpen;
						outerDoor <= 1'b1;
						resetLeds <= outerOpen;
					end else if (!outerDoorSwitch) begin 
						h5 = i;
						h4 = n;
						outerDoor <= 1'b0;
						ps <= swChkOutClose;
						resetLeds <= swChkOutClose;
					end
				end
				
				innerOpen: begin
					if (!bathLeaving) begin
						ps <= swChkInClose;
						innerDoor <= 1'b0;
						resetLeds <= swChkInClose;
					end
				end
				
				swChkOutOpen: begin
					if (outerDoorSwitch && !personCheck) begin
						ps <= outerOpen;
						resetLeds <= outerOpen;
					end
				end
				
				swChkOutClose: begin
					if (!outerDoorSwitch && !personCheck) begin
						ps <= timerDrain;
						draining <= 1'b1;
						resetLeds <= timerDrain;
					end
				end
				
				swChkInOpen: begin
					if (!innerDoorSwitch) begin
						ps <= swChkInOpen;
						innerDoor = 1'b1;
						resetLeds = swChkInOpen;
					end 
					else if (innerDoorSwitch)
					begin
					     ps<= swChkInClose;
						  innerDoor <= 1'b1; 
						  resetLeds <= swChkInClose;
					end 
				end
				
				swChkInClose: begin
				        if (!innerDoorSwitch && bathLeaving && !bathArriving) 
						  begin
						        ps <= timerFill;
								  resetLeds <= timerFill;
								  innerDoor <= 1'b0;  
						  end 
						  else if (!innerDoorSwitch && bathArriving && !bathLeaving)
						  begin
									ps <= timerFill;
									resetLeds <= timerFill; 
								   innerDoor <= 1'b0;
						  end
					else if (!innerDoorSwitch && !personCheck) begin
						ps <= bufferState;
						innerDoor <= 1'b0;
						resetLeds <= bufferState;
					end
				end
				
				timerDrain: begin
					if (drainFinished) begin
						ps <= closedLowIn;
						draining <= 1'b0;
						resetLeds <= closedLowIn;
					end
				end
				
				timerFill: begin	
					filling<=1'b1;
					if (fillFinished) begin
						ps <= closedHigh;
						filling <= 1'b0;
						resetLeds <= closedHigh;
					end
				end
				
				waiting5: begin
					finish <= waitFinished;
					if (waitFinished) begin
					   if (bathArriving || bathLeaving) 
						begin
					        ps <= resetting;
							  resetLeds<= resetting;  
						end 
						waiting <= 1'b0;
					end
				end
				
				bufferState: begin
					if (bathArriving) begin 
						ps <= bufferState;
						resetLeds <= bufferState;
					end else 
					if (bathLeaving) begin
						ps <= bufferState;
						resetLeds <= bufferState;
					end else begin 
						ps <= closedLow;
						resetLeds <= closedLow;
					end 
				end 
				
				default: resetLeds [3:0] <= 4'b0001;
				
			endcase
		end
	end

endmodule

