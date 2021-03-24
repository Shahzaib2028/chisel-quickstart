circuit lab2_task1 :
  module lab2_task1 :
    input clock : Clock
    input reset : UInt<1>
    input io_s0 : UInt<1>
    input io_s1 : UInt<1>
    input io_s2 : UInt<1>
    output io_out : UInt<32>

    node concat_hi = cat(io_s2, io_s1) @[Cat.scala 30:58]
    node concat = cat(concat_hi, io_s0) @[Cat.scala 30:58]
    node _io_out_T = eq(concat, UInt<1>("h0")) @[lab2_task1.scala 17:17]
    node _io_out_T_1 = eq(concat, UInt<1>("h1")) @[lab2_task1.scala 18:17]
    node _io_out_T_2 = eq(concat, UInt<2>("h2")) @[lab2_task1.scala 19:17]
    node _io_out_T_3 = eq(concat, UInt<2>("h3")) @[lab2_task1.scala 20:17]
    node _io_out_T_4 = mux(_io_out_T_3, UInt<5>("h18"), UInt<6>("h20")) @[Mux.scala 98:16]
    node _io_out_T_5 = mux(_io_out_T_2, UInt<5>("h10"), _io_out_T_4) @[Mux.scala 98:16]
    node _io_out_T_6 = mux(_io_out_T_1, UInt<4>("h8"), _io_out_T_5) @[Mux.scala 98:16]
    node _io_out_T_7 = mux(_io_out_T, UInt<1>("h0"), _io_out_T_6) @[Mux.scala 98:16]
    io_out <= _io_out_T_7 @[lab2_task1.scala 16:16]
