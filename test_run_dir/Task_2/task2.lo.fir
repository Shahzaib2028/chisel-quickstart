circuit task2 :
  module task2 :
    input clock : Clock
    input reset : UInt<1>
    input io_data_in : UInt<8>
    input io_reload : UInt<1>
    output io_out : UInt<1>

    reg counter : UInt<8>, clock with :
      reset => (UInt<1>("h0"), counter) @[Task2.scala 46:27]
    reg max_count : UInt<8>, clock with :
      reset => (UInt<1>("h0"), max_count) @[Task2.scala 47:29]
    node _T = eq(io_reload, UInt<1>("h1")) @[Task2.scala 49:21]
    node _counter_T = eq(counter, max_count) @[Task2.scala 50:40]
    node _counter_T_1 = sub(counter, UInt<1>("h1")) @[Task2.scala 50:63]
    node _counter_T_2 = tail(_counter_T_1, 1) @[Task2.scala 50:63]
    node _counter_T_3 = add(counter, UInt<1>("h1")) @[Task2.scala 50:78]
    node _counter_T_4 = tail(_counter_T_3, 1) @[Task2.scala 50:78]
    node _counter_T_5 = mux(_counter_T, _counter_T_2, _counter_T_4) @[Task2.scala 50:30]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _counter_T_5) @[Task2.scala 49:29 Task2.scala 49:38 Task2.scala 50:24]
    node _io_out_T = eq(counter, UInt<1>("h0")) @[Task2.scala 51:28]
    node _io_out_T_1 = eq(counter, max_count) @[Task2.scala 51:47]
    node _io_out_T_2 = or(_io_out_T, _io_out_T_1) @[Task2.scala 51:36]
    node _io_out_T_3 = mux(_io_out_T_2, UInt<1>("h1"), UInt<1>("h0")) @[Task2.scala 51:18]
    io_out <= _io_out_T_3 @[Task2.scala 51:12]
    counter <= mux(reset, UInt<8>("h0"), _GEN_0) @[Task2.scala 46:27 Task2.scala 46:27]
    max_count <= mux(reset, UInt<8>("h6"), max_count) @[Task2.scala 47:29 Task2.scala 47:29 Task2.scala 47:29]
