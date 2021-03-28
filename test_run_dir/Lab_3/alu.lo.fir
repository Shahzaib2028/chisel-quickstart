circuit alu :
  module alu :
    input clock : Clock
    input reset : UInt<1>
    input io_a : SInt<32>
    input io_b : SInt<32>
    input io_ALUcont : UInt<5>
    output io_out : SInt<32>

    node _T = eq(UInt<1>("h0"), io_ALUcont) @[Conditional.scala 37:30]
    node _io_out_T = add(io_a, io_b) @[Exercise2.scala 49:48]
    node _io_out_T_1 = tail(_io_out_T, 1) @[Exercise2.scala 49:48]
    node _io_out_T_2 = asSInt(_io_out_T_1) @[Exercise2.scala 49:48]
    node _T_1 = eq(UInt<1>("h1"), io_ALUcont) @[Conditional.scala 37:30]
    node shift_left = bits(io_b, 4, 0) @[Exercise2.scala 52:54]
    node _io_out_T_3 = dshl(io_a, shift_left) @[Exercise2.scala 53:48]
    node _T_2 = eq(UInt<2>("h2"), io_ALUcont) @[Conditional.scala 37:30]
    node _T_3 = lt(io_a, io_b) @[Exercise2.scala 56:43]
    node _GEN_0 = mux(_T_3, asSInt(UInt<2>("h1")), asSInt(UInt<1>("h0"))) @[Exercise2.scala 56:50 Exercise2.scala 57:48 Exercise2.scala 59:48]
    node _T_4 = eq(UInt<2>("h3"), io_ALUcont) @[Conditional.scala 37:30]
    node _T_5 = asUInt(io_a) @[Exercise2.scala 63:43]
    node _T_6 = asUInt(io_b) @[Exercise2.scala 63:57]
    node _T_7 = lt(_T_5, _T_6) @[Exercise2.scala 63:50]
    node _GEN_1 = mux(_T_7, asSInt(UInt<2>("h1")), asSInt(UInt<1>("h0"))) @[Exercise2.scala 63:64 Exercise2.scala 64:48 Exercise2.scala 66:48]
    node _T_8 = eq(UInt<3>("h4"), io_ALUcont) @[Conditional.scala 37:30]
    node _io_out_T_4 = xor(io_a, io_b) @[Exercise2.scala 70:49]
    node _io_out_T_5 = asSInt(_io_out_T_4) @[Exercise2.scala 70:49]
    node _T_9 = eq(UInt<3>("h5"), io_ALUcont) @[Conditional.scala 37:30]
    node shift_right = bits(io_b, 4, 0) @[Exercise2.scala 73:55]
    node _io_out_T_6 = dshr(io_a, shift_right) @[Exercise2.scala 74:48]
    node _T_10 = eq(UInt<3>("h6"), io_ALUcont) @[Conditional.scala 37:30]
    node _io_out_T_7 = or(io_a, io_b) @[Exercise2.scala 77:49]
    node _io_out_T_8 = asSInt(_io_out_T_7) @[Exercise2.scala 77:49]
    node _T_11 = eq(UInt<3>("h7"), io_ALUcont) @[Conditional.scala 37:30]
    node _io_out_T_9 = and(io_a, io_b) @[Exercise2.scala 80:49]
    node _io_out_T_10 = asSInt(_io_out_T_9) @[Exercise2.scala 80:49]
    node _T_12 = eq(UInt<4>("h8"), io_ALUcont) @[Conditional.scala 37:30]
    node _io_out_T_11 = sub(io_a, io_b) @[Exercise2.scala 83:49]
    node _io_out_T_12 = tail(_io_out_T_11, 1) @[Exercise2.scala 83:49]
    node _io_out_T_13 = asSInt(_io_out_T_12) @[Exercise2.scala 83:49]
    node _T_13 = eq(UInt<4>("hd"), io_ALUcont) @[Conditional.scala 37:30]
    node shift_right_a = bits(io_b, 4, 0) @[Exercise2.scala 86:57]
    node _io_out_T_14 = dshr(io_a, shift_right_a) @[Exercise2.scala 87:48]
    node _GEN_2 = mux(_T_13, _io_out_T_14, asSInt(UInt<1>("h0"))) @[Conditional.scala 39:67 Exercise2.scala 87:40 Exercise2.scala 45:24]
    node _GEN_3 = mux(_T_12, _io_out_T_13, _GEN_2) @[Conditional.scala 39:67 Exercise2.scala 83:40]
    node _GEN_4 = mux(_T_11, _io_out_T_10, _GEN_3) @[Conditional.scala 39:67 Exercise2.scala 80:40]
    node _GEN_5 = mux(_T_10, _io_out_T_8, _GEN_4) @[Conditional.scala 39:67 Exercise2.scala 77:40]
    node _GEN_6 = mux(_T_9, _io_out_T_6, _GEN_5) @[Conditional.scala 39:67 Exercise2.scala 74:40]
    node _GEN_7 = mux(_T_8, _io_out_T_5, _GEN_6) @[Conditional.scala 39:67 Exercise2.scala 70:40]
    node _GEN_8 = mux(_T_4, _GEN_1, _GEN_7) @[Conditional.scala 39:67]
    node _GEN_9 = mux(_T_2, _GEN_0, _GEN_8) @[Conditional.scala 39:67]
    node _GEN_10 = mux(_T_1, _io_out_T_3, _GEN_9) @[Conditional.scala 39:67 Exercise2.scala 53:40]
    node _GEN_11 = mux(_T, _io_out_T_2, _GEN_10) @[Conditional.scala 40:58 Exercise2.scala 49:40]
    io_out <= asSInt(bits(_GEN_11, 31, 0))
