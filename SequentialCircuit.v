module SequentialCircuit(Switch, Button, Clock, Q);
input [1:0] Switch, Button;
input Clock;
output[3:0] Q;
wire [6:0] Output;


	FSM X1(.Switch(Switch),.Button(Button),.Clock(Clock),.Output(Output));
	UniversalShift X2(Output[6:4],Output[3:0],Clock,Q);
	

endmodule
