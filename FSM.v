module FSM(Switch, Button,Clock, Output);
	input Clock;
	input [1:0] Switch, Button;
	output reg [6:0] Output;

	reg [8:0] NS,PS;

		
	parameter [7:0] S0= 8'd0, S1 = 8'd1, S2 = 8'd2,S3 =  8'd3, S4 =  8'd4, S5 =  8'd5,  S6 =  8'd6, S7 =  8'd7, S8 =  8'd8, S9 =  8'd9,
	S10= 8'd10, S11 = 8'd11, S12 = 8'd12,S13 =  8'd13, S14 =  8'd14, S15 =  8'd15,  S16 =  8'd16, S17 =  8'd17, S18 =  8'd18, S19 =  8'd19,
	S20= 8'd20, S21 = 8'd21, S22 = 8'd22,S23 =  8'd23, S24 =  8'd24, S25 =  8'd25,  S26 =  8'd26, S27 =  8'd27, S28 =  8'd28, S29 =  8'd29,
	S30= 8'd30, S31 = 8'd31, S32 = 8'd32,S33 =  8'd33, S34 =  8'd34, S35 =  8'd35,  S36 =  8'd36, S37 =  8'd37, S38 =  8'd38, S39 =  8'd39,
	S40= 8'd40, S41 = 8'd41, S42 = 8'd42,S43 =  8'd43, S44 =  8'd44, S45 =  8'd45,  S46 =  8'd46, S47 =  8'd47, S48 =  8'd48, S49 =  8'd49,
	S50= 8'd50, S51 = 8'd51, S52 = 8'd52,S53 =  8'd53, S54 =  8'd54, S55 =  8'd55,  S56 =  8'd56, S57 =  8'd57, S58 =  8'd58, S59 =  8'd59,
	S60= 8'd60, S61 = 8'd61, S62 = 8'd62,S63 =  8'd63, S64 =  8'd64, S65 =  8'd65,  S66 =  8'd66, S67 =  8'd67;
	
	
	always @(posedge Button[1], posedge Clock)begin
		if(Button[1] == 1)begin
			PS <= S0;
			end
		else PS <= NS;
	end
	
	always @(PS, Button[0])begin//*
		case(PS)
			
				S0:begin
						if(Button[0])begin
							NS <= S1;
							Output[6:4] <= 3'b000;
					end
				end
				
				S1:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S1;
						else if(Switch == 2'b01)
							NS <= S2;
						else if(Switch == 2'b10)
							NS <= S3;
						else if(Switch == 2'b11)
							NS <= S4;
					end
				
				S2:if(Button[0])
					NS <= S30;
					
				S3:if(Button[0])
					NS <= S49;
					
				S4:if(Button[0])
					NS <= S5;
				
				S5:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S6;
						else if(Switch == 2'b01)
							NS <= S7;
						else if(Switch == 2'b10)
							NS <= S8;
						else if(Switch == 2'b11)
							NS <= S9;
					end
				
				S6:begin
					Output[1:0] <= 2'b00;
					if(Button[0])
						NS <= S10;
					end
			
				S7:begin
					Output[1:0] <= 2'b01;
					if(Button[0])
						NS <= S15;
					end
					
				S8:begin
					Output[1:0] <= 2'b10;
					if(Button[0])
						NS <= S20;
					end
					
				S9:begin
					Output[1:0] <= 2'b11;
					if(Button[0])
						NS <= S25;
					end
				
				S10:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S11;
						else if(Switch == 2'b01)
							NS <= S12;
						else if(Switch == 2'b10)
							NS <= S13;
						else if(Switch == 2'b11)
							NS <= S14;
					end
					
				S11:begin
						Output[3:2] <= 2'b00;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
				
				S12:begin
						Output[3:2] <= 2'b01;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
				
				S13:begin
						Output[3:2] <= 2'b10;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
					
				S14:begin
						Output[3:2] <= 2'b11;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
					
				S15:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S16;
						else if(Switch == 2'b01)
							NS <= S17;
						else if(Switch == 2'b10)
							NS <= S18;
						else if(Switch == 2'b11)
							NS <= S19;
					end
					
				S16:begin
						Output[3:2] <= 2'b00;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
				
				S17:begin
						Output[3:2] <= 2'b01;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
				
				S18:begin
						Output[3:2] <= 2'b10;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
					
				S19:begin
						Output[3:2] <= 2'b11;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
					
				S20:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S21;
						else if(Switch == 2'b01)
							NS <= S22;
						else if(Switch == 2'b10)
							NS <= S23;
						else if(Switch == 2'b11)
							NS <= S24;
					end
				
				S21:begin
						Output[3:2] <= 2'b00;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
				
				S22:begin
						Output[3:2] <= 2'b01;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
				
				S23:begin
						Output[3:2] <= 2'b10;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
					
				S24:begin
						Output[3:2] <= 2'b11;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
					
				S25:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S26;
						else if(Switch == 2'b01)
							NS <= S27;
						else if(Switch == 2'b10)
							NS <= S28;
						else if(Switch == 2'b11)
							NS <= S29;
					end
				
				S26:begin
						Output[3:2] <= 2'b00;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
				
				S27:begin
						Output[3:2] <= 2'b01;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
				
				S28:begin
						Output[3:2] <= 2'b10;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
					
				S29:begin
						Output[3:2] <= 2'b11;
						Output[6:4] <= 3'b111;
						NS <= S0;
					end
					
				S30:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S2;
						else if(Switch == 2'b01)
							NS <= S31;
						else if(Switch == 2'b10)
							NS <= S32;
						else if(Switch == 2'b11)
							NS <= S33;
					end
					
				S31:if(Button[0])
					NS <= S34;
				
				S32:if(Button[0])
					NS <= S39;
				
				S33:if(Button[0])
					NS <= S44;
				
				S34:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S35;
						else if(Switch == 2'b01)
							NS <= S36;
						else if(Switch == 2'b10)
							NS <= S37;
						else if(Switch == 2'b11)
							NS <= S38;
					end
					
				S35:begin
						Output[6:4] <= 3'b000;
						NS <= S0;
					end
				
				S36:begin
						Output[6:4] <= 3'b001;
						NS <= S35;
					end
					
				S37:begin
						Output[6:4] <= 3'b001;
						NS <= S36;
					end

				S38:begin
						Output[6:4] <= 3'b001;
						NS <= S37;
					end

				S39:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S40;
						else if(Switch == 2'b01)
							NS <= S41;
						else if(Switch == 2'b10)
							NS <= S42;
						else if(Switch == 2'b11)
							NS <= S43;
					end
					
				S40:begin
						Output[6:4] <= 3'b000;
						NS <= S0;
					end
				
				S41:begin
						Output[6:4] <= 3'b011;
						NS <= S40;
					end
					
				S42:begin
						Output[6:4] <= 3'b011;
						NS <= S41;
					end

				S43:begin
						Output[6:4] = 3'b011;
						NS <= S42;
					end
				
				S44:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S45;
						else if(Switch == 2'b01)
							NS <= S46;
						else if(Switch == 2'b10)
							NS <= S47;
						else if(Switch == 2'b11)
							NS <= S48;
					end
					
				S45:begin
						Output[6:4] <= 3'b000;
						NS <= S0;
					end
				
				S46:begin
						Output[6:4] <= 3'b101;
						NS <= S45;
					end
					
				S47:begin
						Output[6:4] <= 3'b101;
						NS <= S46;
					end

				S48:begin
						Output[6:4] <= 3'b101;
						NS <= S47;
					end
				
				S49:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S3;
						else if(Switch == 2'b01)
							NS <= S50;
						else if(Switch == 2'b10)
							NS <= S56;
						else if(Switch == 2'b11)
							NS <= S62;
					end
				
				S50:if(Button[0])
					NS <= S51;
				
				S51:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S52;
						else if(Switch == 2'b01)
							NS <= S53;
						else if(Switch == 2'b10)
							NS <= S54;
						else if(Switch == 2'b11)
							NS <= S55;
					end
					
				S52:begin
						Output[6:4] <= 3'b000;
						NS <= S0;
					end
				
				S53:begin
						Output[6:4] <= 3'b010;
						NS <= S52;
					end
					
				S54:begin
						Output[6:4] <= 3'b010;
						NS <= S53;
					end

				S55:begin
						Output[6:4] <= 3'b010;
						NS <= S54;
					end
					
				S56:if(Button[0])
					NS <= S57;
					
				S57:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S58;
						else if(Switch == 2'b01)
							NS <= S59;
						else if(Switch == 2'b10)
							NS <= S60;
						else if(Switch == 2'b11)
							NS <= S61;
					end
					
				S58:begin
						Output[6:4] <= 3'b000;
						NS <= S0;
					end
				
				S59:begin
						Output[6:4] <= 3'b100;
						NS <= S58;
					end
					
				S60:begin
						Output[6:4] <= 3'b100;
						NS <= S59;
					end

				S61:begin
						Output[6:4] <= 3'b100;
						NS <= S60;
					end
					
				S62:if(Button[0])
					NS <= S63;
					
				S63:if(!Button[0])begin
						if(Switch == 2'b00)
							NS <= S64;
						else if(Switch == 2'b01)
							NS <= S65;
						else if(Switch == 2'b10)
							NS <= S66;
						else if(Switch == 2'b11)
							NS <= S67;
					end
					
				S64:begin
						Output[6:4] <= 3'b000;
						NS <= S0;
					end
				
				S65:begin
						Output[6:4] <= 3'b110;
						NS <= S64;
					end
					
				S66:begin
						Output[6:4] <= 3'b110;
							NS <= S65;
					end

				S67:begin
						Output[6:4] <= 3'b110;
						NS <= S65;
					end
		
				default: NS <=S0;
		endcase
		
	
	end

	
endmodule
