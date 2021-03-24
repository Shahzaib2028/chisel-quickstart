;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Counter_2 : 
  module Counter_2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {result : UInt<1>}
    
    reg counter1 : UInt<6>, clock with : (reset => (reset, UInt<6>("h00"))) @[Execrise_2.scala 9:21]
    node _counter1_T = eq(counter1, UInt<4>("h0a")) @[Execrise_2.scala 10:14]
    when _counter1_T : @[Execrise_2.scala 10:31]
      counter1 <= UInt<1>("h00") @[Execrise_2.scala 11:7]
      skip @[Execrise_2.scala 10:31]
    else : @[Execrise_2.scala 12:14]
      node _counter1_count_T = add(counter1, UInt<1>("h01")) @[Execrise_2.scala 13:16]
      node _counter1_count_T_1 = tail(_counter1_count_T, 1) @[Execrise_2.scala 13:16]
      counter1 <= _counter1_count_T_1 @[Execrise_2.scala 13:7]
      skip @[Execrise_2.scala 12:14]
    node _io_result_T = bits(counter1, 5, 5) @[Execrise_2.scala 19:25]
    io.result <= _io_result_T @[Execrise_2.scala 19:13]
    
