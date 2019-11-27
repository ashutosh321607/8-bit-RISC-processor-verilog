//module mode10(
//input clk,
//input reset,
//input [15:0]x,
//output [6:0]data,
//output [3:0] cathod
//);
//reg [3:0]counter;
//reg [1:0] count;
//always @(negedge clk or negedge reset)
//     begin
//      if (reset ==0)
//      begin
//          count = 3;
//      end  
      
//      else begin
//        counter = x[(count*3)+3:count*4];
//        count=count+1;
//     end
     
//always @ (counter) begin
//    case (counter)
//    4'b0000 :          //Hexadecimal 0
//    data = 7'b1111110;
//    4'b0001 :            //Hexadecimal 1
//    data = 7'b0110000  ;
//    4'b0010 :          // Hexadecimal 2
//    data = 7'b1101101 ; 
//    4'b0011 :         // Hexadecimal 3
//    data = 7'b1111001 ;
//    4'b0100 :        // Hexadecimal 4
//    data = 7'b0110011 ;
//    4'b0101 :        // Hexadecimal 5
//    data = 7'b1011011 ;  
//    4'b0110 :        // Hexadecimal 6
//    data = 7'b1011111 ;
//    4'b0111 :        // Hexadecimal 7
//    data = 7'b1110000;
//    4'b1000 :              //Hexadecimal 8
//    data = 7'b1111111;
//    4'b1001 :            //Hexadecimal 9
//    data = 7'b1111011 ;
//    4'b1010 :          // Hexadecimal A
//    data = 7'b1110111 ; 
//    4'b1011 :         // Hexadecimal B
//    data = 7'b0011111;
//    4'b1100 :        // Hexadecimal C
//    data = 7'b1001110 ;
//    4'b1101 :        // Hexadecimal D
//    data = 7'b0111101 ;
//    4'b1110 :        // Hexadecimal E
//    data = 7'b1001111 ;
//    4'b1111 :        // Hexadecimal F
//    data = 7'b1000111 ;
//    endcase
//end  

//always @(count) begin
//    case (count)
//    4'b00: cathod=4'b0000;
//    4'b00: cathod=4'b0000;

//endmodule 


//module hex_to_7segment(
//    in ,select, data 
//  );
 
//input [3:0] in;    // Input from DIP Switches
//output select;  
//output [6:0] data;
 
//parameter A      = 7'b0000001;
//parameter B      = 7'b0000010;
//parameter C      = 7'b0000100;
//parameter D      = 7'b0001000;
//parameter E      = 7'b0010000;
//parameter F      = 7'b0100000;
//parameter G      = 7'b1000000;
 
 
//assign select = 1'b1; // Which of the the 3 seven segments we wish to display
 
//assign data =
//    (in == 4'h0) ? A|B|C|D|E|F : // Display 0
//    (in == 4'h1) ? B|C : // Display 1
//    (in == 4'h2) ? A|B|G|E|D : // Display 2
//    (in == 4'h3) ? A|B|C|D|G : // Display 3
//    (in == 4'h4) ? F|B|G|C : // Display 4
//    (in == 4'h5) ? A|F|G|C|D : // Display 5
//    (in == 4'h6) ? A|F|G|C|D|E : // Display 6
//    (in == 4'h7) ? A|B|C : // Display 7
//    (in == 4'h8) ? A|B|C|D|E|F|G : // Display 8
//    (in == 4'h9) ? A|B|C|D|F|G : // Display 9
//    (in == 4'ha) ? A|F|B|G|E|C : // Display A
//    (in == 4'hb) ? F|G|C|D|E : // Display B
//    (in == 4'hc) ? G|E|D : // Display C
//    (in == 4'hd) ? B|C|G|E|D : // Display D
//    (in == 4'he) ? A|F|G|E|D : // Display E
//    (in == 4'hf) ? A|F|G|E : // Display F
//        4'bz;
 
//endmodule


// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// FPGA tutorial: seven-segment LED display controller on Basys  3 FPGA
module seven_seg(
    input clock_100Mhz, // 100 Mhz clock source on Basys 3 FPGA
    input [7:0]b,
    input [7:0]a,
    output reg [3:0] Anode_Activate, // anode signals of the 7-segment LED display
    output reg [6:0] LED_out// cathode patterns of the 7-segment LED display
    );
