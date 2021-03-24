;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab2_exe_2 : 
  module lab2_exe_2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in0 : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, flip in3 : UInt<1>, flip in4 : UInt<1>, flip in5 : UInt<1>, flip in6 : UInt<1>, flip in7 : UInt<1>, flip sel : UInt<3>, out : UInt<1>}
    
    node _io_out_T = bits(io.sel, 2, 2) @[lab2_exe_2.scala 32:35]
    node _io_out_T_1 = eq(UInt<1>("h00"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_2 = mux(_io_out_T_1, io.in0, UInt<1>("h00")) @[Mux.scala 80:57]
    node _io_out_T_3 = eq(UInt<1>("h01"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_4 = mux(_io_out_T_3, io.in1, _io_out_T_2) @[Mux.scala 80:57]
    node _io_out_T_5 = eq(UInt<2>("h02"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_6 = mux(_io_out_T_5, io.in2, _io_out_T_4) @[Mux.scala 80:57]
    node _io_out_T_7 = eq(UInt<2>("h03"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_8 = mux(_io_out_T_7, io.in3, _io_out_T_6) @[Mux.scala 80:57]
    node _io_out_T_9 = eq(UInt<3>("h04"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_10 = mux(_io_out_T_9, io.in4, UInt<1>("h00")) @[Mux.scala 80:57]
    node _io_out_T_11 = eq(UInt<3>("h05"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_12 = mux(_io_out_T_11, io.in5, _io_out_T_10) @[Mux.scala 80:57]
    node _io_out_T_13 = eq(UInt<3>("h06"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_14 = mux(_io_out_T_13, io.in6, _io_out_T_12) @[Mux.scala 80:57]
    node _io_out_T_15 = eq(UInt<3>("h07"), io.sel) @[Mux.scala 80:60]
    node _io_out_T_16 = mux(_io_out_T_15, io.in7, _io_out_T_14) @[Mux.scala 80:57]
    node _io_out_T_17 = eq(UInt<1>("h01"), _io_out_T) @[Mux.scala 80:60]
    node _io_out_T_18 = mux(_io_out_T_17, _io_out_T_16, _io_out_T_8) @[Mux.scala 80:57]
    io.out <= _io_out_T_18 @[lab2_exe_2.scala 32:16]
    
