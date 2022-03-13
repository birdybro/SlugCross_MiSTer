`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2018 05:22:28 PM
// Design Name: 
// Module Name: VertObstacle
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


module V4(
    input [9:0] Hcount,
    input [9:0] Vcount,
    output[3:0] Red
    );
    
    assign Red[3] = (Hcount >= 10'b0100110100) & (Hcount <= 10'b0100111011) &  & 
                    ((Vcount[9] | Vcount[8] | Vcount[7] | Vcount[6] | Vcount[5] | Vcount[4] | Vcount[3]) & 
                    (~(~Vcount[9] & Vcount[8] & Vcount[7] & Vcount[6] & ~Vcount[5] & Vcount[4] & Vcount[3])));
    assign Red[2] = Red[3];  
    assign Red[1] = Red[3];
    assign Red[0] = Red[3];                          
endmodule
