Finite state machines
==============

Ryan Lukas

ECE 3700 - Digital System Design - Spring 2019

*Verilog*

Background
------------

I designed a circuit that implements the below functions and downloaded the circuit onto an FPGA. 

```
A Moore machine has two inputs (X1,X0) and one output (Z). Its behavior is specified as follows:

•An input sequence of 00 followed by 11 causes the output to change to 0.

•An input sequence of 01 followed by 11 causes the output to change to 1.

•An input sequence of 10 followed by 11 causes the output to change value.

•Any other inputs cause the output to remain unchanged.

```


