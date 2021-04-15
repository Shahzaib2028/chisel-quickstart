;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Task2_lab7 : 
  module Task2_lab7 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in : UInt<1>, flip start : UInt<1>, out : UInt<8>, flag : UInt<1>}
    
    reg register : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[Task2.scala 17:27]
    io.out <= UInt<1>("h00") @[Task2.scala 18:11]
    io.flag <= UInt<1>("h00") @[Task2.scala 19:12]
    node _T = eq(UInt<1>("h01"), io.start) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      node _state_T = dshl(register, UInt<1>("h01")) @[Task2.scala 30:35]
      node state = or(_state_T, io.in) @[Task2.scala 30:43]
      register <= state @[Task2.scala 31:22]
      io.out <= register @[Task2.scala 32:20]
      io.flag <= UInt<1>("h01") @[Task2.scala 33:21]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h00"), io.start) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        io.out <= register @[Task2.scala 37:19]
        io.flag <= UInt<1>("h00") @[Task2.scala 38:20]
        skip @[Conditional.scala 39:67]
    
