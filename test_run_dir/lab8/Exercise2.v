module Exercise2(
  input        clock,
  input        reset,
  input        io_enable,
  input        io_write,
  input  [9:0] io_addr,
  input        io_mask_0,
  input        io_mask_1,
  input  [7:0] io_data_in_0,
  input  [7:0] io_data_in_1,
  output [7:0] io_data_out_0,
  output [7:0] io_data_out_1
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem_0 [0:1023]; // @[Exercise2.scala 42:26]
  wire [7:0] mem_0_memData_data; // @[Exercise2.scala 42:26]
  wire [9:0] mem_0_memData_addr; // @[Exercise2.scala 42:26]
  wire [7:0] mem_0_MPORT_data; // @[Exercise2.scala 42:26]
  wire [9:0] mem_0_MPORT_addr; // @[Exercise2.scala 42:26]
  wire  mem_0_MPORT_mask; // @[Exercise2.scala 42:26]
  wire  mem_0_MPORT_en; // @[Exercise2.scala 42:26]
  reg [9:0] mem_0_memData_addr_pipe_0;
  reg [7:0] mem_1 [0:1023]; // @[Exercise2.scala 42:26]
  wire [7:0] mem_1_memData_data; // @[Exercise2.scala 42:26]
  wire [9:0] mem_1_memData_addr; // @[Exercise2.scala 42:26]
  wire [7:0] mem_1_MPORT_data; // @[Exercise2.scala 42:26]
  wire [9:0] mem_1_MPORT_addr; // @[Exercise2.scala 42:26]
  wire  mem_1_MPORT_mask; // @[Exercise2.scala 42:26]
  wire  mem_1_MPORT_en; // @[Exercise2.scala 42:26]
  reg [9:0] mem_1_memData_addr_pipe_0;
  reg [7:0] wrDataReg_0; // @[Exercise2.scala 43:28]
  reg [7:0] wrDataReg_1; // @[Exercise2.scala 43:28]
  reg  doFowarding; // @[Exercise2.scala 44:30]
  wire [7:0] _io_data_out_0_T = io_mask_0 ? wrDataReg_0 : 8'h0; // @[Exercise2.scala 53:52]
  wire [7:0] _io_data_out_0_T_1 = doFowarding ? _io_data_out_0_T : 8'h0; // @[Exercise2.scala 53:34]
  wire [7:0] _io_data_out_1_T = io_mask_1 ? wrDataReg_1 : 8'h0; // @[Exercise2.scala 53:52]
  wire [7:0] _io_data_out_1_T_1 = doFowarding ? _io_data_out_1_T : 8'h0; // @[Exercise2.scala 53:34]
  assign mem_0_memData_addr = mem_0_memData_addr_pipe_0;
  assign mem_0_memData_data = mem_0[mem_0_memData_addr]; // @[Exercise2.scala 42:26]
  assign mem_0_MPORT_data = io_data_in_0;
  assign mem_0_MPORT_addr = io_addr;
  assign mem_0_MPORT_mask = io_mask_0;
  assign mem_0_MPORT_en = io_write;
  assign mem_1_memData_addr = mem_1_memData_addr_pipe_0;
  assign mem_1_memData_data = mem_1[mem_1_memData_addr]; // @[Exercise2.scala 42:26]
  assign mem_1_MPORT_data = io_data_in_1;
  assign mem_1_MPORT_addr = io_addr;
  assign mem_1_MPORT_mask = io_mask_1;
  assign mem_1_MPORT_en = io_write;
  assign io_data_out_0 = doFowarding ? _io_data_out_0_T_1 : mem_0_memData_data; // @[Exercise2.scala 51:22 Exercise2.scala 53:28 Exercise2.scala 56:21]
  assign io_data_out_1 = doFowarding ? _io_data_out_1_T_1 : mem_1_memData_data; // @[Exercise2.scala 51:22 Exercise2.scala 53:28 Exercise2.scala 56:21]
  always @(posedge clock) begin
    if(mem_0_MPORT_en & mem_0_MPORT_mask) begin
      mem_0[mem_0_MPORT_addr] <= mem_0_MPORT_data; // @[Exercise2.scala 42:26]
    end
    mem_0_memData_addr_pipe_0 <= io_addr;
    if(mem_1_MPORT_en & mem_1_MPORT_mask) begin
      mem_1[mem_1_MPORT_addr] <= mem_1_MPORT_data; // @[Exercise2.scala 42:26]
    end
    mem_1_memData_addr_pipe_0 <= io_addr;
    wrDataReg_0 <= io_data_in_0; // @[Exercise2.scala 43:28]
    wrDataReg_1 <= io_data_in_1; // @[Exercise2.scala 43:28]
    doFowarding <= io_enable & io_write; // @[Exercise2.scala 44:52]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem_0[initvar] = _RAND_0[7:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem_1[initvar] = _RAND_2[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_0_memData_addr_pipe_0 = _RAND_1[9:0];
  _RAND_3 = {1{`RANDOM}};
  mem_1_memData_addr_pipe_0 = _RAND_3[9:0];
  _RAND_4 = {1{`RANDOM}};
  wrDataReg_0 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  wrDataReg_1 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  doFowarding = _RAND_6[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
