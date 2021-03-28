;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit decoder_with_valid_bits : 
  module decoder_with_valid_bits : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<2>, out : {valid : UInt<1>, bits : UInt<4>}}
    
    io.out.bits <= UInt<1>("h00") @[Task3.scala 13:17]
    io.out.valid <= UInt<1>("h00") @[Task3.scala 14:18]
    node _T = eq(UInt<1>("h00"), io.in) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      io.out.bits <= UInt<1>("h01") @[Task3.scala 18:25]
      io.out.valid <= UInt<1>("h01") @[Task3.scala 19:26]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), io.in) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        io.out.bits <= UInt<2>("h02") @[Task3.scala 21:25]
        io.out.valid <= UInt<1>("h01") @[Task3.scala 22:26]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_2 = eq(UInt<2>("h02"), io.in) @[Conditional.scala 37:30]
        when _T_2 : @[Conditional.scala 39:67]
          io.out.bits <= UInt<3>("h04") @[Task3.scala 24:25]
          io.out.valid <= UInt<1>("h01") @[Task3.scala 25:26]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_3 = eq(UInt<2>("h03"), io.in) @[Conditional.scala 37:30]
          when _T_3 : @[Conditional.scala 39:67]
            io.out.bits <= UInt<4>("h08") @[Task3.scala 27:25]
            io.out.valid <= UInt<1>("h01") @[Task3.scala 28:26]
            skip @[Conditional.scala 39:67]
    
