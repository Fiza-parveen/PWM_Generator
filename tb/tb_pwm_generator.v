
`timescale 1ns/1ps

module Variable_PWM_tb;

    // Testbench signals
    reg clk;
    reg reset;
    reg [6:0] Dutycycle;

    wire [6:0] counter;
    wire pwmout;

    // Instantiate the PWM design
    Variable_PWM dut (
        .clk(clk),
        .reset(reset),
        .Dutycycle(Dutycycle),
        .counter(counter),
        .pwmout(pwmout)
    );

    // Clock generation: 20 ns period (50 MHz)
    initial begin
        clk = 1'b0;
        forever #10 clk = ~clk;
    end

    // Apply reset
    initial begin
        reset = 1'b1;
        #20 reset = 1'b0;
    end

    // Apply different duty-cycle values
    initial begin
        Dutycycle = 0;

        #2000 Dutycycle = 10;
        #2000 Dutycycle = 20;
        #2000 Dutycycle = 30;
        #2000 Dutycycle = 40;
        #2000 Dutycycle = 50;
        #2000 Dutycycle = 60;
        #2000 Dutycycle = 70;
        #2000 Dutycycle = 80;
        #2000 Dutycycle = 90;

        #2000 $finish;
    end

    initial begin
        $display("Time(ns)\tReset\tDutycycle\tCounter\tPWMout");
    end
    
    initial begin
        $monitor("%0t\t%b\t%0d\t\t%0d\t%b",
                 $time, reset, Dutycycle, counter, pwmout);
    end

endmodule