//    
     reg [3:0] LED_BCD;
     reg [1:0]count = 0;
     reg [10:0] mycounter = 0;
    always@(posedge clock_100Mhz) begin
    if(mycounter==0) begin
        if(count==0) begin
        LED_BCD = a[7:4];
        Anode_Activate = 4'b0111;
        end
        else if(count==1) begin
        LED_BCD = a[3:0];    
        Anode_Activate = 4'b1011;
        end
        else if(count==2) begin
        LED_BCD = b[7:4];
        Anode_Activate = 4'b1101;
        end
        else begin
        LED_BCD = b[3:0];  
        Anode_Activate = 4'b1110;
       end
       
       count = count + 1;
      end
        mycounter = mycounter + 1;
    end
        
    // Cathode patterns of the 7-segment LED display 
    always @(*)
    begin
        case(LED_BCD)
        4'b0000: LED_out = 7'b0000001; // "0"     
        4'b0001: LED_out = 7'b1001111; // "1" 
        4'b0010: LED_out = 7'b0010010; // "2" 
        4'b0011: LED_out = 7'b0000110; // "3" 
        4'b0100: LED_out = 7'b1001100; // "4" 
        4'b0101: LED_out = 7'b0100100; // "5" 
        4'b0110: LED_out = 7'b0100000; // "6" 
        4'b0111: LED_out = 7'b0001111; // "7" 
        4'b1000: LED_out = 7'b0000000; // "8"     
        4'b1001: LED_out = 7'b0000100; // "9" 
        4'b1010: LED_out = 7'b0001000; // "A" 
        4'b1011: LED_out = 7'b1100000; // "b" 
        4'b1100: LED_out = 7'b0110001; // "C"
        4'b1101: LED_out = 7'b1000010; // "d"          
        4'b1110: LED_out = 7'b0110000; // "E" 
        default: LED_out = 7'b0111000; // "F"
        endcase
    end
 endmodule
 
 
 
 
// reg [26:0] one_second_counter; // counter for generating 1 second clock enable
 //    wire one_second_enable;// one second enable for counting numbers
 //    reg [15:0] displayed_number; // counting number to be displayed
 //    reg [19:0] refresh_counter; // 20-bit for creating 10.5ms refresh period or 380Hz refresh rate
 //             // the first 2 MSB bits for creating 4 LED-activating signals with 2.6ms digit period
 //    wire [1:0] LED_activating_counter; 
 //                 // count     0    ->  1  ->  2  ->  3
 //              // activates    LED1    LED2   LED3   LED4
 //             // and repeat
 
 
 
 
 
// always @(posedge clock_100Mhz or posedge reset)
//     begin
//         if(reset==1)
//             one_second_counter <= 0;
//         else begin
//             if(one_second_counter>=99999999) 
//                  one_second_counter <= 0;
//             else
//                 one_second_counter <= one_second_counter + 1;
//         end
//     end 
//     assign one_second_enable = (one_second_counter==99999999)?1:0;
//     always @(posedge clock_100Mhz or posedge reset)
//     begin
//         if(reset==1)
//             displayed_number <= 0;
//         else if(one_second_enable==1)
//             displayed_number <= displayed_number + 1;
//     end
//     always @(posedge clock_100Mhz or posedge reset)
//     begin 
//         if(reset==1)
//             refresh_counter <= 0;
//         else
//             refresh_counter <= refresh_counter + 1;
//     end 
//     assign LED_activating_counter = refresh_counter[19:18];
//     // anode activating signals for 4 LEDs, digit period of 2.6ms
//     // decoder to generate anode signals 
//     always @(*)
//     begin
//         case(LED_activating_counter)
//         2'b00: begin
//             Anode_Activate = 4'b0111; 
//             // activate LED1 and Deactivate LED2, LED3, LED4
//             LED_BCD = displayed_number/1000;
//             // the first digit of the 16-bit number
//               end
//         2'b01: begin
//             Anode_Activate = 4'b1011; 
//             // activate LED2 and Deactivate LED1, LED3, LED4
//             LED_BCD = (displayed_number % 1000)/100;
//             // the second digit of the 16-bit number
//               end
//         2'b10: begin
//             Anode_Activate = 4'b1101; 
//             // activate LED3 and Deactivate LED2, LED1, LED4
//             LED_BCD = ((displayed_number % 1000)%100)/10;
//             // the third digit of the 16-bit number
//                 end
//         2'b11: begin
//             Anode_Activate = 4'b1110; 
//             // activate LED4 and Deactivate LED2, LED3, LED1
//             LED_BCD = ((displayed_number % 1000)%100)%10;
//             // the fourth digit of the 16-bit number    
//                end
//         endcase
//     end