;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit encoder2to4 : 
  module encoder2to4 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>, out : UInt<2>}
    
    io.out <= UInt<1>("h00") @[Exercise1.scala 14:16]
    node _T = eq(UInt<1>("h01"), io.in) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      io.out <= UInt<1>("h00") @[Exercise1.scala 18:32]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<2>("h02"), io.in) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        io.out <= UInt<1>("h01") @[Exercise1.scala 21:32]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<3>("h04"), io.in) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          io.out <= UInt<2>("h02") @[Exercise1.scala 24:32]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<1>("h00"), io.in) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            io.out <= UInt<2>("h03") @[Exercise1.scala 27:32]
            skip @[Conditional.scala 39:67]
    
