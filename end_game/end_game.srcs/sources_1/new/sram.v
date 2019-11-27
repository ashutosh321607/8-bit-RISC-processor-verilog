`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2019 20:12:38
// Design Name: 
// Module Name: sram
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


module sram(
    input wire reset,
    input wire [7:0] mem_address, 
    output [7:0] o_data 
    );

    reg [7:0] memory_array [0:255]; 
    always @(posedge reset)
    begin
       memory_array[2] = 8'h80;
       memory_array[3] = 8'h01;
       memory_array[4] = 8'h81;
       memory_array[5] = 8'h01;
       memory_array[6] = 8'h82;
       memory_array[7] = 8'h08;
       memory_array[8] = 8'h41;
       memory_array[9] = 8'h44;
       memory_array[10] = 8'h92;
//       memory_array[11] = 8'h41;       
//       memory_array[12] = 8'h61;
//       memory_array[13] = 8'h71;
//       memory_array[14] = 8'h90;
//       memory_array[15] = 8'h;       
//       memory_array[99] = 8'hc1;
//       memory_array[100] = 8'hc7;
//       memory_array[101] = 8'h41;
//       memory_array[102] = 8'h51;       
//       memory_array[103] = 8'h61;
              
    end
    
    assign o_data = memory_array[mem_address];

endmodule