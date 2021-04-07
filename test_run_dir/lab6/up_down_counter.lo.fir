circuit up_down_counter :
  module up_down_counter :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<4>
    input io_up_down : UInt<1>

    reg counter_increase : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter_increase) @[Task4.scala 12:39]
    reg counter_decrease : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter_decrease) @[Task4.scala 13:39]
    node _T = eq(io_up_down, UInt<1>("h1")) @[Task4.scala 15:25]
    node _counter_buffer_T = eq(counter_increase, UInt<4>("ha")) @[Task4.scala 16:59]
    node _counter_buffer_T_1 = add(counter_increase, UInt<1>("h1")) @[Task4.scala 16:93]
    node _counter_buffer_T_2 = tail(_counter_buffer_T_1, 1) @[Task4.scala 16:93]
    node counter_buffer = mux(_counter_buffer_T, UInt<1>("h0"), _counter_buffer_T_2) @[Task4.scala 16:41]
    node _T_1 = eq(io_up_down, UInt<1>("h0")) @[Task4.scala 19:31]
    node _counter_buffer_T_3 = eq(counter_decrease, UInt<1>("h0")) @[Task4.scala 20:59]
    node _counter_buffer_T_4 = sub(counter_decrease, UInt<1>("h1")) @[Task4.scala 20:91]
    node _counter_buffer_T_5 = tail(_counter_buffer_T_4, 1) @[Task4.scala 20:91]
    node counter_buffer_1 = mux(_counter_buffer_T_3, UInt<1>("h0"), _counter_buffer_T_5) @[Task4.scala 20:41]
    node _GEN_0 = mux(_T_1, counter_buffer_1, counter_decrease) @[Task4.scala 19:39 Task4.scala 21:34 Task4.scala 13:39]
    node _GEN_1 = mux(_T_1, counter_decrease, UInt<1>("h0")) @[Task4.scala 19:39 Task4.scala 22:24 Task4.scala 11:16]
    node _GEN_2 = mux(_T, counter_buffer, counter_increase) @[Task4.scala 15:33 Task4.scala 17:34 Task4.scala 12:39]
    node _GEN_3 = mux(_T, counter_increase, _GEN_1) @[Task4.scala 15:33 Task4.scala 18:24]
    node _GEN_4 = mux(_T, counter_decrease, _GEN_0) @[Task4.scala 15:33 Task4.scala 13:39]
    io_out <= _GEN_3
    counter_increase <= mux(reset, UInt<4>("h0"), _GEN_2) @[Task4.scala 12:39 Task4.scala 12:39]
    counter_decrease <= mux(reset, UInt<4>("ha"), _GEN_4) @[Task4.scala 13:39 Task4.scala 13:39]
