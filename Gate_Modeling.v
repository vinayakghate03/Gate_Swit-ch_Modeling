`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2025 13:30:32
// Design Name: 
// Module Name: Gate_Modeling
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

// this is the gate level modeling styles

module Gate_Modeling(
       input a,b,    // input port
       output  x,y,z); // output port
       
       
//       we are simple using the gate level modeling style

    and(x,a,b);  // x output a ,b output
    or(y,a,b);
    xor(z,a,b);
    
       endmodule
       
 // there created the top level module to test bench
 
 module Gate_Test;
       reg a,b;
       wire x,y,z;
       integer i;
       
     
//     below created the instance of the sub_module of the Gate Modeling

    Gate_Modeling  Gate_Operation(
         .a(a), .b(b), .x(x), .y(y), .z(z));   // the port connect by name order of the sub module ports
    
//    this is the initial bllock used to assign the vlaue  for input 
         initial begin
           {a,b} <= 0;   // assign defult value using concatenation
            
            
         
         for( i= 0 ; i < 4; i = i + 1) begin
         
             {a,b} <= i;
                #10;
                $display("A = %d, B = %d, X = %d, Y = %d, Z = %d",a,b,x,y,z);
           end
           $finish;
        end
  endmodule
         