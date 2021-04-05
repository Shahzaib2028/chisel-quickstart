;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Exercise3 : 
  module Exercise3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>[3], out : UInt<4>[2]}
    
    node _io_out_0_T = add(io.in[0], io.in[1]) @[Exercise3_test.scala 10:42]
    node _io_out_0_T_1 = tail(_io_out_0_T, 1) @[Exercise3_test.scala 10:42]
    node _io_out_0_T_2 = add(_io_out_0_T_1, io.in[2]) @[Exercise3_test.scala 10:42]
    node _io_out_0_T_3 = tail(_io_out_0_T_2, 1) @[Exercise3_test.scala 10:42]
    io.out[0] <= _io_out_0_T_3 @[Exercise3.scala 12:19]
    node _io_out_1_T = add(io.in[0], io.in[1]) @[Exercise3_test.scala 10:42]
    node _io_out_1_T_1 = tail(_io_out_1_T, 1) @[Exercise3_test.scala 10:42]
    node _io_out_1_T_2 = add(_io_out_1_T_1, io.in[2]) @[Exercise3_test.scala 10:42]
    node _io_out_1_T_3 = tail(_io_out_1_T_2, 1) @[Exercise3_test.scala 10:42]
    io.out[1] <= _io_out_1_T_3 @[Exercise3.scala 13:19]
    
