;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Encoder2to4 : 
  module Encoder2to4 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<4>, out : UInt<2>}
    
    node _T = eq(io.in, UInt<1>("h01")) @[Example1.scala 14:20]
    when _T : @[Example1.scala 14:34]
      io.out <= UInt<1>("h00") @[Example1.scala 15:24]
      skip @[Example1.scala 14:34]
    else : @[Example1.scala 16:40]
      node _T_1 = eq(io.in, UInt<2>("h02")) @[Example1.scala 16:26]
      when _T_1 : @[Example1.scala 16:40]
        io.out <= UInt<1>("h01") @[Example1.scala 17:24]
        skip @[Example1.scala 16:40]
      else : @[Example1.scala 18:40]
        node _T_2 = eq(io.in, UInt<3>("h04")) @[Example1.scala 18:26]
        when _T_2 : @[Example1.scala 18:40]
          io.out <= UInt<2>("h02") @[Example1.scala 19:24]
          skip @[Example1.scala 18:40]
        else : @[Example1.scala 20:20]
          io.out <= UInt<2>("h03") @[Example1.scala 21:24]
          skip @[Example1.scala 20:20]
    
