# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]       
 set_property IOSTANDARD LVCMOS33 [get_ports clk]


#seven-segment LED display
set_property PACKAGE_PIN W7 [get_ports {data[6]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {data[6]}]
set_property PACKAGE_PIN W6 [get_ports {data[5]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {data[5]}]
set_property PACKAGE_PIN U8 [get_ports {data[4]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {data[4]}]
set_property PACKAGE_PIN V8 [get_ports {data[3]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {data[3]}]
set_property PACKAGE_PIN U5 [get_ports {data[2]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {data[2]}]
set_property PACKAGE_PIN V5 [get_ports {data[1]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {data[1]}]
set_property PACKAGE_PIN U7 [get_ports {data[0]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {data[0]}]
   
set_property PACKAGE_PIN U2 [get_ports {anode[0]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {anode[0]}]
set_property PACKAGE_PIN U4 [get_ports {anode[1]}]                    
   set_property IOSTANDARD LVCMOS33 [get_ports {anode[1]}]
set_property PACKAGE_PIN V4 [get_ports {anode[2]}]               
   set_property IOSTANDARD LVCMOS33 [get_ports {anode[2]}]
set_property PACKAGE_PIN W4 [get_ports {anode[3]}]          
   set_property IOSTANDARD LVCMOS33 [get_ports {anode[3]}]
   
set_property PACKAGE_PIN U16 [get_ports {datamem_address[0]}]					
       set_property IOSTANDARD LVCMOS33 [get_ports {datamem_address[0]}]
   set_property PACKAGE_PIN E19 [get_ports {datamem_address[1]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {datamem_address[1]}]
   set_property PACKAGE_PIN U19 [get_ports {datamem_address[2]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {datamem_address[2]}]
   set_property PACKAGE_PIN V19 [get_ports {datamem_address[3]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {datamem_address[3]}]
   set_property PACKAGE_PIN W18 [get_ports {datamem_address[4]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {datamem_address[4]}]
   set_property PACKAGE_PIN U15 [get_ports {datamem_address[5]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {datamem_address[5]}]
   set_property PACKAGE_PIN U14 [get_ports {datamem_address[6]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {datamem_address[6]}]
   set_property PACKAGE_PIN V14 [get_ports {datamem_address[7]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {datamem_address[7]}]
   set_property PACKAGE_PIN V13 [get_ports {idata[0]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {idata[0]}]
   set_property PACKAGE_PIN V3 [get_ports {idata[1]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {idata[1]}]
   set_property PACKAGE_PIN W3 [get_ports {idata[2]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {idata[2]}]
   set_property PACKAGE_PIN U3 [get_ports {idata[3]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {idata[3]}]
   set_property PACKAGE_PIN P3 [get_ports {idata[4]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {idata[4]}]
   set_property PACKAGE_PIN N3 [get_ports {idata[5]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {idata[5]}]
   set_property PACKAGE_PIN P1 [get_ports {idata[6]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {idata[6]}]
   set_property PACKAGE_PIN L1 [get_ports {idata[7]}]                    
       set_property IOSTANDARD LVCMOS33 [get_ports {idata[7]}]


set_property PACKAGE_PIN T18 [get_ports interrupt]						
	set_property IOSTANDARD LVCMOS33 [get_ports interrupt]
#set_property PACKAGE_PIN W19 [get_ports btnL]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnL]
#set_property PACKAGE_PIN T17 [get_ports btnR]						
	#set_property IOSTANDARD LVCMOS33 [get_ports btnR]
set_property PACKAGE_PIN V16 [get_ports reset]						
	set_property IOSTANDARD LVCMOS33 [get_ports reset]