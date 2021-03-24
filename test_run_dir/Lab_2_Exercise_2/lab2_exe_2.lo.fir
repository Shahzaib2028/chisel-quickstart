circuit lab2_exe_2 :
  module lab2_exe_2 :
    input clock : Clock
    input reset : UInt<1>
    input io_in0 : UInt<1>
    input io_in1 : UInt<1>
    input io_in2 : UInt<1>
    input io_in3 : UInt<1>
    input io_in4 : UInt<1>
    input io_in5 : UInt<1>
    input io_in6 : UInt<1>
    input io_in7 : UInt<1>
    input io_sel : UInt<3>
    output io_out : UInt<1>

    node _io_out_T = bits(io_sel, 2, 2) @[lab2_exe_2.scala 32:35]
    node _io_out_T_1 = eq(UInt<1>("h0"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_2 = mux(_io_out_T_1, io_in0, UInt<1>("h0")) @[Mux.scala 80:57]
    node _io_out_T_3 = eq(UInt<1>("h1"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_4 = mux(_io_out_T_3, io_in1, _io_out_T_2) @[Mux.scala 80:57]
    node _io_out_T_5 = eq(UInt<2>("h2"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_6 = mux(_io_out_T_5, io_in2, _io_out_T_4) @[Mux.scala 80:57]
    node _io_out_T_7 = eq(UInt<2>("h3"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_8 = mux(_io_out_T_7, io_in3, _io_out_T_6) @[Mux.scala 80:57]
    node _io_out_T_9 = eq(UInt<3>("h4"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_10 = mux(_io_out_T_9, io_in4, UInt<1>("h0")) @[Mux.scala 80:57]
    node _io_out_T_11 = eq(UInt<3>("h5"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_12 = mux(_io_out_T_11, io_in5, _io_out_T_10) @[Mux.scala 80:57]
    node _io_out_T_13 = eq(UInt<3>("h6"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_14 = mux(_io_out_T_13, io_in6, _io_out_T_12) @[Mux.scala 80:57]
    node _io_out_T_15 = eq(UInt<3>("h7"), io_sel) @[Mux.scala 80:60]
    node _io_out_T_16 = mux(_io_out_T_15, io_in7, _io_out_T_14) @[Mux.scala 80:57]
    node _io_out_T_17 = eq(UInt<1>("h1"), _io_out_T) @[Mux.scala 80:60]
    node _io_out_T_18 = mux(_io_out_T_17, _io_out_T_16, _io_out_T_8) @[Mux.scala 80:57]
    io_out <= _io_out_T_18 @[lab2_exe_2.scala 32:16]
