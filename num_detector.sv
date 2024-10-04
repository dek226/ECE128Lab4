`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Demetri Kostas
// Create Date: 09/27/2024 01:37:41 PM
// Design Name: ECE128Lab4
// Module Name: numDetector
// Revision:
// Revision 0.01 - File Created
//////////////////////////////////////////////////////////////////////////////////
module num_detector(num, led1, led2, led3, led4, led5);
	input [4:0] num;
	output reg led1, led2, led3, led4, led5;
	
	always@(*)
	begin
	led1 = 0;
	led2 = 0;
	led3 = 0;
	led4 = 0;
	led5 = 0;
		if ((num%2==0)&&(num%3==0)&&(num%5==0))
		begin
			led5 = 1;
		end
		if (num%2==0)
		begin
			led1 = 1;
		end
		if (num%3==0)
		begin
			led2 = 1;
		end
		if (num%4==0)
		begin
			led3 = 1;
		end
		if (num%5==0)
		begin
			led4 = 1;
		end
	end
endmodule
