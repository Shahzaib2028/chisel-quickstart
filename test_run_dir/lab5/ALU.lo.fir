circuit ALU :
  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_alu_oper : UInt<32>
    input io_arg_x : UInt<32>
    input io_arg_y : UInt<32>
    output io_alu_out : UInt<32>

    node _T = eq(io_alu_oper, UInt<1>("h0")) @[Exercise1.scala 12:26]
    node _io_alu_out_T = and(io_arg_x, io_arg_y) @[Exercise1.scala 13:40]
    node _T_1 = eq(io_alu_oper, UInt<1>("h1")) @[Exercise1.scala 14:32]
    node _io_alu_out_T_1 = or(io_arg_x, io_arg_y) @[Exercise1.scala 15:40]
    node _T_2 = eq(io_alu_oper, UInt<2>("h2")) @[Exercise1.scala 16:32]
    node _io_alu_out_T_2 = add(io_arg_x, io_arg_y) @[Exercise1.scala 17:40]
    node _io_alu_out_T_3 = tail(_io_alu_out_T_2, 1) @[Exercise1.scala 17:40]
    node _T_3 = eq(io_alu_oper, UInt<3>("h6")) @[Exercise1.scala 18:32]
    node _io_alu_out_T_4 = sub(io_arg_x, io_arg_y) @[Exercise1.scala 19:40]
    node _io_alu_out_T_5 = tail(_io_alu_out_T_4, 1) @[Exercise1.scala 19:40]
    node _T_4 = eq(io_alu_oper, UInt<2>("h3")) @[Exercise1.scala 20:32]
    node _io_alu_out_T_6 = xor(io_arg_x, io_arg_y) @[Exercise1.scala 21:40]
    node _T_5 = eq(io_alu_oper, UInt<3>("h4")) @[Exercise1.scala 22:32]
    node _io_alu_out_T_7 = bits(io_arg_y, 4, 0) @[Exercise1.scala 23:51]
    node _io_alu_out_T_8 = dshl(io_arg_x, _io_alu_out_T_7) @[Exercise1.scala 23:40]
    node _T_6 = eq(io_alu_oper, UInt<3>("h5")) @[Exercise1.scala 24:32]
    node _io_alu_out_T_9 = bits(io_arg_y, 4, 0) @[Exercise1.scala 25:51]
    node _io_alu_out_T_10 = dshr(io_arg_x, _io_alu_out_T_9) @[Exercise1.scala 25:40]
    node _T_7 = eq(io_alu_oper, UInt<3>("h7")) @[Exercise1.scala 26:32]
    node _io_alu_out_T_11 = asSInt(io_arg_x) @[Exercise1.scala 27:41]
    node _io_alu_out_T_12 = bits(io_arg_y, 4, 0) @[Exercise1.scala 27:59]
    node _io_alu_out_T_13 = dshr(_io_alu_out_T_11, _io_alu_out_T_12) @[Exercise1.scala 27:48]
    node _io_alu_out_T_14 = asUInt(_io_alu_out_T_13) @[Exercise1.scala 27:73]
    node _T_8 = eq(io_alu_oper, UInt<4>("h8")) @[Exercise1.scala 28:32]
    node _io_alu_out_T_15 = asSInt(io_arg_x) @[Exercise1.scala 29:40]
    node _io_alu_out_T_16 = asSInt(io_arg_y) @[Exercise1.scala 29:58]
    node _io_alu_out_T_17 = lt(_io_alu_out_T_15, _io_alu_out_T_16) @[Exercise1.scala 29:47]
    node _T_9 = eq(io_alu_oper, UInt<4>("h9")) @[Exercise1.scala 30:32]
    node _io_alu_out_T_18 = lt(io_arg_x, io_arg_y) @[Exercise1.scala 31:40]
    node _GEN_0 = mux(_T_9, _io_alu_out_T_18, UInt<1>("h0")) @[Exercise1.scala 30:46 Exercise1.scala 31:28 Exercise1.scala 33:28]
    node _GEN_1 = mux(_T_8, _io_alu_out_T_17, _GEN_0) @[Exercise1.scala 28:46 Exercise1.scala 29:28]
    node _GEN_2 = mux(_T_7, _io_alu_out_T_14, _GEN_1) @[Exercise1.scala 26:46 Exercise1.scala 27:28]
    node _GEN_3 = mux(_T_6, _io_alu_out_T_10, _GEN_2) @[Exercise1.scala 24:46 Exercise1.scala 25:28]
    node _GEN_4 = mux(_T_5, _io_alu_out_T_8, _GEN_3) @[Exercise1.scala 22:46 Exercise1.scala 23:28]
    node _GEN_5 = mux(_T_4, _io_alu_out_T_6, _GEN_4) @[Exercise1.scala 20:46 Exercise1.scala 21:28]
    node _GEN_6 = mux(_T_3, _io_alu_out_T_5, _GEN_5) @[Exercise1.scala 18:46 Exercise1.scala 19:28]
    node _GEN_7 = mux(_T_2, _io_alu_out_T_3, _GEN_6) @[Exercise1.scala 16:46 Exercise1.scala 17:28]
    node _GEN_8 = mux(_T_1, _io_alu_out_T_1, _GEN_7) @[Exercise1.scala 14:46 Exercise1.scala 15:28]
    node _GEN_9 = mux(_T, _io_alu_out_T, _GEN_8) @[Exercise1.scala 12:40 Exercise1.scala 13:28]
    io_alu_out <= bits(_GEN_9, 31, 0)
