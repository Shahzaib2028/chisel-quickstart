;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit counter_up_down : 
  module counter_up_down : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip data_in : UInt<4>, flip reload : UInt<1>, out : UInt<1>}
    
    reg counter : UInt<4>, clock with : (reset => (reset, UInt<4>("h00"))) @[Task2.scala 14:26]
    reg max_count : UInt<4>, clock with : (reset => (reset, UInt<4>("h06"))) @[Task2.scala 15:28]
    reg flag : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[Task2.scala 17:23]
    node _T = eq(flag, UInt<1>("h00")) @[Task2.scala 19:19]
    node _T_1 = neq(counter, max_count) @[Task2.scala 19:38]
    node _T_2 = and(_T, _T_1) @[Task2.scala 19:27]
    when _T_2 : @[Task2.scala 19:52]
      node _counter_T = add(counter, UInt<1>("h01")) @[Task2.scala 20:36]
      node _counter_T_1 = tail(_counter_T, 1) @[Task2.scala 20:36]
      counter <= _counter_T_1 @[Task2.scala 20:25]
      skip @[Task2.scala 19:52]
    else : @[Task2.scala 21:42]
      node _T_3 = eq(counter, max_count) @[Task2.scala 21:28]
      when _T_3 : @[Task2.scala 21:42]
        flag <= UInt<1>("h01") @[Task2.scala 22:22]
        skip @[Task2.scala 21:42]
      else : @[Task2.scala 23:20]
        skip @[Task2.scala 23:20]
    node _T_4 = eq(flag, UInt<1>("h01")) @[Task2.scala 27:19]
    when _T_4 : @[Task2.scala 27:27]
      node _counter_T_2 = sub(counter, UInt<1>("h01")) @[Task2.scala 28:36]
      node _counter_T_3 = tail(_counter_T_2, 1) @[Task2.scala 28:36]
      counter <= _counter_T_3 @[Task2.scala 28:25]
      skip @[Task2.scala 27:27]
    else : @[Task2.scala 29:20]
      skip @[Task2.scala 29:20]
    node _T_5 = eq(counter, UInt<1>("h00")) @[Task2.scala 33:22]
    when _T_5 : @[Task2.scala 33:30]
      flag <= UInt<1>("h00") @[Task2.scala 34:22]
      skip @[Task2.scala 33:30]
    node _io_out_T = eq(counter, UInt<1>("h00")) @[Task2.scala 37:32]
    node _io_out_T_1 = eq(counter, max_count) @[Task2.scala 37:51]
    node _io_out_T_2 = or(_io_out_T, _io_out_T_1) @[Task2.scala 37:40]
    node _io_out_T_3 = mux(_io_out_T_2, UInt<1>("h01"), UInt<1>("h00")) @[Task2.scala 37:22]
    io.out <= _io_out_T_3 @[Task2.scala 37:16]
    
