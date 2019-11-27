`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2019 22:07:40
// Design Name: 
// Module Name: main
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


module main(input clk,input reset,input interrupt, output [7:0] idata, output [7:0] datamem_address, [3:0]anode, [6:0]data/*output [7:0] value1, output [7:0] value2*/);
    wire clk,clk_out, reset, interrupt;
    wire [7:0] datamem_data, usermem_data_in,usermem_data_out, datamem_address, usermem_address, idata;
    wire rw;
    wire [7:0] value1;
    wire [7:0]value2;
//    reg clr;
    sram sram0(reset, datamem_address,idata);
          seven_seg seven_seg0(clk,value2,value1,anode,data);
          cpu dut0(/*clr,*/clk_out, reset, interrupt, idata, usermem_data_in, 
                         datamem_address, usermem_address,usermem_data_out, rw, value1,value2
                         );
//    always@(posedge reset) begin
//      if(reset == 1) begin
//        clr = 1;
//        idata = 0;
//       end
//      else begin
//        clr = 0;
//      end
//     end
      clkDiv clkDiv0(clk,reset,clk_out);
      
endmodule
