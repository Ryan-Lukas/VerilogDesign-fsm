`timescale 1ns/1ps

module testbench;
reg[1:0] Switch, Button;
reg Clock;
wire [3:0] Q;

	SequentialCircuit UUT(.Switch(Switch),.Button(Button),.Clock(Clock),.Q(Q));

	
	
initial begin 
    Clock = 0;
 
 
	//Button[1] = reset
	//Button[0] = execute;
	
	Button[1] = 1; Button[0] = 0; #10; //S0
	Button[1] = 0; Switch = 2'b11; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b11; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b11; #5 
	Button[0] = 0; #10 //s29
	
	#100
	
	if(Q != 4'b1111)
		$error("error loading");
	$display("LOAD: %b", Q);
		
	
	Button[1] = 1; Button[0] = 0; #10; //S0
	Button[1] = 0; Switch = 2'b11; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b00; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b10; #5 
	Button[0] = 0; #10 //s29
	
	#100
	
	if(Q != 4'b1000)
		$error("error loading");
	$display("LOAD: %b", Q);
		
	Switch = 2'b01; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b01; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b10; #5 
	Button[0] = 0; #10 //s29
	
	#100
	if(Q != 4'b0010)
		$error("Not correct value");
	$display("Circular right shift of 1000 2 bits: %b", Q);
	
	//
	//
	//
	//
	//
	//
	//Test 1011 arithmatic right shift
	
	Button[1] = 1; Button[0] = 0; #10; //S0
	Button[1] = 0; Switch = 2'b11; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b11; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b10; #5 
	Button[0] = 0; #10 //s29
	
	#100
	
	if(Q != 4'b1011)
		$error("error loading");
	$display("LOAD: %b", Q);
	
	Switch = 2'b01; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b11; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b11; #5 
	Button[0] = 0; #10 //s29
	
	#100
	if(Q != 4'b1111)
		$error("Not correct value");
	$display("Arithmatic right shift of 1011 3 bits: %b", Q);
	
	//
	//
	//
	//
	//
	//
	//Test 1001 Logical Left shift
	
	Button[1] = 1; Button[0] = 0; #10; //S0
	Button[1] = 0; Switch = 2'b11; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b01; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b10; #5 
	Button[0] = 0; #10 //s29
	
	#100
	
	if(Q != 4'b1001)
		$error("error loading");
	$display("LOAD: %b", Q);
	
	Switch = 2'b10; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b10; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b01; #5 
	Button[0] = 0; #10 //s29
	
	#100
	if(Q != 4'b0010)
		$error("Not correct value");
	$display("Logical Left shift of 1001 1 bits: %b", Q);
	
	
	//
	//
	//
	//
	//
	//
	//Test 0110 Logical Right shift
	
	Button[1] = 1; Button[0] = 0; #10; //S0
	Button[1] = 0; Switch = 2'b11; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b10; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b01; #5 
	Button[0] = 0; #10 //s29
	
	#100
	
	if(Q != 4'b0110)
		$error("error loading");
	$display("LOAD: %b", Q);
	
	Switch = 2'b01; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b10; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b11; #5 
	Button[0] = 0; #10 //s29
	
	#100
	if(Q != 4'b0000)
		$error("Not correct value");
	$display("Logical Right shift of 0110 3 bits: %b", Q);
	
	
	//
	//
	//
	//
	//
	//
	//Test 0001 Arithmatic left shift
	
	Button[1] = 1; Button[0] = 0; #10; //S0
	Button[1] = 0; Switch = 2'b11; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b01; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b00; #5 
	Button[0] = 0; #10 //s29
	
	#100
	
	if(Q != 4'b0001)
		$error("error loading");
	$display("LOAD: %b", Q);
	
	Switch = 2'b10; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b11; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b10; #5 
	Button[0] = 0; #10 //s29
	
	#100
	if(Q != 4'b0100)
		$error("Not correct value");
	$display("Arithmatic left shift of 0001 2 bits: %b", Q);
	
	//
	//
	//
	//
	//
	//
	//Test 1011 Circular left shift
	
	Button[1] = 1; Button[0] = 0; #10; //S0
	Button[1] = 0; Switch = 2'b11; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b11; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b10; #5 
	Button[0] = 0; #10 //s29
	
	#100
	
	if(Q != 4'b1011)
		$error("error loading");
	$display("LOAD: %b", Q);
	
	Switch = 2'b10; Button[0] = 1; #10 //S1
	Button[0]= 0; #10 //S4
	Button[0] =1; #10 Switch = 2'b01; #5 //S5
	Button[0] = 0;#10// s9
	Button[0] =1; #10 Switch = 2'b01; #5 
	Button[0] = 0; #10 //s29
	
	#100
	if(Q != 4'b0111)
		$error("Not correct value");
	$display("Circular left shift of 1011 1 bits: %b", Q);
	
 
 
 end
	always #5 Clock = ~Clock; 
endmodule
