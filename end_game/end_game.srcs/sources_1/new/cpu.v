module cpu(input /*clr,*/clk, reset, interrupt,
           input [7:0] datamem_data, usermem_data_in,
           output [7:0] datamem_address, usermem_address, usermem_data_out,
           output rw,[7:0]v1,[7:0]v2);
    wire [1:0] regfile_read1, regfile_read2, regfile_writereg; 
    wire [7:0] pc_jumpaddr, regfile_data, regfile_out1, regfile_out2;
    wire [7:0] alu_out;
    wire [3:0] alu_opcode;

    pc pc0(clk, reset, pc_jump, pc_freeze, pc_jumpaddr, datamem_address);
    regfile reg0(regfile_read1, regfile_read2, regfile_writereg,
                 regfile_data,/*clr,*/ clk,  regfile_regwrite,
                 regfile_out1, regfile_out2,v1,v2);
    alu alu0(regfile_out1, regfile_out2, alu_opcode, alu_out);
    control cntrl0(clk, reset, interrupt, datamem_data, datamem_address, regfile_out1, regfile_out2,
                   alu_out, usermem_data_in, alu_opcode, 
                   regfile_data, usermem_data_out, regfile_read1, regfile_read2,
                   regfile_writereg, usermem_address,
                   pc_jumpaddr, rw, regfile_regwrite,
                   pc_jump, pc_freeze); 
endmodule //cpu