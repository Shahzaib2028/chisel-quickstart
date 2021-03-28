circuit Encoder2to4 :
  module Encoder2to4 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_out : UInt<2>

    node _T = eq(io_in, UInt<1>("h1")) @[Example1.scala 14:20]
    node _T_1 = eq(io_in, UInt<2>("h2")) @[Example1.scala 16:26]
    node _T_2 = eq(io_in, UInt<3>("h4")) @[Example1.scala 18:26]
    node _GEN_0 = mux(_T_2, UInt<2>("h2"), UInt<2>("h3")) @[Example1.scala 18:40 Example1.scala 19:24 Example1.scala 21:24]
    node _GEN_1 = mux(_T_1, UInt<1>("h1"), _GEN_0) @[Example1.scala 16:40 Example1.scala 17:24]
    node _GEN_2 = mux(_T, UInt<1>("h0"), _GEN_1) @[Example1.scala 14:34 Example1.scala 15:24]
    io_out <= _GEN_2
