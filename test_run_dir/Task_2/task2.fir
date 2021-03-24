;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit task2 : 
  module task2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip data_in : UInt<8>, flip reload : UInt<1>, out : UInt<1>}
    
    reg counter : UInt<8>, clock with : (reset => (reset, UInt<8>("h00"))) @[Task2.scala 46:27]
    reg max_count : UInt<8>, clock with : (reset => (reset, UInt<8>("h06"))) @[Task2.scala 47:29]
    node _T = eq(io.reload, UInt<1>("h01")) @[Task2.scala 49:21]
    when _T : @[Task2.scala 49:29]
      counter <= UInt<1>("h00") @[Task2.scala 49:38]
      skip @[Task2.scala 49:29]
    else : @[Task2.scala 50:15]
      node _counter_T = eq(counter, max_count) @[Task2.scala 50:40]
      node _counter_T_1 = sub(counter, UInt<1>("h01")) @[Task2.scala 50:63]
      node _counter_T_2 = tail(_counter_T_1, 1) @[Task2.scala 50:63]
      node _counter_T_3 = add(counter, UInt<1>("h01")) @[Task2.scala 50:78]
      node _counter_T_4 = tail(_counter_T_3, 1) @[Task2.scala 50:78]
      node _counter_T_5 = mux(_counter_T, _counter_T_2, _counter_T_4) @[Task2.scala 50:30]
      counter <= _counter_T_5 @[Task2.scala 50:24]
      skip @[Task2.scala 50:15]
    node _io_out_T = eq(counter, UInt<1>("h00")) @[Task2.scala 51:28]
    node _io_out_T_1 = eq(counter, max_count) @[Task2.scala 51:47]
    node _io_out_T_2 = or(_io_out_T, _io_out_T_1) @[Task2.scala 51:36]
    node _io_out_T_3 = mux(_io_out_T_2, UInt<1>("h01"), UInt<1>("h00")) @[Task2.scala 51:18]
    io.out <= _io_out_T_3 @[Task2.scala 51:12]
    
