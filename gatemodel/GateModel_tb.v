`timescale 1 ns / 1 ps

module GateModel_tb ();

reg in_tb;
wire out_tb;

GateModel_top GateModelModule (
    .LED_1      (out_tb),
    .BUTTON_1   (in_tb)
);

    initial
    begin
        $dumpvars (0, GateModel_tb);
        $monitor("Monitor:in=%bout=%b", in_tb, out_tb);

        in_tb=0;
        #10
        in_tb=1;
        #10
        $finish;
    end

    reg clk = 0;
    always #1 clk = ~clk;

    always @(posedge clk)
        begin
            $display("Clockposedge:in=%bout=%b", in_tb, out_tb);
        end

endmodule