circuit counter_up_down :
  module counter_up_down :
    input clock : Clock
    input reset : UInt<1>
    input io_data_in : UInt<4>
    input io_reload : UInt<1>
    output io_out : UInt<1>

    reg counter : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter) @[Task2.scala 13:31]
    reg max_count : UInt<4>, clock with :
      reset => (UInt<1>("h0"), max_count) @[Task2.scala 14:33]
    node _T = eq(counter, UInt<1>("h0")) @[Task2.scala 17:23]
    node _GEN_0 = mux(_T, UInt<1>("h1"), UInt<1>("h0")) @[Task2.scala 17:31 Task2.scala 18:24 Task2.scala 16:16]
    node _T_1 = neq(counter, max_count) @[Task2.scala 21:23]
    node _counter_T = add(counter, UInt<1>("h1")) @[Task2.scala 22:36]
    node _counter_T_1 = tail(_counter_T, 1) @[Task2.scala 22:36]
    node _T_2 = eq(counter, max_count) @[Task2.scala 23:28]
    node _GEN_1 = mux(_T_2, UInt<1>("h1"), UInt<1>("h0")) @[Task2.scala 23:42 Task2.scala 24:24 Task2.scala 26:24]
    node _GEN_2 = mux(_T_1, _counter_T_1, counter) @[Task2.scala 21:37 Task2.scala 22:25 Task2.scala 13:31]
    node _GEN_3 = mux(_T_1, _GEN_0, _GEN_1) @[Task2.scala 21:37]
    io_out <= _GEN_3
    counter <= mux(reset, UInt<4>("h0"), _GEN_2) @[Task2.scala 13:31 Task2.scala 13:31]
    max_count <= mux(reset, UInt<4>("h6"), max_count) @[Task2.scala 14:33 Task2.scala 14:33 Task2.scala 14:33]
