module Exercise1(
  input        clock,
  input        reset,
  input        io_enable,
  input        io_write,
  input  [9:0] io_addr,
  input        io_mask_0,
  input        io_mask_1,
  input        io_mask_2,
  input        io_mask_3,
  input  [7:0] io_dataIn_0,
  input  [7:0] io_dataIn_1,
  input  [7:0] io_dataIn_2,
  input  [7:0] io_dataIn_3,
  output [7:0] io_dataOut_0,
  output [7:0] io_dataOut_1,
  output [7:0] io_dataOut_2,
  output [7:0] io_dataOut_3
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_9;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] mem_0 [0:1023]; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_16_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_16_addr; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_1_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_1_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_1_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_1_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_2_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_2_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_2_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_2_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_3_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_3_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_3_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_3_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_4_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_4_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_4_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_4_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_5_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_5_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_5_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_5_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_6_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_6_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_6_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_6_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_7_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_7_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_7_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_7_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_8_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_8_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_8_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_8_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_9_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_9_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_9_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_9_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_10_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_10_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_10_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_10_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_11_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_11_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_11_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_11_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_12_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_12_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_12_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_12_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_13_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_13_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_13_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_13_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_14_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_14_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_14_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_14_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_0_MPORT_15_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_0_MPORT_15_addr; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_15_mask; // @[Exercise1.scala 19:26]
  wire  mem_0_MPORT_15_en; // @[Exercise1.scala 19:26]
  reg  mem_0_MPORT_16_en_pipe_0;
  reg [9:0] mem_0_MPORT_16_addr_pipe_0;
  reg [7:0] mem_1 [0:1023]; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_16_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_16_addr; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_1_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_1_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_1_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_1_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_2_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_2_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_2_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_2_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_3_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_3_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_3_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_3_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_4_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_4_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_4_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_4_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_5_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_5_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_5_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_5_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_6_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_6_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_6_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_6_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_7_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_7_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_7_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_7_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_8_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_8_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_8_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_8_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_9_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_9_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_9_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_9_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_10_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_10_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_10_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_10_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_11_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_11_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_11_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_11_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_12_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_12_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_12_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_12_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_13_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_13_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_13_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_13_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_14_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_14_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_14_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_14_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_1_MPORT_15_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_1_MPORT_15_addr; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_15_mask; // @[Exercise1.scala 19:26]
  wire  mem_1_MPORT_15_en; // @[Exercise1.scala 19:26]
  reg  mem_1_MPORT_16_en_pipe_0;
  reg [9:0] mem_1_MPORT_16_addr_pipe_0;
  reg [7:0] mem_2 [0:1023]; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_16_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_16_addr; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_1_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_1_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_1_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_1_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_2_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_2_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_2_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_2_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_3_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_3_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_3_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_3_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_4_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_4_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_4_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_4_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_5_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_5_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_5_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_5_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_6_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_6_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_6_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_6_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_7_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_7_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_7_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_7_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_8_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_8_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_8_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_8_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_9_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_9_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_9_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_9_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_10_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_10_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_10_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_10_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_11_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_11_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_11_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_11_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_12_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_12_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_12_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_12_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_13_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_13_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_13_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_13_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_14_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_14_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_14_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_14_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_2_MPORT_15_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_2_MPORT_15_addr; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_15_mask; // @[Exercise1.scala 19:26]
  wire  mem_2_MPORT_15_en; // @[Exercise1.scala 19:26]
  reg  mem_2_MPORT_16_en_pipe_0;
  reg [9:0] mem_2_MPORT_16_addr_pipe_0;
  reg [7:0] mem_3 [0:1023]; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_16_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_16_addr; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_1_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_1_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_1_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_1_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_2_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_2_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_2_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_2_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_3_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_3_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_3_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_3_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_4_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_4_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_4_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_4_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_5_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_5_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_5_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_5_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_6_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_6_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_6_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_6_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_7_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_7_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_7_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_7_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_8_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_8_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_8_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_8_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_9_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_9_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_9_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_9_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_10_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_10_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_10_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_10_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_11_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_11_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_11_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_11_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_12_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_12_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_12_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_12_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_13_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_13_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_13_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_13_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_14_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_14_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_14_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_14_en; // @[Exercise1.scala 19:26]
  wire [7:0] mem_3_MPORT_15_data; // @[Exercise1.scala 19:26]
  wire [9:0] mem_3_MPORT_15_addr; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_15_mask; // @[Exercise1.scala 19:26]
  wire  mem_3_MPORT_15_en; // @[Exercise1.scala 19:26]
  reg  mem_3_MPORT_16_en_pipe_0;
  reg [9:0] mem_3_MPORT_16_addr_pipe_0;
  reg [7:0] vector_0; // @[Exercise1.scala 20:21]
  reg [7:0] vector_1; // @[Exercise1.scala 20:21]
  reg [7:0] vector_2; // @[Exercise1.scala 20:21]
  reg [7:0] vector_3; // @[Exercise1.scala 20:21]
  wire [3:0] Concat = {io_mask_3,io_mask_2,io_mask_1,io_mask_0}; // @[Cat.scala 30:58]
  wire  _T_1 = Concat == 4'h0; // @[Exercise1.scala 53:21]
  wire  _T_2 = Concat == 4'h1; // @[Exercise1.scala 59:27]
  wire  _T_3 = Concat == 4'h2; // @[Exercise1.scala 65:27]
  wire  _T_4 = Concat == 4'h3; // @[Exercise1.scala 71:27]
  wire  _T_5 = Concat == 4'h4; // @[Exercise1.scala 77:27]
  wire  _T_6 = Concat == 4'h5; // @[Exercise1.scala 83:27]
  wire  _T_7 = Concat == 4'h6; // @[Exercise1.scala 89:27]
  wire  _T_8 = Concat == 4'h7; // @[Exercise1.scala 95:27]
  wire  _T_9 = Concat == 4'h8; // @[Exercise1.scala 101:27]
  wire  _T_10 = Concat == 4'h9; // @[Exercise1.scala 107:27]
  wire  _T_11 = Concat == 4'ha; // @[Exercise1.scala 113:27]
  wire  _T_12 = Concat == 4'hb; // @[Exercise1.scala 119:27]
  wire  _T_13 = Concat == 4'hc; // @[Exercise1.scala 125:27]
  wire  _T_14 = Concat == 4'hd; // @[Exercise1.scala 131:27]
  wire  _T_15 = Concat == 4'he; // @[Exercise1.scala 137:27]
  wire  _T_16 = Concat == 4'hf; // @[Exercise1.scala 143:27]
  wire [7:0] _GEN_0 = Concat == 4'hf ? io_dataIn_0 : vector_0; // @[Exercise1.scala 143:36 Exercise1.scala 144:23 Exercise1.scala 20:21]
  wire [7:0] _GEN_1 = Concat == 4'hf ? io_dataIn_1 : vector_1; // @[Exercise1.scala 143:36 Exercise1.scala 145:23 Exercise1.scala 20:21]
  wire [7:0] _GEN_2 = Concat == 4'hf ? io_dataIn_2 : vector_2; // @[Exercise1.scala 143:36 Exercise1.scala 146:23 Exercise1.scala 20:21]
  wire [7:0] _GEN_3 = Concat == 4'hf ? io_dataIn_3 : vector_3; // @[Exercise1.scala 143:36 Exercise1.scala 147:23 Exercise1.scala 20:21]
  wire [7:0] _GEN_12 = Concat == 4'he ? 8'h0 : _GEN_0; // @[Exercise1.scala 137:36 Exercise1.scala 138:23]
  wire [7:0] _GEN_13 = Concat == 4'he ? io_dataIn_1 : _GEN_1; // @[Exercise1.scala 137:36 Exercise1.scala 139:23]
  wire [7:0] _GEN_14 = Concat == 4'he ? io_dataIn_2 : _GEN_2; // @[Exercise1.scala 137:36 Exercise1.scala 140:23]
  wire [7:0] _GEN_15 = Concat == 4'he ? io_dataIn_3 : _GEN_3; // @[Exercise1.scala 137:36 Exercise1.scala 141:23]
  wire  _GEN_26 = Concat == 4'he ? 1'h0 : _T_16; // @[Exercise1.scala 137:36 Exercise1.scala 19:26]
  wire [7:0] _GEN_32 = Concat == 4'hd ? io_dataIn_0 : _GEN_12; // @[Exercise1.scala 131:36 Exercise1.scala 132:23]
  wire [7:0] _GEN_33 = Concat == 4'hd ? 8'h0 : _GEN_13; // @[Exercise1.scala 131:36 Exercise1.scala 133:23]
  wire [7:0] _GEN_34 = Concat == 4'hd ? io_dataIn_2 : _GEN_14; // @[Exercise1.scala 131:36 Exercise1.scala 134:23]
  wire [7:0] _GEN_35 = Concat == 4'hd ? io_dataIn_3 : _GEN_15; // @[Exercise1.scala 131:36 Exercise1.scala 135:23]
  wire  _GEN_46 = Concat == 4'hd ? 1'h0 : _T_15; // @[Exercise1.scala 131:36 Exercise1.scala 19:26]
  wire  _GEN_54 = Concat == 4'hd ? 1'h0 : _GEN_26; // @[Exercise1.scala 131:36 Exercise1.scala 19:26]
  wire [7:0] _GEN_60 = Concat == 4'hc ? 8'h0 : _GEN_32; // @[Exercise1.scala 125:36 Exercise1.scala 126:23]
  wire [7:0] _GEN_61 = Concat == 4'hc ? 8'h0 : _GEN_33; // @[Exercise1.scala 125:36 Exercise1.scala 127:23]
  wire [7:0] _GEN_62 = Concat == 4'hc ? io_dataIn_2 : _GEN_34; // @[Exercise1.scala 125:36 Exercise1.scala 128:23]
  wire [7:0] _GEN_63 = Concat == 4'hc ? io_dataIn_3 : _GEN_35; // @[Exercise1.scala 125:36 Exercise1.scala 129:23]
  wire  _GEN_74 = Concat == 4'hc ? 1'h0 : _T_14; // @[Exercise1.scala 125:36 Exercise1.scala 19:26]
  wire  _GEN_82 = Concat == 4'hc ? 1'h0 : _GEN_46; // @[Exercise1.scala 125:36 Exercise1.scala 19:26]
  wire  _GEN_90 = Concat == 4'hc ? 1'h0 : _GEN_54; // @[Exercise1.scala 125:36 Exercise1.scala 19:26]
  wire [7:0] _GEN_96 = Concat == 4'hb ? io_dataIn_0 : _GEN_60; // @[Exercise1.scala 119:36 Exercise1.scala 120:23]
  wire [7:0] _GEN_97 = Concat == 4'hb ? io_dataIn_1 : _GEN_61; // @[Exercise1.scala 119:36 Exercise1.scala 121:23]
  wire [7:0] _GEN_98 = Concat == 4'hb ? 8'h0 : _GEN_62; // @[Exercise1.scala 119:36 Exercise1.scala 122:23]
  wire [7:0] _GEN_99 = Concat == 4'hb ? io_dataIn_3 : _GEN_63; // @[Exercise1.scala 119:36 Exercise1.scala 123:23]
  wire  _GEN_110 = Concat == 4'hb ? 1'h0 : _T_13; // @[Exercise1.scala 119:36 Exercise1.scala 19:26]
  wire  _GEN_118 = Concat == 4'hb ? 1'h0 : _GEN_74; // @[Exercise1.scala 119:36 Exercise1.scala 19:26]
  wire  _GEN_126 = Concat == 4'hb ? 1'h0 : _GEN_82; // @[Exercise1.scala 119:36 Exercise1.scala 19:26]
  wire  _GEN_134 = Concat == 4'hb ? 1'h0 : _GEN_90; // @[Exercise1.scala 119:36 Exercise1.scala 19:26]
  wire [7:0] _GEN_140 = Concat == 4'ha ? 8'h0 : _GEN_96; // @[Exercise1.scala 113:36 Exercise1.scala 114:23]
  wire [7:0] _GEN_141 = Concat == 4'ha ? io_dataIn_1 : _GEN_97; // @[Exercise1.scala 113:36 Exercise1.scala 115:23]
  wire [7:0] _GEN_142 = Concat == 4'ha ? 8'h0 : _GEN_98; // @[Exercise1.scala 113:36 Exercise1.scala 116:23]
  wire [7:0] _GEN_143 = Concat == 4'ha ? io_dataIn_3 : _GEN_99; // @[Exercise1.scala 113:36 Exercise1.scala 117:23]
  wire  _GEN_154 = Concat == 4'ha ? 1'h0 : _T_12; // @[Exercise1.scala 113:36 Exercise1.scala 19:26]
  wire  _GEN_162 = Concat == 4'ha ? 1'h0 : _GEN_110; // @[Exercise1.scala 113:36 Exercise1.scala 19:26]
  wire  _GEN_170 = Concat == 4'ha ? 1'h0 : _GEN_118; // @[Exercise1.scala 113:36 Exercise1.scala 19:26]
  wire  _GEN_178 = Concat == 4'ha ? 1'h0 : _GEN_126; // @[Exercise1.scala 113:36 Exercise1.scala 19:26]
  wire  _GEN_186 = Concat == 4'ha ? 1'h0 : _GEN_134; // @[Exercise1.scala 113:36 Exercise1.scala 19:26]
  wire [7:0] _GEN_192 = Concat == 4'h9 ? io_dataIn_0 : _GEN_140; // @[Exercise1.scala 107:35 Exercise1.scala 108:23]
  wire [7:0] _GEN_193 = Concat == 4'h9 ? 8'h0 : _GEN_141; // @[Exercise1.scala 107:35 Exercise1.scala 109:23]
  wire [7:0] _GEN_194 = Concat == 4'h9 ? 8'h0 : _GEN_142; // @[Exercise1.scala 107:35 Exercise1.scala 110:23]
  wire [7:0] _GEN_195 = Concat == 4'h9 ? io_dataIn_3 : _GEN_143; // @[Exercise1.scala 107:35 Exercise1.scala 111:23]
  wire  _GEN_206 = Concat == 4'h9 ? 1'h0 : _T_11; // @[Exercise1.scala 107:35 Exercise1.scala 19:26]
  wire  _GEN_214 = Concat == 4'h9 ? 1'h0 : _GEN_154; // @[Exercise1.scala 107:35 Exercise1.scala 19:26]
  wire  _GEN_222 = Concat == 4'h9 ? 1'h0 : _GEN_162; // @[Exercise1.scala 107:35 Exercise1.scala 19:26]
  wire  _GEN_230 = Concat == 4'h9 ? 1'h0 : _GEN_170; // @[Exercise1.scala 107:35 Exercise1.scala 19:26]
  wire  _GEN_238 = Concat == 4'h9 ? 1'h0 : _GEN_178; // @[Exercise1.scala 107:35 Exercise1.scala 19:26]
  wire  _GEN_246 = Concat == 4'h9 ? 1'h0 : _GEN_186; // @[Exercise1.scala 107:35 Exercise1.scala 19:26]
  wire [7:0] _GEN_252 = Concat == 4'h8 ? 8'h0 : _GEN_192; // @[Exercise1.scala 101:35 Exercise1.scala 102:23]
  wire [7:0] _GEN_253 = Concat == 4'h8 ? 8'h0 : _GEN_193; // @[Exercise1.scala 101:35 Exercise1.scala 103:23]
  wire [7:0] _GEN_254 = Concat == 4'h8 ? 8'h0 : _GEN_194; // @[Exercise1.scala 101:35 Exercise1.scala 104:23]
  wire [7:0] _GEN_255 = Concat == 4'h8 ? io_dataIn_3 : _GEN_195; // @[Exercise1.scala 101:35 Exercise1.scala 105:23]
  wire  _GEN_266 = Concat == 4'h8 ? 1'h0 : _T_10; // @[Exercise1.scala 101:35 Exercise1.scala 19:26]
  wire  _GEN_274 = Concat == 4'h8 ? 1'h0 : _GEN_206; // @[Exercise1.scala 101:35 Exercise1.scala 19:26]
  wire  _GEN_282 = Concat == 4'h8 ? 1'h0 : _GEN_214; // @[Exercise1.scala 101:35 Exercise1.scala 19:26]
  wire  _GEN_290 = Concat == 4'h8 ? 1'h0 : _GEN_222; // @[Exercise1.scala 101:35 Exercise1.scala 19:26]
  wire  _GEN_298 = Concat == 4'h8 ? 1'h0 : _GEN_230; // @[Exercise1.scala 101:35 Exercise1.scala 19:26]
  wire  _GEN_306 = Concat == 4'h8 ? 1'h0 : _GEN_238; // @[Exercise1.scala 101:35 Exercise1.scala 19:26]
  wire  _GEN_314 = Concat == 4'h8 ? 1'h0 : _GEN_246; // @[Exercise1.scala 101:35 Exercise1.scala 19:26]
  wire [7:0] _GEN_320 = Concat == 4'h7 ? io_dataIn_0 : _GEN_252; // @[Exercise1.scala 95:35 Exercise1.scala 96:23]
  wire [7:0] _GEN_321 = Concat == 4'h7 ? io_dataIn_1 : _GEN_253; // @[Exercise1.scala 95:35 Exercise1.scala 97:23]
  wire [7:0] _GEN_322 = Concat == 4'h7 ? io_dataIn_2 : _GEN_254; // @[Exercise1.scala 95:35 Exercise1.scala 98:23]
  wire [7:0] _GEN_323 = Concat == 4'h7 ? 8'h0 : _GEN_255; // @[Exercise1.scala 95:35 Exercise1.scala 99:23]
  wire  _GEN_334 = Concat == 4'h7 ? 1'h0 : _T_9; // @[Exercise1.scala 95:35 Exercise1.scala 19:26]
  wire  _GEN_342 = Concat == 4'h7 ? 1'h0 : _GEN_266; // @[Exercise1.scala 95:35 Exercise1.scala 19:26]
  wire  _GEN_350 = Concat == 4'h7 ? 1'h0 : _GEN_274; // @[Exercise1.scala 95:35 Exercise1.scala 19:26]
  wire  _GEN_358 = Concat == 4'h7 ? 1'h0 : _GEN_282; // @[Exercise1.scala 95:35 Exercise1.scala 19:26]
  wire  _GEN_366 = Concat == 4'h7 ? 1'h0 : _GEN_290; // @[Exercise1.scala 95:35 Exercise1.scala 19:26]
  wire  _GEN_374 = Concat == 4'h7 ? 1'h0 : _GEN_298; // @[Exercise1.scala 95:35 Exercise1.scala 19:26]
  wire  _GEN_382 = Concat == 4'h7 ? 1'h0 : _GEN_306; // @[Exercise1.scala 95:35 Exercise1.scala 19:26]
  wire  _GEN_390 = Concat == 4'h7 ? 1'h0 : _GEN_314; // @[Exercise1.scala 95:35 Exercise1.scala 19:26]
  wire [7:0] _GEN_396 = Concat == 4'h6 ? 8'h0 : _GEN_320; // @[Exercise1.scala 89:35 Exercise1.scala 90:23]
  wire [7:0] _GEN_397 = Concat == 4'h6 ? io_dataIn_1 : _GEN_321; // @[Exercise1.scala 89:35 Exercise1.scala 91:23]
  wire [7:0] _GEN_398 = Concat == 4'h6 ? io_dataIn_2 : _GEN_322; // @[Exercise1.scala 89:35 Exercise1.scala 92:23]
  wire [7:0] _GEN_399 = Concat == 4'h6 ? 8'h0 : _GEN_323; // @[Exercise1.scala 89:35 Exercise1.scala 93:23]
  wire  _GEN_410 = Concat == 4'h6 ? 1'h0 : _T_8; // @[Exercise1.scala 89:35 Exercise1.scala 19:26]
  wire  _GEN_418 = Concat == 4'h6 ? 1'h0 : _GEN_334; // @[Exercise1.scala 89:35 Exercise1.scala 19:26]
  wire  _GEN_426 = Concat == 4'h6 ? 1'h0 : _GEN_342; // @[Exercise1.scala 89:35 Exercise1.scala 19:26]
  wire  _GEN_434 = Concat == 4'h6 ? 1'h0 : _GEN_350; // @[Exercise1.scala 89:35 Exercise1.scala 19:26]
  wire  _GEN_442 = Concat == 4'h6 ? 1'h0 : _GEN_358; // @[Exercise1.scala 89:35 Exercise1.scala 19:26]
  wire  _GEN_450 = Concat == 4'h6 ? 1'h0 : _GEN_366; // @[Exercise1.scala 89:35 Exercise1.scala 19:26]
  wire  _GEN_458 = Concat == 4'h6 ? 1'h0 : _GEN_374; // @[Exercise1.scala 89:35 Exercise1.scala 19:26]
  wire  _GEN_466 = Concat == 4'h6 ? 1'h0 : _GEN_382; // @[Exercise1.scala 89:35 Exercise1.scala 19:26]
  wire  _GEN_474 = Concat == 4'h6 ? 1'h0 : _GEN_390; // @[Exercise1.scala 89:35 Exercise1.scala 19:26]
  wire [7:0] _GEN_480 = Concat == 4'h5 ? io_dataIn_0 : _GEN_396; // @[Exercise1.scala 83:35 Exercise1.scala 84:23]
  wire [7:0] _GEN_481 = Concat == 4'h5 ? 8'h0 : _GEN_397; // @[Exercise1.scala 83:35 Exercise1.scala 85:23]
  wire [7:0] _GEN_482 = Concat == 4'h5 ? io_dataIn_2 : _GEN_398; // @[Exercise1.scala 83:35 Exercise1.scala 86:23]
  wire [7:0] _GEN_483 = Concat == 4'h5 ? 8'h0 : _GEN_399; // @[Exercise1.scala 83:35 Exercise1.scala 87:23]
  wire  _GEN_494 = Concat == 4'h5 ? 1'h0 : _T_7; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire  _GEN_502 = Concat == 4'h5 ? 1'h0 : _GEN_410; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire  _GEN_510 = Concat == 4'h5 ? 1'h0 : _GEN_418; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire  _GEN_518 = Concat == 4'h5 ? 1'h0 : _GEN_426; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire  _GEN_526 = Concat == 4'h5 ? 1'h0 : _GEN_434; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire  _GEN_534 = Concat == 4'h5 ? 1'h0 : _GEN_442; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire  _GEN_542 = Concat == 4'h5 ? 1'h0 : _GEN_450; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire  _GEN_550 = Concat == 4'h5 ? 1'h0 : _GEN_458; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire  _GEN_558 = Concat == 4'h5 ? 1'h0 : _GEN_466; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire  _GEN_566 = Concat == 4'h5 ? 1'h0 : _GEN_474; // @[Exercise1.scala 83:35 Exercise1.scala 19:26]
  wire [7:0] _GEN_572 = Concat == 4'h4 ? 8'h0 : _GEN_480; // @[Exercise1.scala 77:35 Exercise1.scala 78:23]
  wire [7:0] _GEN_573 = Concat == 4'h4 ? 8'h0 : _GEN_481; // @[Exercise1.scala 77:35 Exercise1.scala 79:23]
  wire [7:0] _GEN_574 = Concat == 4'h4 ? io_dataIn_2 : _GEN_482; // @[Exercise1.scala 77:35 Exercise1.scala 80:23]
  wire [7:0] _GEN_575 = Concat == 4'h4 ? 8'h0 : _GEN_483; // @[Exercise1.scala 77:35 Exercise1.scala 81:23]
  wire  _GEN_586 = Concat == 4'h4 ? 1'h0 : _T_6; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_594 = Concat == 4'h4 ? 1'h0 : _GEN_494; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_602 = Concat == 4'h4 ? 1'h0 : _GEN_502; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_610 = Concat == 4'h4 ? 1'h0 : _GEN_510; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_618 = Concat == 4'h4 ? 1'h0 : _GEN_518; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_626 = Concat == 4'h4 ? 1'h0 : _GEN_526; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_634 = Concat == 4'h4 ? 1'h0 : _GEN_534; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_642 = Concat == 4'h4 ? 1'h0 : _GEN_542; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_650 = Concat == 4'h4 ? 1'h0 : _GEN_550; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_658 = Concat == 4'h4 ? 1'h0 : _GEN_558; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire  _GEN_666 = Concat == 4'h4 ? 1'h0 : _GEN_566; // @[Exercise1.scala 77:35 Exercise1.scala 19:26]
  wire [7:0] _GEN_672 = Concat == 4'h3 ? io_dataIn_0 : _GEN_572; // @[Exercise1.scala 71:35 Exercise1.scala 72:23]
  wire [7:0] _GEN_673 = Concat == 4'h3 ? io_dataIn_1 : _GEN_573; // @[Exercise1.scala 71:35 Exercise1.scala 73:23]
  wire [7:0] _GEN_674 = Concat == 4'h3 ? 8'h0 : _GEN_574; // @[Exercise1.scala 71:35 Exercise1.scala 74:23]
  wire [7:0] _GEN_675 = Concat == 4'h3 ? 8'h0 : _GEN_575; // @[Exercise1.scala 71:35 Exercise1.scala 75:23]
  wire  _GEN_686 = Concat == 4'h3 ? 1'h0 : _T_5; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_694 = Concat == 4'h3 ? 1'h0 : _GEN_586; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_702 = Concat == 4'h3 ? 1'h0 : _GEN_594; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_710 = Concat == 4'h3 ? 1'h0 : _GEN_602; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_718 = Concat == 4'h3 ? 1'h0 : _GEN_610; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_726 = Concat == 4'h3 ? 1'h0 : _GEN_618; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_734 = Concat == 4'h3 ? 1'h0 : _GEN_626; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_742 = Concat == 4'h3 ? 1'h0 : _GEN_634; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_750 = Concat == 4'h3 ? 1'h0 : _GEN_642; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_758 = Concat == 4'h3 ? 1'h0 : _GEN_650; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_766 = Concat == 4'h3 ? 1'h0 : _GEN_658; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_774 = Concat == 4'h3 ? 1'h0 : _GEN_666; // @[Exercise1.scala 71:35 Exercise1.scala 19:26]
  wire  _GEN_794 = Concat == 4'h2 ? 1'h0 : _T_4; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_802 = Concat == 4'h2 ? 1'h0 : _GEN_686; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_810 = Concat == 4'h2 ? 1'h0 : _GEN_694; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_818 = Concat == 4'h2 ? 1'h0 : _GEN_702; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_826 = Concat == 4'h2 ? 1'h0 : _GEN_710; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_834 = Concat == 4'h2 ? 1'h0 : _GEN_718; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_842 = Concat == 4'h2 ? 1'h0 : _GEN_726; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_850 = Concat == 4'h2 ? 1'h0 : _GEN_734; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_858 = Concat == 4'h2 ? 1'h0 : _GEN_742; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_866 = Concat == 4'h2 ? 1'h0 : _GEN_750; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_874 = Concat == 4'h2 ? 1'h0 : _GEN_758; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_882 = Concat == 4'h2 ? 1'h0 : _GEN_766; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_890 = Concat == 4'h2 ? 1'h0 : _GEN_774; // @[Exercise1.scala 65:35 Exercise1.scala 19:26]
  wire  _GEN_910 = Concat == 4'h1 ? 1'h0 : _T_3; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_918 = Concat == 4'h1 ? 1'h0 : _GEN_794; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_926 = Concat == 4'h1 ? 1'h0 : _GEN_802; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_934 = Concat == 4'h1 ? 1'h0 : _GEN_810; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_942 = Concat == 4'h1 ? 1'h0 : _GEN_818; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_950 = Concat == 4'h1 ? 1'h0 : _GEN_826; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_958 = Concat == 4'h1 ? 1'h0 : _GEN_834; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_966 = Concat == 4'h1 ? 1'h0 : _GEN_842; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_974 = Concat == 4'h1 ? 1'h0 : _GEN_850; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_982 = Concat == 4'h1 ? 1'h0 : _GEN_858; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_990 = Concat == 4'h1 ? 1'h0 : _GEN_866; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_998 = Concat == 4'h1 ? 1'h0 : _GEN_874; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_1006 = Concat == 4'h1 ? 1'h0 : _GEN_882; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_1014 = Concat == 4'h1 ? 1'h0 : _GEN_890; // @[Exercise1.scala 59:35 Exercise1.scala 19:26]
  wire  _GEN_1034 = Concat == 4'h0 ? 1'h0 : _T_2; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1042 = Concat == 4'h0 ? 1'h0 : _GEN_910; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1050 = Concat == 4'h0 ? 1'h0 : _GEN_918; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1058 = Concat == 4'h0 ? 1'h0 : _GEN_926; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1066 = Concat == 4'h0 ? 1'h0 : _GEN_934; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1074 = Concat == 4'h0 ? 1'h0 : _GEN_942; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1082 = Concat == 4'h0 ? 1'h0 : _GEN_950; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1090 = Concat == 4'h0 ? 1'h0 : _GEN_958; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1098 = Concat == 4'h0 ? 1'h0 : _GEN_966; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1106 = Concat == 4'h0 ? 1'h0 : _GEN_974; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1114 = Concat == 4'h0 ? 1'h0 : _GEN_982; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1122 = Concat == 4'h0 ? 1'h0 : _GEN_990; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1130 = Concat == 4'h0 ? 1'h0 : _GEN_998; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1138 = Concat == 4'h0 ? 1'h0 : _GEN_1006; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  wire  _GEN_1146 = Concat == 4'h0 ? 1'h0 : _GEN_1014; // @[Exercise1.scala 53:29 Exercise1.scala 19:26]
  assign mem_0_MPORT_16_addr = mem_0_MPORT_16_addr_pipe_0;
  assign mem_0_MPORT_16_data = mem_0[mem_0_MPORT_16_addr]; // @[Exercise1.scala 19:26]
  assign mem_0_MPORT_data = vector_0;
  assign mem_0_MPORT_addr = io_addr;
  assign mem_0_MPORT_mask = 1'h1;
  assign mem_0_MPORT_en = io_write & _T_1;
  assign mem_0_MPORT_1_data = vector_0;
  assign mem_0_MPORT_1_addr = io_addr;
  assign mem_0_MPORT_1_mask = 1'h1;
  assign mem_0_MPORT_1_en = io_write & _GEN_1034;
  assign mem_0_MPORT_2_data = vector_0;
  assign mem_0_MPORT_2_addr = io_addr;
  assign mem_0_MPORT_2_mask = 1'h1;
  assign mem_0_MPORT_2_en = io_write & _GEN_1042;
  assign mem_0_MPORT_3_data = vector_0;
  assign mem_0_MPORT_3_addr = io_addr;
  assign mem_0_MPORT_3_mask = 1'h1;
  assign mem_0_MPORT_3_en = io_write & _GEN_1050;
  assign mem_0_MPORT_4_data = vector_0;
  assign mem_0_MPORT_4_addr = io_addr;
  assign mem_0_MPORT_4_mask = 1'h1;
  assign mem_0_MPORT_4_en = io_write & _GEN_1058;
  assign mem_0_MPORT_5_data = vector_0;
  assign mem_0_MPORT_5_addr = io_addr;
  assign mem_0_MPORT_5_mask = 1'h1;
  assign mem_0_MPORT_5_en = io_write & _GEN_1066;
  assign mem_0_MPORT_6_data = vector_0;
  assign mem_0_MPORT_6_addr = io_addr;
  assign mem_0_MPORT_6_mask = 1'h1;
  assign mem_0_MPORT_6_en = io_write & _GEN_1074;
  assign mem_0_MPORT_7_data = vector_0;
  assign mem_0_MPORT_7_addr = io_addr;
  assign mem_0_MPORT_7_mask = 1'h1;
  assign mem_0_MPORT_7_en = io_write & _GEN_1082;
  assign mem_0_MPORT_8_data = vector_0;
  assign mem_0_MPORT_8_addr = io_addr;
  assign mem_0_MPORT_8_mask = 1'h1;
  assign mem_0_MPORT_8_en = io_write & _GEN_1090;
  assign mem_0_MPORT_9_data = vector_0;
  assign mem_0_MPORT_9_addr = io_addr;
  assign mem_0_MPORT_9_mask = 1'h1;
  assign mem_0_MPORT_9_en = io_write & _GEN_1098;
  assign mem_0_MPORT_10_data = vector_0;
  assign mem_0_MPORT_10_addr = io_addr;
  assign mem_0_MPORT_10_mask = 1'h1;
  assign mem_0_MPORT_10_en = io_write & _GEN_1106;
  assign mem_0_MPORT_11_data = vector_0;
  assign mem_0_MPORT_11_addr = io_addr;
  assign mem_0_MPORT_11_mask = 1'h1;
  assign mem_0_MPORT_11_en = io_write & _GEN_1114;
  assign mem_0_MPORT_12_data = vector_0;
  assign mem_0_MPORT_12_addr = io_addr;
  assign mem_0_MPORT_12_mask = 1'h1;
  assign mem_0_MPORT_12_en = io_write & _GEN_1122;
  assign mem_0_MPORT_13_data = vector_0;
  assign mem_0_MPORT_13_addr = io_addr;
  assign mem_0_MPORT_13_mask = 1'h1;
  assign mem_0_MPORT_13_en = io_write & _GEN_1130;
  assign mem_0_MPORT_14_data = vector_0;
  assign mem_0_MPORT_14_addr = io_addr;
  assign mem_0_MPORT_14_mask = 1'h1;
  assign mem_0_MPORT_14_en = io_write & _GEN_1138;
  assign mem_0_MPORT_15_data = vector_0;
  assign mem_0_MPORT_15_addr = io_addr;
  assign mem_0_MPORT_15_mask = 1'h1;
  assign mem_0_MPORT_15_en = io_write & _GEN_1146;
  assign mem_1_MPORT_16_addr = mem_1_MPORT_16_addr_pipe_0;
  assign mem_1_MPORT_16_data = mem_1[mem_1_MPORT_16_addr]; // @[Exercise1.scala 19:26]
  assign mem_1_MPORT_data = vector_1;
  assign mem_1_MPORT_addr = io_addr;
  assign mem_1_MPORT_mask = 1'h1;
  assign mem_1_MPORT_en = io_write & _T_1;
  assign mem_1_MPORT_1_data = vector_1;
  assign mem_1_MPORT_1_addr = io_addr;
  assign mem_1_MPORT_1_mask = 1'h1;
  assign mem_1_MPORT_1_en = io_write & _GEN_1034;
  assign mem_1_MPORT_2_data = vector_1;
  assign mem_1_MPORT_2_addr = io_addr;
  assign mem_1_MPORT_2_mask = 1'h1;
  assign mem_1_MPORT_2_en = io_write & _GEN_1042;
  assign mem_1_MPORT_3_data = vector_1;
  assign mem_1_MPORT_3_addr = io_addr;
  assign mem_1_MPORT_3_mask = 1'h1;
  assign mem_1_MPORT_3_en = io_write & _GEN_1050;
  assign mem_1_MPORT_4_data = vector_1;
  assign mem_1_MPORT_4_addr = io_addr;
  assign mem_1_MPORT_4_mask = 1'h1;
  assign mem_1_MPORT_4_en = io_write & _GEN_1058;
  assign mem_1_MPORT_5_data = vector_1;
  assign mem_1_MPORT_5_addr = io_addr;
  assign mem_1_MPORT_5_mask = 1'h1;
  assign mem_1_MPORT_5_en = io_write & _GEN_1066;
  assign mem_1_MPORT_6_data = vector_1;
  assign mem_1_MPORT_6_addr = io_addr;
  assign mem_1_MPORT_6_mask = 1'h1;
  assign mem_1_MPORT_6_en = io_write & _GEN_1074;
  assign mem_1_MPORT_7_data = vector_1;
  assign mem_1_MPORT_7_addr = io_addr;
  assign mem_1_MPORT_7_mask = 1'h1;
  assign mem_1_MPORT_7_en = io_write & _GEN_1082;
  assign mem_1_MPORT_8_data = vector_1;
  assign mem_1_MPORT_8_addr = io_addr;
  assign mem_1_MPORT_8_mask = 1'h1;
  assign mem_1_MPORT_8_en = io_write & _GEN_1090;
  assign mem_1_MPORT_9_data = vector_1;
  assign mem_1_MPORT_9_addr = io_addr;
  assign mem_1_MPORT_9_mask = 1'h1;
  assign mem_1_MPORT_9_en = io_write & _GEN_1098;
  assign mem_1_MPORT_10_data = vector_1;
  assign mem_1_MPORT_10_addr = io_addr;
  assign mem_1_MPORT_10_mask = 1'h1;
  assign mem_1_MPORT_10_en = io_write & _GEN_1106;
  assign mem_1_MPORT_11_data = vector_1;
  assign mem_1_MPORT_11_addr = io_addr;
  assign mem_1_MPORT_11_mask = 1'h1;
  assign mem_1_MPORT_11_en = io_write & _GEN_1114;
  assign mem_1_MPORT_12_data = vector_1;
  assign mem_1_MPORT_12_addr = io_addr;
  assign mem_1_MPORT_12_mask = 1'h1;
  assign mem_1_MPORT_12_en = io_write & _GEN_1122;
  assign mem_1_MPORT_13_data = vector_1;
  assign mem_1_MPORT_13_addr = io_addr;
  assign mem_1_MPORT_13_mask = 1'h1;
  assign mem_1_MPORT_13_en = io_write & _GEN_1130;
  assign mem_1_MPORT_14_data = vector_1;
  assign mem_1_MPORT_14_addr = io_addr;
  assign mem_1_MPORT_14_mask = 1'h1;
  assign mem_1_MPORT_14_en = io_write & _GEN_1138;
  assign mem_1_MPORT_15_data = vector_1;
  assign mem_1_MPORT_15_addr = io_addr;
  assign mem_1_MPORT_15_mask = 1'h1;
  assign mem_1_MPORT_15_en = io_write & _GEN_1146;
  assign mem_2_MPORT_16_addr = mem_2_MPORT_16_addr_pipe_0;
  assign mem_2_MPORT_16_data = mem_2[mem_2_MPORT_16_addr]; // @[Exercise1.scala 19:26]
  assign mem_2_MPORT_data = vector_2;
  assign mem_2_MPORT_addr = io_addr;
  assign mem_2_MPORT_mask = 1'h1;
  assign mem_2_MPORT_en = io_write & _T_1;
  assign mem_2_MPORT_1_data = vector_2;
  assign mem_2_MPORT_1_addr = io_addr;
  assign mem_2_MPORT_1_mask = 1'h1;
  assign mem_2_MPORT_1_en = io_write & _GEN_1034;
  assign mem_2_MPORT_2_data = vector_2;
  assign mem_2_MPORT_2_addr = io_addr;
  assign mem_2_MPORT_2_mask = 1'h1;
  assign mem_2_MPORT_2_en = io_write & _GEN_1042;
  assign mem_2_MPORT_3_data = vector_2;
  assign mem_2_MPORT_3_addr = io_addr;
  assign mem_2_MPORT_3_mask = 1'h1;
  assign mem_2_MPORT_3_en = io_write & _GEN_1050;
  assign mem_2_MPORT_4_data = vector_2;
  assign mem_2_MPORT_4_addr = io_addr;
  assign mem_2_MPORT_4_mask = 1'h1;
  assign mem_2_MPORT_4_en = io_write & _GEN_1058;
  assign mem_2_MPORT_5_data = vector_2;
  assign mem_2_MPORT_5_addr = io_addr;
  assign mem_2_MPORT_5_mask = 1'h1;
  assign mem_2_MPORT_5_en = io_write & _GEN_1066;
  assign mem_2_MPORT_6_data = vector_2;
  assign mem_2_MPORT_6_addr = io_addr;
  assign mem_2_MPORT_6_mask = 1'h1;
  assign mem_2_MPORT_6_en = io_write & _GEN_1074;
  assign mem_2_MPORT_7_data = vector_2;
  assign mem_2_MPORT_7_addr = io_addr;
  assign mem_2_MPORT_7_mask = 1'h1;
  assign mem_2_MPORT_7_en = io_write & _GEN_1082;
  assign mem_2_MPORT_8_data = vector_2;
  assign mem_2_MPORT_8_addr = io_addr;
  assign mem_2_MPORT_8_mask = 1'h1;
  assign mem_2_MPORT_8_en = io_write & _GEN_1090;
  assign mem_2_MPORT_9_data = vector_2;
  assign mem_2_MPORT_9_addr = io_addr;
  assign mem_2_MPORT_9_mask = 1'h1;
  assign mem_2_MPORT_9_en = io_write & _GEN_1098;
  assign mem_2_MPORT_10_data = vector_2;
  assign mem_2_MPORT_10_addr = io_addr;
  assign mem_2_MPORT_10_mask = 1'h1;
  assign mem_2_MPORT_10_en = io_write & _GEN_1106;
  assign mem_2_MPORT_11_data = vector_2;
  assign mem_2_MPORT_11_addr = io_addr;
  assign mem_2_MPORT_11_mask = 1'h1;
  assign mem_2_MPORT_11_en = io_write & _GEN_1114;
  assign mem_2_MPORT_12_data = vector_2;
  assign mem_2_MPORT_12_addr = io_addr;
  assign mem_2_MPORT_12_mask = 1'h1;
  assign mem_2_MPORT_12_en = io_write & _GEN_1122;
  assign mem_2_MPORT_13_data = vector_2;
  assign mem_2_MPORT_13_addr = io_addr;
  assign mem_2_MPORT_13_mask = 1'h1;
  assign mem_2_MPORT_13_en = io_write & _GEN_1130;
  assign mem_2_MPORT_14_data = vector_2;
  assign mem_2_MPORT_14_addr = io_addr;
  assign mem_2_MPORT_14_mask = 1'h1;
  assign mem_2_MPORT_14_en = io_write & _GEN_1138;
  assign mem_2_MPORT_15_data = vector_2;
  assign mem_2_MPORT_15_addr = io_addr;
  assign mem_2_MPORT_15_mask = 1'h1;
  assign mem_2_MPORT_15_en = io_write & _GEN_1146;
  assign mem_3_MPORT_16_addr = mem_3_MPORT_16_addr_pipe_0;
  assign mem_3_MPORT_16_data = mem_3[mem_3_MPORT_16_addr]; // @[Exercise1.scala 19:26]
  assign mem_3_MPORT_data = vector_3;
  assign mem_3_MPORT_addr = io_addr;
  assign mem_3_MPORT_mask = 1'h1;
  assign mem_3_MPORT_en = io_write & _T_1;
  assign mem_3_MPORT_1_data = vector_3;
  assign mem_3_MPORT_1_addr = io_addr;
  assign mem_3_MPORT_1_mask = 1'h1;
  assign mem_3_MPORT_1_en = io_write & _GEN_1034;
  assign mem_3_MPORT_2_data = vector_3;
  assign mem_3_MPORT_2_addr = io_addr;
  assign mem_3_MPORT_2_mask = 1'h1;
  assign mem_3_MPORT_2_en = io_write & _GEN_1042;
  assign mem_3_MPORT_3_data = vector_3;
  assign mem_3_MPORT_3_addr = io_addr;
  assign mem_3_MPORT_3_mask = 1'h1;
  assign mem_3_MPORT_3_en = io_write & _GEN_1050;
  assign mem_3_MPORT_4_data = vector_3;
  assign mem_3_MPORT_4_addr = io_addr;
  assign mem_3_MPORT_4_mask = 1'h1;
  assign mem_3_MPORT_4_en = io_write & _GEN_1058;
  assign mem_3_MPORT_5_data = vector_3;
  assign mem_3_MPORT_5_addr = io_addr;
  assign mem_3_MPORT_5_mask = 1'h1;
  assign mem_3_MPORT_5_en = io_write & _GEN_1066;
  assign mem_3_MPORT_6_data = vector_3;
  assign mem_3_MPORT_6_addr = io_addr;
  assign mem_3_MPORT_6_mask = 1'h1;
  assign mem_3_MPORT_6_en = io_write & _GEN_1074;
  assign mem_3_MPORT_7_data = vector_3;
  assign mem_3_MPORT_7_addr = io_addr;
  assign mem_3_MPORT_7_mask = 1'h1;
  assign mem_3_MPORT_7_en = io_write & _GEN_1082;
  assign mem_3_MPORT_8_data = vector_3;
  assign mem_3_MPORT_8_addr = io_addr;
  assign mem_3_MPORT_8_mask = 1'h1;
  assign mem_3_MPORT_8_en = io_write & _GEN_1090;
  assign mem_3_MPORT_9_data = vector_3;
  assign mem_3_MPORT_9_addr = io_addr;
  assign mem_3_MPORT_9_mask = 1'h1;
  assign mem_3_MPORT_9_en = io_write & _GEN_1098;
  assign mem_3_MPORT_10_data = vector_3;
  assign mem_3_MPORT_10_addr = io_addr;
  assign mem_3_MPORT_10_mask = 1'h1;
  assign mem_3_MPORT_10_en = io_write & _GEN_1106;
  assign mem_3_MPORT_11_data = vector_3;
  assign mem_3_MPORT_11_addr = io_addr;
  assign mem_3_MPORT_11_mask = 1'h1;
  assign mem_3_MPORT_11_en = io_write & _GEN_1114;
  assign mem_3_MPORT_12_data = vector_3;
  assign mem_3_MPORT_12_addr = io_addr;
  assign mem_3_MPORT_12_mask = 1'h1;
  assign mem_3_MPORT_12_en = io_write & _GEN_1122;
  assign mem_3_MPORT_13_data = vector_3;
  assign mem_3_MPORT_13_addr = io_addr;
  assign mem_3_MPORT_13_mask = 1'h1;
  assign mem_3_MPORT_13_en = io_write & _GEN_1130;
  assign mem_3_MPORT_14_data = vector_3;
  assign mem_3_MPORT_14_addr = io_addr;
  assign mem_3_MPORT_14_mask = 1'h1;
  assign mem_3_MPORT_14_en = io_write & _GEN_1138;
  assign mem_3_MPORT_15_data = vector_3;
  assign mem_3_MPORT_15_addr = io_addr;
  assign mem_3_MPORT_15_mask = 1'h1;
  assign mem_3_MPORT_15_en = io_write & _GEN_1146;
  assign io_dataOut_0 = mem_0_MPORT_16_data; // @[Exercise1.scala 153:16]
  assign io_dataOut_1 = mem_1_MPORT_16_data; // @[Exercise1.scala 153:16]
  assign io_dataOut_2 = mem_2_MPORT_16_data; // @[Exercise1.scala 153:16]
  assign io_dataOut_3 = mem_3_MPORT_16_data; // @[Exercise1.scala 153:16]
  always @(posedge clock) begin
    if(mem_0_MPORT_en & mem_0_MPORT_mask) begin
      mem_0[mem_0_MPORT_addr] <= mem_0_MPORT_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_1_en & mem_0_MPORT_1_mask) begin
      mem_0[mem_0_MPORT_1_addr] <= mem_0_MPORT_1_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_2_en & mem_0_MPORT_2_mask) begin
      mem_0[mem_0_MPORT_2_addr] <= mem_0_MPORT_2_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_3_en & mem_0_MPORT_3_mask) begin
      mem_0[mem_0_MPORT_3_addr] <= mem_0_MPORT_3_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_4_en & mem_0_MPORT_4_mask) begin
      mem_0[mem_0_MPORT_4_addr] <= mem_0_MPORT_4_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_5_en & mem_0_MPORT_5_mask) begin
      mem_0[mem_0_MPORT_5_addr] <= mem_0_MPORT_5_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_6_en & mem_0_MPORT_6_mask) begin
      mem_0[mem_0_MPORT_6_addr] <= mem_0_MPORT_6_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_7_en & mem_0_MPORT_7_mask) begin
      mem_0[mem_0_MPORT_7_addr] <= mem_0_MPORT_7_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_8_en & mem_0_MPORT_8_mask) begin
      mem_0[mem_0_MPORT_8_addr] <= mem_0_MPORT_8_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_9_en & mem_0_MPORT_9_mask) begin
      mem_0[mem_0_MPORT_9_addr] <= mem_0_MPORT_9_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_10_en & mem_0_MPORT_10_mask) begin
      mem_0[mem_0_MPORT_10_addr] <= mem_0_MPORT_10_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_11_en & mem_0_MPORT_11_mask) begin
      mem_0[mem_0_MPORT_11_addr] <= mem_0_MPORT_11_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_12_en & mem_0_MPORT_12_mask) begin
      mem_0[mem_0_MPORT_12_addr] <= mem_0_MPORT_12_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_13_en & mem_0_MPORT_13_mask) begin
      mem_0[mem_0_MPORT_13_addr] <= mem_0_MPORT_13_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_14_en & mem_0_MPORT_14_mask) begin
      mem_0[mem_0_MPORT_14_addr] <= mem_0_MPORT_14_data; // @[Exercise1.scala 19:26]
    end
    if(mem_0_MPORT_15_en & mem_0_MPORT_15_mask) begin
      mem_0[mem_0_MPORT_15_addr] <= mem_0_MPORT_15_data; // @[Exercise1.scala 19:26]
    end
    mem_0_MPORT_16_en_pipe_0 <= io_enable;
    if (io_enable) begin
      mem_0_MPORT_16_addr_pipe_0 <= io_addr;
    end
    if(mem_1_MPORT_en & mem_1_MPORT_mask) begin
      mem_1[mem_1_MPORT_addr] <= mem_1_MPORT_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_1_en & mem_1_MPORT_1_mask) begin
      mem_1[mem_1_MPORT_1_addr] <= mem_1_MPORT_1_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_2_en & mem_1_MPORT_2_mask) begin
      mem_1[mem_1_MPORT_2_addr] <= mem_1_MPORT_2_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_3_en & mem_1_MPORT_3_mask) begin
      mem_1[mem_1_MPORT_3_addr] <= mem_1_MPORT_3_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_4_en & mem_1_MPORT_4_mask) begin
      mem_1[mem_1_MPORT_4_addr] <= mem_1_MPORT_4_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_5_en & mem_1_MPORT_5_mask) begin
      mem_1[mem_1_MPORT_5_addr] <= mem_1_MPORT_5_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_6_en & mem_1_MPORT_6_mask) begin
      mem_1[mem_1_MPORT_6_addr] <= mem_1_MPORT_6_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_7_en & mem_1_MPORT_7_mask) begin
      mem_1[mem_1_MPORT_7_addr] <= mem_1_MPORT_7_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_8_en & mem_1_MPORT_8_mask) begin
      mem_1[mem_1_MPORT_8_addr] <= mem_1_MPORT_8_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_9_en & mem_1_MPORT_9_mask) begin
      mem_1[mem_1_MPORT_9_addr] <= mem_1_MPORT_9_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_10_en & mem_1_MPORT_10_mask) begin
      mem_1[mem_1_MPORT_10_addr] <= mem_1_MPORT_10_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_11_en & mem_1_MPORT_11_mask) begin
      mem_1[mem_1_MPORT_11_addr] <= mem_1_MPORT_11_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_12_en & mem_1_MPORT_12_mask) begin
      mem_1[mem_1_MPORT_12_addr] <= mem_1_MPORT_12_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_13_en & mem_1_MPORT_13_mask) begin
      mem_1[mem_1_MPORT_13_addr] <= mem_1_MPORT_13_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_14_en & mem_1_MPORT_14_mask) begin
      mem_1[mem_1_MPORT_14_addr] <= mem_1_MPORT_14_data; // @[Exercise1.scala 19:26]
    end
    if(mem_1_MPORT_15_en & mem_1_MPORT_15_mask) begin
      mem_1[mem_1_MPORT_15_addr] <= mem_1_MPORT_15_data; // @[Exercise1.scala 19:26]
    end
    mem_1_MPORT_16_en_pipe_0 <= io_enable;
    if (io_enable) begin
      mem_1_MPORT_16_addr_pipe_0 <= io_addr;
    end
    if(mem_2_MPORT_en & mem_2_MPORT_mask) begin
      mem_2[mem_2_MPORT_addr] <= mem_2_MPORT_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_1_en & mem_2_MPORT_1_mask) begin
      mem_2[mem_2_MPORT_1_addr] <= mem_2_MPORT_1_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_2_en & mem_2_MPORT_2_mask) begin
      mem_2[mem_2_MPORT_2_addr] <= mem_2_MPORT_2_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_3_en & mem_2_MPORT_3_mask) begin
      mem_2[mem_2_MPORT_3_addr] <= mem_2_MPORT_3_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_4_en & mem_2_MPORT_4_mask) begin
      mem_2[mem_2_MPORT_4_addr] <= mem_2_MPORT_4_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_5_en & mem_2_MPORT_5_mask) begin
      mem_2[mem_2_MPORT_5_addr] <= mem_2_MPORT_5_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_6_en & mem_2_MPORT_6_mask) begin
      mem_2[mem_2_MPORT_6_addr] <= mem_2_MPORT_6_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_7_en & mem_2_MPORT_7_mask) begin
      mem_2[mem_2_MPORT_7_addr] <= mem_2_MPORT_7_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_8_en & mem_2_MPORT_8_mask) begin
      mem_2[mem_2_MPORT_8_addr] <= mem_2_MPORT_8_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_9_en & mem_2_MPORT_9_mask) begin
      mem_2[mem_2_MPORT_9_addr] <= mem_2_MPORT_9_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_10_en & mem_2_MPORT_10_mask) begin
      mem_2[mem_2_MPORT_10_addr] <= mem_2_MPORT_10_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_11_en & mem_2_MPORT_11_mask) begin
      mem_2[mem_2_MPORT_11_addr] <= mem_2_MPORT_11_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_12_en & mem_2_MPORT_12_mask) begin
      mem_2[mem_2_MPORT_12_addr] <= mem_2_MPORT_12_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_13_en & mem_2_MPORT_13_mask) begin
      mem_2[mem_2_MPORT_13_addr] <= mem_2_MPORT_13_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_14_en & mem_2_MPORT_14_mask) begin
      mem_2[mem_2_MPORT_14_addr] <= mem_2_MPORT_14_data; // @[Exercise1.scala 19:26]
    end
    if(mem_2_MPORT_15_en & mem_2_MPORT_15_mask) begin
      mem_2[mem_2_MPORT_15_addr] <= mem_2_MPORT_15_data; // @[Exercise1.scala 19:26]
    end
    mem_2_MPORT_16_en_pipe_0 <= io_enable;
    if (io_enable) begin
      mem_2_MPORT_16_addr_pipe_0 <= io_addr;
    end
    if(mem_3_MPORT_en & mem_3_MPORT_mask) begin
      mem_3[mem_3_MPORT_addr] <= mem_3_MPORT_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_1_en & mem_3_MPORT_1_mask) begin
      mem_3[mem_3_MPORT_1_addr] <= mem_3_MPORT_1_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_2_en & mem_3_MPORT_2_mask) begin
      mem_3[mem_3_MPORT_2_addr] <= mem_3_MPORT_2_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_3_en & mem_3_MPORT_3_mask) begin
      mem_3[mem_3_MPORT_3_addr] <= mem_3_MPORT_3_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_4_en & mem_3_MPORT_4_mask) begin
      mem_3[mem_3_MPORT_4_addr] <= mem_3_MPORT_4_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_5_en & mem_3_MPORT_5_mask) begin
      mem_3[mem_3_MPORT_5_addr] <= mem_3_MPORT_5_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_6_en & mem_3_MPORT_6_mask) begin
      mem_3[mem_3_MPORT_6_addr] <= mem_3_MPORT_6_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_7_en & mem_3_MPORT_7_mask) begin
      mem_3[mem_3_MPORT_7_addr] <= mem_3_MPORT_7_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_8_en & mem_3_MPORT_8_mask) begin
      mem_3[mem_3_MPORT_8_addr] <= mem_3_MPORT_8_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_9_en & mem_3_MPORT_9_mask) begin
      mem_3[mem_3_MPORT_9_addr] <= mem_3_MPORT_9_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_10_en & mem_3_MPORT_10_mask) begin
      mem_3[mem_3_MPORT_10_addr] <= mem_3_MPORT_10_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_11_en & mem_3_MPORT_11_mask) begin
      mem_3[mem_3_MPORT_11_addr] <= mem_3_MPORT_11_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_12_en & mem_3_MPORT_12_mask) begin
      mem_3[mem_3_MPORT_12_addr] <= mem_3_MPORT_12_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_13_en & mem_3_MPORT_13_mask) begin
      mem_3[mem_3_MPORT_13_addr] <= mem_3_MPORT_13_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_14_en & mem_3_MPORT_14_mask) begin
      mem_3[mem_3_MPORT_14_addr] <= mem_3_MPORT_14_data; // @[Exercise1.scala 19:26]
    end
    if(mem_3_MPORT_15_en & mem_3_MPORT_15_mask) begin
      mem_3[mem_3_MPORT_15_addr] <= mem_3_MPORT_15_data; // @[Exercise1.scala 19:26]
    end
    mem_3_MPORT_16_en_pipe_0 <= io_enable;
    if (io_enable) begin
      mem_3_MPORT_16_addr_pipe_0 <= io_addr;
    end
    if (io_write) begin // @[Exercise1.scala 52:31]
      if (Concat == 4'h0) begin // @[Exercise1.scala 53:29]
        vector_0 <= 8'h0; // @[Exercise1.scala 54:23]
      end else if (Concat == 4'h1) begin // @[Exercise1.scala 59:35]
        vector_0 <= io_dataIn_0; // @[Exercise1.scala 60:23]
      end else if (Concat == 4'h2) begin // @[Exercise1.scala 65:35]
        vector_0 <= 8'h0; // @[Exercise1.scala 66:23]
      end else begin
        vector_0 <= _GEN_672;
      end
    end
    if (io_write) begin // @[Exercise1.scala 52:31]
      if (Concat == 4'h0) begin // @[Exercise1.scala 53:29]
        vector_1 <= 8'h0; // @[Exercise1.scala 55:23]
      end else if (Concat == 4'h1) begin // @[Exercise1.scala 59:35]
        vector_1 <= 8'h0; // @[Exercise1.scala 61:23]
      end else if (Concat == 4'h2) begin // @[Exercise1.scala 65:35]
        vector_1 <= io_dataIn_1; // @[Exercise1.scala 67:23]
      end else begin
        vector_1 <= _GEN_673;
      end
    end
    if (io_write) begin // @[Exercise1.scala 52:31]
      if (Concat == 4'h0) begin // @[Exercise1.scala 53:29]
        vector_2 <= 8'h0; // @[Exercise1.scala 56:23]
      end else if (Concat == 4'h1) begin // @[Exercise1.scala 59:35]
        vector_2 <= 8'h0; // @[Exercise1.scala 62:23]
      end else if (Concat == 4'h2) begin // @[Exercise1.scala 65:35]
        vector_2 <= 8'h0; // @[Exercise1.scala 68:23]
      end else begin
        vector_2 <= _GEN_674;
      end
    end
    if (io_write) begin // @[Exercise1.scala 52:31]
      if (Concat == 4'h0) begin // @[Exercise1.scala 53:29]
        vector_3 <= 8'h0; // @[Exercise1.scala 57:23]
      end else if (Concat == 4'h1) begin // @[Exercise1.scala 59:35]
        vector_3 <= 8'h0; // @[Exercise1.scala 63:23]
      end else if (Concat == 4'h2) begin // @[Exercise1.scala 65:35]
        vector_3 <= 8'h0; // @[Exercise1.scala 69:23]
      end else begin
        vector_3 <= _GEN_675;
      end
    end
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
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem_1[initvar] = _RAND_3[7:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem_2[initvar] = _RAND_6[7:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem_3[initvar] = _RAND_9[7:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_0_MPORT_16_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_0_MPORT_16_addr_pipe_0 = _RAND_2[9:0];
  _RAND_4 = {1{`RANDOM}};
  mem_1_MPORT_16_en_pipe_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  mem_1_MPORT_16_addr_pipe_0 = _RAND_5[9:0];
  _RAND_7 = {1{`RANDOM}};
  mem_2_MPORT_16_en_pipe_0 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  mem_2_MPORT_16_addr_pipe_0 = _RAND_8[9:0];
  _RAND_10 = {1{`RANDOM}};
  mem_3_MPORT_16_en_pipe_0 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  mem_3_MPORT_16_addr_pipe_0 = _RAND_11[9:0];
  _RAND_12 = {1{`RANDOM}};
  vector_0 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  vector_1 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  vector_2 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  vector_3 = _RAND_15[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
