module In3Out2_top (
    input   wire BUTTON_1,
    input   wire BUTTON_2,
    input   wire GPIO_1,

    output  wire LED_1,
    output  wire LED_2
);

    wire d1, d2, d3;
    wire y1, y2;

    assign d1       = BUTTON_1;
    assign d2       = BUTTON_2;
    assign d3       = GPIO_1;

    // assign y1       = LED_1;
    // assign y2       = LED_2;
    assign LED_1    = y1;
    assign LED_2    = y2;

    assign y1       = d1 & d2 & d3;
    assign y2       = d1 | d2 | d3;
    // assign y2       = 1'b1;

endmodule