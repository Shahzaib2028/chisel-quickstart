;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Exercise3 : 
  module Exercise3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {reload : UInt<1>}
    
    reg counter : UInt<4>, clock with : (reset => (reset, UInt<4>("h0a"))) @[Exercise3.scala 9:27]
    node done = eq(counter, UInt<1>("h00")) @[Exercise3.scala 10:24]
    wire next : UInt
    next <= UInt<1>("h00")
    counter <= next @[Exercise3.scala 12:12]
    io.reload <= UInt<1>("h00") @[Exercise3.scala 13:14]
    when done : @[Exercise3.scala 14:16]
      io.reload <= UInt<1>("h01") @[Exercise3.scala 15:20]
      skip @[Exercise3.scala 14:16]
    else : @[Exercise3.scala 16:22]
      node _T = eq(done, UInt<1>("h00")) @[Exercise3.scala 16:16]
      when _T : @[Exercise3.scala 16:22]
        node _next_T = sub(counter, UInt<1>("h01")) @[Exercise3.scala 17:23]
        node _next_T_1 = tail(_next_T, 1) @[Exercise3.scala 17:23]
        next <= _next_T_1 @[Exercise3.scala 17:13]
        io.reload <= UInt<1>("h00") @[Exercise3.scala 18:19]
        skip @[Exercise3.scala 16:22]
      else : @[Exercise3.scala 19:32]
        node _T_1 = eq(counter, UInt<1>("h00")) @[Exercise3.scala 19:24]
        when _T_1 : @[Exercise3.scala 19:32]
          io.reload <= UInt<1>("h01") @[Exercise3.scala 20:19]
          skip @[Exercise3.scala 19:32]
    
