circuit decoder_with_valid_bits :
  module decoder_with_valid_bits :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<2>
    output io_out_valid : UInt<1>
    output io_out_bits : UInt<4>

    node _T = eq(UInt<1>("h0"), io_in) @[Conditional.scala 37:30]
    node _T_1 = eq(UInt<1>("h1"), io_in) @[Conditional.scala 37:30]
    node _T_2 = eq(UInt<2>("h2"), io_in) @[Conditional.scala 37:30]
    node _T_3 = eq(UInt<2>("h3"), io_in) @[Conditional.scala 37:30]
    node _GEN_0 = mux(_T_3, UInt<4>("h8"), UInt<1>("h0")) @[Conditional.scala 39:67 Task3.scala 27:25 Task3.scala 13:17]
    node _GEN_1 = mux(_T_3, UInt<1>("h1"), UInt<1>("h0")) @[Conditional.scala 39:67 Task3.scala 28:26 Task3.scala 14:18]
    node _GEN_2 = mux(_T_2, UInt<3>("h4"), _GEN_0) @[Conditional.scala 39:67 Task3.scala 24:25]
    node _GEN_3 = mux(_T_2, UInt<1>("h1"), _GEN_1) @[Conditional.scala 39:67 Task3.scala 25:26]
    node _GEN_4 = mux(_T_1, UInt<2>("h2"), _GEN_2) @[Conditional.scala 39:67 Task3.scala 21:25]
    node _GEN_5 = mux(_T_1, UInt<1>("h1"), _GEN_3) @[Conditional.scala 39:67 Task3.scala 22:26]
    node _GEN_6 = mux(_T, UInt<1>("h1"), _GEN_4) @[Conditional.scala 40:58 Task3.scala 18:25]
    node _GEN_7 = mux(_T, UInt<1>("h1"), _GEN_5) @[Conditional.scala 40:58 Task3.scala 19:26]
    io_out_valid <= _GEN_7
    io_out_bits <= _GEN_6
