
module regfile (input [1:0] readreg1, readreg2, writereg,
                input [7:0] data,/*clr,*/
                input clk, regwrite,
                output [7:0] read1, read2,v1,v2);
    reg [7:0] registerfile [3:0];
    initial begin
        registerfile[2'd0] <= 8'b0;
        registerfile[2'd1] <= 8'b0;
        registerfile[2'd2] <= 8'b0;
        registerfile[2'd3] <= 8'b0;
    end 
    always @(negedge clk) begin
        if(regwrite == 1)
            registerfile[writereg] <= data;
//        else if(clr == 1)
//          begin
//                registerfile[2'd0] <= 8'b0;
//                registerfile[2'd1] <= 8'b0;
//                registerfile[2'd2] <= 8'b0;
//                registerfile[2'd3] <= 8'b0;
//            end   
        
    end
    
    assign read1 = (regwrite && readreg1 == writereg)? data: registerfile[readreg1];
    assign read2 = (regwrite && readreg2 == writereg)? data: registerfile[readreg2];
    assign v1 = registerfile[0];
    assign v2 = registerfile[1];
endmodule //regfile