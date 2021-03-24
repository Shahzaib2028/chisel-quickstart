circuit counter_up_down :
  module counter_up_down :
    input clock : Clock
    input reset : UInt<1>
    input io_data_in : UInt<8>
    input io_reload : UInt<1>
    output io_out : UInt<1>

    reg counter : UInt<8>, clock with :
      reset => (UInt<1>("h0"), counter) @[Task2.scala 13:31]
    reg max_count : UInt<8>, clock with :
      reset => (UInt<1>("h0"), max_count) @[Task2.scala 14:33]
    node _T = eq(io_reload, UInt<1>("h1")) @[Task2.scala 16:25]
    node _T_1 = neq(counter, max_count) @[Task2.scala 19:31]
    node _counter_T = add(counter, UInt<1>("h1")) @[Task2.scala 20:44]
    node _counter_T_1 = tail(_counter_T, 1) @[Task2.scala 20:44]
    node _T_2 = eq(counter, max_count) @[Task2.scala 21:36]
    node _counter_T_2 = sub(counter, UInt<1>("h1")) @[Task2.scala 23:52]
    node _counter_T_3 = tail(_counter_T_2, 1) @[Task2.scala 23:52]
    node _counter_T_4 = sub(counter, UInt<1>("h1")) @[Task2.scala 23:52]
    node _counter_T_5 = tail(_counter_T_4, 1) @[Task2.scala 23:52]
    node _counter_T_6 = sub(counter, UInt<1>("h1")) @[Task2.scala 23:52]
    node _counter_T_7 = tail(_counter_T_6, 1) @[Task2.scala 23:52]
    node _counter_T_8 = sub(counter, UInt<1>("h1")) @[Task2.scala 23:52]
    node _counter_T_9 = tail(_counter_T_8, 1) @[Task2.scala 23:52]
    node _counter_T_10 = sub(counter, UInt<1>("h1")) @[Task2.scala 23:52]
    node _counter_T_11 = tail(_counter_T_10, 1) @[Task2.scala 23:52]
    node _counter_T_12 = sub(counter, UInt<1>("h1")) @[Task2.scala 23:52]
    node _counter_T_13 = tail(_counter_T_12, 1) @[Task2.scala 23:52]
    node _counter_T_14 = sub(counter, UInt<1>("h1")) @[Task2.scala 23:52]
    node _counter_T_15 = tail(_counter_T_14, 1) @[Task2.scala 23:52]
    node _GEN_0 = mux(_T_2, _counter_T_15, counter) @[Task2.scala 21:50 Task2.scala 23:41 Task2.scala 13:31]
    node _GEN_1 = mux(_T_1, _counter_T_1, _GEN_0) @[Task2.scala 19:45 Task2.scala 20:33]
    node _GEN_2 = mux(_T, UInt<1>("h0"), _GEN_1) @[Task2.scala 16:33 Task2.scala 17:25]
    node _io_out_T = eq(counter, UInt<1>("h0")) @[Task2.scala 30:32]
    node _io_out_T_1 = eq(counter, max_count) @[Task2.scala 30:51]
    node _io_out_T_2 = or(_io_out_T, _io_out_T_1) @[Task2.scala 30:40]
    node _io_out_T_3 = mux(_io_out_T_2, UInt<1>("h1"), UInt<1>("h0")) @[Task2.scala 30:22]
    io_out <= _io_out_T_3 @[Task2.scala 30:16]
    counter <= mux(reset, UInt<8>("h0"), _GEN_2) @[Task2.scala 13:31 Task2.scala 13:31]
    max_count <= mux(reset, UInt<8>("h6"), max_count) @[Task2.scala 14:33 Task2.scala 14:33 Task2.scala 14:33]
