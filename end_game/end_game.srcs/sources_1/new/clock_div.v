module clkDiv(input clk_in,input reset, output reg clk_out,output reg [7:0] value1, output reg [7:0] value2);

reg [32:0] count;
//reg clk_out;
always @(posedge clk_in) begin
   if(reset==1)begin
   count <= 0;
   end else begin
   count <= count + 1;
   if(count == 300000000)
   begin
      count<=0;
      clk_out <= !clk_out;
   end
   end
end
endmodule