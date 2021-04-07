circuit counter1 :
  module counter1 :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<4>

    reg counter : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter) @[Task2.scala 10:30]
    node _count_buffer_T = bits(counter, 3, 3) @[Task2.scala 12:39]
    node _count_buffer_T_1 = eq(_count_buffer_T, UInt<1>("h1")) @[Task2.scala 12:57]
    node _count_buffer_T_2 = add(counter, UInt<1>("h1")) @[Task2.scala 12:83]
    node _count_buffer_T_3 = tail(_count_buffer_T_2, 1) @[Task2.scala 12:83]
    node count_buffer = mux(_count_buffer_T_1, UInt<1>("h0"), _count_buffer_T_3) @[Task2.scala 12:31]
    io_out <= counter @[Task2.scala 17:16]
    counter <= mux(reset, UInt<4>("h0"), count_buffer) @[Task2.scala 10:30 Task2.scala 10:30 Task2.scala 16:17]
