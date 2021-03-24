;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab2_exe_3 : 
  module lab2_exe_3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in0 : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, flip in3 : UInt<1>, flip sel1 : UInt<2>, flip sel2 : UInt<2>, flip sel3 : UInt<2>, out0 : UInt<1>, out1 : UInt<1>}
    
    node _io_out0_T = bits(io.sel1, 0, 0) @[Mux.scala 29:36]
    node _io_out0_T_1 = bits(io.sel1, 1, 1) @[Mux.scala 29:36]
    node _io_out0_T_2 = mux(_io_out0_T, io.in1, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_out0_T_3 = mux(_io_out0_T_1, io.in3, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_out0_T_4 = or(_io_out0_T_2, _io_out0_T_3) @[Mux.scala 27:72]
    wire _io_out0_WIRE : UInt<1> @[Mux.scala 27:72]
    _io_out0_WIRE <= _io_out0_T_4 @[Mux.scala 27:72]
    node _io_out0_T_5 = bits(io.sel2, 0, 0) @[Mux.scala 29:36]
    node _io_out0_T_6 = bits(io.sel2, 1, 1) @[Mux.scala 29:36]
    node _io_out0_T_7 = mux(_io_out0_T_5, io.in1, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_out0_T_8 = mux(_io_out0_T_6, io.in3, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_out0_T_9 = or(_io_out0_T_7, _io_out0_T_8) @[Mux.scala 27:72]
    wire _io_out0_WIRE_1 : UInt<1> @[Mux.scala 27:72]
    _io_out0_WIRE_1 <= _io_out0_T_9 @[Mux.scala 27:72]
    node _io_out0_T_10 = or(_io_out0_WIRE, _io_out0_WIRE_1) @[lab2_exe_3.scala 24:60]
    io.out0 <= _io_out0_T_10 @[lab2_exe_3.scala 24:17]
    node _io_out1_T = bits(io.sel2, 0, 0) @[Mux.scala 29:36]
    node _io_out1_T_1 = bits(io.sel2, 1, 1) @[Mux.scala 29:36]
    node _io_out1_T_2 = mux(_io_out1_T, io.in2, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_out1_T_3 = mux(_io_out1_T_1, io.in3, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_out1_T_4 = or(_io_out1_T_2, _io_out1_T_3) @[Mux.scala 27:72]
    wire _io_out1_WIRE : UInt<1> @[Mux.scala 27:72]
    _io_out1_WIRE <= _io_out1_T_4 @[Mux.scala 27:72]
    node _io_out1_T_5 = bits(io.sel3, 0, 0) @[Mux.scala 29:36]
    node _io_out1_T_6 = bits(io.sel3, 1, 1) @[Mux.scala 29:36]
    node _io_out1_T_7 = mux(_io_out1_T_5, io.in2, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_out1_T_8 = mux(_io_out1_T_6, io.in3, UInt<1>("h00")) @[Mux.scala 27:72]
    node _io_out1_T_9 = or(_io_out1_T_7, _io_out1_T_8) @[Mux.scala 27:72]
    wire _io_out1_WIRE_1 : UInt<1> @[Mux.scala 27:72]
    _io_out1_WIRE_1 <= _io_out1_T_9 @[Mux.scala 27:72]
    node _io_out1_T_10 = or(_io_out1_WIRE, _io_out1_WIRE_1) @[lab2_exe_3.scala 25:60]
    io.out1 <= _io_out1_T_10 @[lab2_exe_3.scala 25:17]
    
