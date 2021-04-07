;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Exercise1_Lab6 : 
  module Exercise1_Lab6 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>, out : UInt<1>}
    
    reg state : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[exe1.scala 22:24]
    reg load : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[exe1.scala 23:23]
    node _T = eq(load, UInt<1>("h00")) @[exe1.scala 25:15]
    when _T : @[exe1.scala 25:23]
      node _load_T = add(load, UInt<1>("h01")) @[exe1.scala 26:19]
      node _load_T_1 = tail(_load_T, 1) @[exe1.scala 26:19]
      load <= _load_T_1 @[exe1.scala 26:13]
      state <= io.in @[exe1.scala 27:14]
      io.out <= UInt<1>("h00") @[exe1.scala 28:16]
      skip @[exe1.scala 25:23]
    else : @[exe1.scala 29:16]
      node _state_T = shl(state, 1) @[exe1.scala 30:23]
      state <= _state_T @[exe1.scala 30:14]
      node _io_out_T = bits(state, 0, 0) @[exe1.scala 31:22]
      io.out <= _io_out_T @[exe1.scala 31:15]
      skip @[exe1.scala 29:16]
    
