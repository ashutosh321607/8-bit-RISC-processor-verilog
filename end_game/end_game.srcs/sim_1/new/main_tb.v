`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2019 22:13:10
// Design Name: 
// Module Name: main_simu
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module main_simu;//(input clk,input reset,input interrupt, output [7:0] idata );
reg clk;
reg reset;
reg interrupt;
wire [7:0] idata;
wire [7:0] odata;
wire [3:0]anode;
wire [6:0]data;
wire  [7:0] value1;
wire [7:0] value2;
main main0(clk,reset,interrupt,idata,odata,anode,data,value1,value2);
 initial
       begin
        
               //$monitor("Clock: %b Reset: %b \nAddress (Datamem): %h Address: (Usermem): %h)\n Data (Datamem): %h Data (Usermem): %h R/W: %b\n Time: %d\n",clk,reset,datamem_address,usermem_address,datamem_data,usermem_data,rw,$time);
       clk = 1'b0;
       reset = 1'b1;
       interrupt = 1'b0;
       repeat(4) #10 clk = !clk;
       reset = 1'b0;
       #1;
       reset = 1'b1;
       #1;
       reset = 0'b0;
       #1;
       end
       always
               #1 clk = !clk;
endmodule
