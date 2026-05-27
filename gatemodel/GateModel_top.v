module GateModel_top (
  input   wire BUTTON_1,
  output  wire LED_1
);

  not(LED_1,BUTTON_1);

endmodule