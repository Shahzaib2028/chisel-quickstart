circuit lab2_exe_3 :
  module lab2_exe_3 :
    input clock : Clock
    input reset : UInt<1>
    input io_in0 : UInt<1>
    input io_in1 : UInt<1>
    input io_in2 : UInt<1>
    input io_in3 : UInt<1>
    input io_sel1 : UInt<2>
    input io_sel2 : UInt<2>
    input io_sel3 : UInt<2>
    output io_out0 : UInt<1>
    output io_out1 : UInt<1>

    node _io_out0_T = bits(io_sel1, 0, 0) @[Mux.scala 29:36]
    node _io_out0_T_1 = bits(io_sel1, 1, 1) @[Mux.scala 29:36]
    node _io_out0_T_2 = mux(_io_out0_T, io_in1, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_out0_T_3 = mux(_io_out0_T_1, io_in3, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_out0_T_4 = or(_io_out0_T_2, _io_out0_T_3) @[Mux.scala 27:72]
    node _io_out0_T_5 = bits(io_sel2, 0, 0) @[Mux.scala 29:36]
    node _io_out0_T_6 = bits(io_sel2, 1, 1) @[Mux.scala 29:36]
    node _io_out0_T_7 = mux(_io_out0_T_5, io_in1, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_out0_T_8 = mux(_io_out0_T_6, io_in3, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_out0_T_9 = or(_io_out0_T_7, _io_out0_T_8) @[Mux.scala 27:72]
    node _io_out0_WIRE = _io_out0_T_4 @[Mux.scala 27:72 Mux.scala 27:72]
    node _io_out0_WIRE_1 = _io_out0_T_9 @[Mux.scala 27:72 Mux.scala 27:72]
    node _io_out0_T_10 = or(_io_out0_WIRE, _io_out0_WIRE_1) @[lab2_exe_3.scala 24:60]
    node _io_out1_T = bits(io_sel2, 0, 0) @[Mux.scala 29:36]
    node _io_out1_T_1 = bits(io_sel2, 1, 1) @[Mux.scala 29:36]
    node _io_out1_T_2 = mux(_io_out1_T, io_in2, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_out1_T_3 = mux(_io_out1_T_1, io_in3, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_out1_T_4 = or(_io_out1_T_2, _io_out1_T_3) @[Mux.scala 27:72]
    node _io_out1_T_5 = bits(io_sel3, 0, 0) @[Mux.scala 29:36]
    node _io_out1_T_6 = bits(io_sel3, 1, 1) @[Mux.scala 29:36]
    node _io_out1_T_7 = mux(_io_out1_T_5, io_in2, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_out1_T_8 = mux(_io_out1_T_6, io_in3, UInt<1>("h0")) @[Mux.scala 27:72]
    node _io_out1_T_9 = or(_io_out1_T_7, _io_out1_T_8) @[Mux.scala 27:72]
    node _io_out1_WIRE = _io_out1_T_4 @[Mux.scala 27:72 Mux.scala 27:72]
    node _io_out1_WIRE_1 = _io_out1_T_9 @[Mux.scala 27:72 Mux.scala 27:72]
    node _io_out1_T_10 = or(_io_out1_WIRE, _io_out1_WIRE_1) @[lab2_exe_3.scala 25:60]
    io_out0 <= _io_out0_T_10 @[lab2_exe_3.scala 24:17]
    io_out1 <= _io_out1_T_10 @[lab2_exe_3.scala 25:17]
