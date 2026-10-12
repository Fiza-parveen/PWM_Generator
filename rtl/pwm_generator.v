
`timescale 1ns/1ns

module Variable_PWM(
    input [6:0] Dutycycle, 
    input clk,              
    input reset,            
    output reg [6:0] counter, 
    output reg pwmout      
);
    always @(posedge clk) begin
        if (reset)
            counter <= 0;

        else if (counter < 99)
            counter <= counter + 1'b1;

        else
            counter <= 0;
    end
    always @(*) begin
        if (Dutycycle == 0)
            pwmout = 1'b0;       // 0% duty cycle

        else if (Dutycycle >= 100)
            pwmout = 1'b1;       // 100% duty cycle

        else if (counter < Dutycycle)
            pwmout = 1'b1;       // Output HIGH

        else
            pwmout = 1'b0;       // Output LOW
    end

endmodule

