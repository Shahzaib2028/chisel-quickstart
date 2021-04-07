;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit up_down_counter : 
  module up_down_counter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<4>, flip up_down : UInt<1>}
    
    io.out <= UInt<1>("h00") @[Task4.scala 11:16]
    reg counter_increase : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[Task4.scala 12:39]
    reg counter_decrease : UInt<4>, clock with : (reset => (reset, UInt<4>("h0a"))) @[Task4.scala 13:39]
    node _T = eq(io.up_down, UInt<1>("h01")) @[Task4.scala 15:25]
    when _T : @[Task4.scala 15:33]
      node _counter_buffer_T = eq(counter_increase, UInt<4>("h0a")) @[Task4.scala 16:59]
      node _counter_buffer_T_1 = add(counter_increase, UInt<1>("h01")) @[Task4.scala 16:93]
      node _counter_buffer_T_2 = tail(_counter_buffer_T_1, 1) @[Task4.scala 16:93]
      node counter_buffer = mux(_counter_buffer_T, UInt<1>("h00"), _counter_buffer_T_2) @[Task4.scala 16:41]
      counter_increase <= counter_buffer @[Task4.scala 17:34]
      io.out <= counter_increase @[Task4.scala 18:24]
      skip @[Task4.scala 15:33]
    else : @[Task4.scala 19:39]
      node _T_1 = eq(io.up_down, UInt<1>("h00")) @[Task4.scala 19:31]
      when _T_1 : @[Task4.scala 19:39]
        node _counter_buffer_T_3 = eq(counter_decrease, UInt<1>("h00")) @[Task4.scala 20:59]
        node _counter_buffer_T_4 = sub(counter_decrease, UInt<1>("h01")) @[Task4.scala 20:91]
        node _counter_buffer_T_5 = tail(_counter_buffer_T_4, 1) @[Task4.scala 20:91]
        node counter_buffer_1 = mux(_counter_buffer_T_3, UInt<1>("h00"), _counter_buffer_T_5) @[Task4.scala 20:41]
        counter_decrease <= counter_buffer_1 @[Task4.scala 21:34]
        io.out <= counter_decrease @[Task4.scala 22:24]
        skip @[Task4.scala 19:39]
    
