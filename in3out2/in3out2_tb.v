`timescale 100 ns / 10 ns

module In3Out2_tb();
    parameter SIMTIME = 100;
    reg d1,d2,d3;
    wire d4,d5;

    //choose module−level testing or chip−level testing

    //instantiate the entire FPGA Module

    In3Out2_top TestChip (
        .BUTTON_1   (d1),
        .BUTTON_2   (d2),
        .GPIO_1     (d3),
        .LED_1      (d4),
        .LED_2      (d5)
    );

    initial begin
        // simulation results
        $dumpvars(0, In3Out2_tb);
        $monitor("Monitor:d4=%bd5=%b", d4, d5);
        d1 = 1;
        d2 = 1;
        #10
        d3 = 1;
        #20
        d3 = 0;
        #10

        #(SIMTIME) $display("End of simulation");
        $finish;
    end
endmodule