module sky130_sram (
`ifdef USE_POWER_PINS
    vdd,
    gnd,
`endif
  input  clk0, // clock
  input  csb0, // active low chip select
  input  web0, // active low write control
  input  clk1, // clock
  input  csb1 // active low chip select
);

   (* keep *) sky130_sram_1kbyte_1rw1r_32x256_8 sram (
`ifdef USE_POWER_PINS
    vdd,
    gnd,
`endif
        .clk0(clk0),
        .csb0(csb0), // active low chip select
        .web0(web0), // active low write control
        .clk1(clk1), // clock
        .csb1(csb1) // active low chip select
    );

endmodule
