;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit counter_up_down : 
  module counter_up_down : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip data_in : UInt<4>, flip reload : UInt<1>, out : UInt<1>}
    
    reg counter : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[Task2.scala 13:31]
    reg max_count : UInt<4>, clock with : (reset => (reset, UInt<4>("h06"))) @[Task2.scala 14:33]
    io.out <= UInt<1>("h00") @[Task2.scala 16:16]
    node _T = eq(counter, UInt<1>("h00")) @[Task2.scala 17:23]
    when _T : @[Task2.scala 17:31]
      io.out <= UInt<1>("h01") @[Task2.scala 18:24]
      skip @[Task2.scala 17:31]
    node _T_1 = neq(counter, max_count) @[Task2.scala 21:23]
    when _T_1 : @[Task2.scala 21:37]
      node _counter_T = add(counter, UInt<1>("h01")) @[Task2.scala 22:36]
      node _counter_T_1 = tail(_counter_T, 1) @[Task2.scala 22:36]
      counter <= _counter_T_1 @[Task2.scala 22:25]
      skip @[Task2.scala 21:37]
    else : @[Task2.scala 23:42]
      node _T_2 = eq(counter, max_count) @[Task2.scala 23:28]
      when _T_2 : @[Task2.scala 23:42]
        io.out <= UInt<1>("h01") @[Task2.scala 24:24]
        skip @[Task2.scala 23:42]
      else : @[Task2.scala 25:20]
        io.out <= UInt<1>("h00") @[Task2.scala 26:24]
        skip @[Task2.scala 25:20]
    
