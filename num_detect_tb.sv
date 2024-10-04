`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Demetri Kostas
// Create Date: 09/27/2024 01:53:37 PM 
// Module Name: num_detect_tb
// Revision:
// Revision 0.01 - File Created 
//////////////////////////////////////////////////////////////////////////////////


module num_detect_tb;
    reg [4:0] num;
    wire led1, led2, led3, led4, led5;
    
    num_detector DUT(num, led1, led2, led3, led4, led5);
    
    integer i;
    initial begin
        #10 num= 0;
        #10 num= 30;
        #10 num= 15;
        #10 num= 0;
        for(i=1; i<11; i=i+1)
        begin
            #10 num=i;
        end
        #10 $stop;
    end
endmodule
