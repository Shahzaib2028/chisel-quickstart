circuit counter_up_down :
  module counter_up_down :
    input clock : Clock
    input reset : UInt<1>
    input io_data_in : UInt<4>
    input io_reload : UInt<1>
    output io_out : UInt<1>

    reg counter : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter) @[Task2.scala 14:26]
    reg max_count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), max_count) @[Task2.scala 15:28]
    reg flag : UInt<1>, clock with :
      reset => (UInt<1>("h0"), flag) @[Task2.scala 17:23]
    node _T = eq(flag, UInt<1>("h0")) @[Task2.scala 19:19]
    node _T_1 = neq(counter, max_count) @[Task2.scala 19:38]
    node _T_2 = and(_T, _T_1) @[Task2.scala 19:27]
    node _counter_T = add(counter, UInt<1>("h1")) @[Task2.scala 20:36]
    node _counter_T_1 = tail(_counter_T, 1) @[Task2.scala 20:36]
    node _T_3 = eq(counter, max_count) @[Task2.scala 21:28]
    node _GEN_0 = mux(_T_3, UInt<1>("h1"), flag) @[Task2.scala 21:42 Task2.scala 22:22 Task2.scala 17:23]
    node _GEN_1 = mux(_T_2, _counter_T_1, counter) @[Task2.scala 19:52 Task2.scala 20:25 Task2.scala 14:26]
    node _GEN_2 = mux(_T_2, flag, _GEN_0) @[Task2.scala 19:52 Task2.scala 17:23]
    node _T_4 = eq(flag, UInt<1>("h1")) @[Task2.scala 27:19]
    node _counter_T_2 = sub(counter, UInt<1>("h1")) @[Task2.scala 28:36]
    node _counter_T_3 = tail(_counter_T_2, 1) @[Task2.scala 28:36]
    node _GEN_3 = mux(_T_4, _counter_T_3, _GEN_1) @[Task2.scala 27:27 Task2.scala 28:25]
    node _T_5 = eq(counter, UInt<1>("h0")) @[Task2.scala 33:22]
    node _GEN_4 = mux(_T_5, UInt<1>("h0"), _GEN_2) @[Task2.scala 33:30 Task2.scala 34:22]
    node _io_out_T = eq(counter, UInt<1>("h0")) @[Task2.scala 37:32]
    node _io_out_T_1 = eq(counter, max_count) @[Task2.scala 37:51]
    node _io_out_T_2 = or(_io_out_T, _io_out_T_1) @[Task2.scala 37:40]
    node _io_out_T_3 = mux(_io_out_T_2, UInt<1>("h1"), UInt<1>("h0")) @[Task2.scala 37:22]
    io_out <= _io_out_T_3 @[Task2.scala 37:16]
    counter <= mux(reset, UInt<4>("h0"), _GEN_3) @[Task2.scala 14:26 Task2.scala 14:26]
    max_count <= mux(reset, UInt<4>("h6"), max_count) @[Task2.scala 15:28 Task2.scala 15:28 Task2.scala 15:28]
    flag <= mux(reset, UInt<1>("h0"), _GEN_4) @[Task2.scala 17:23 Task2.scala 17:23]
