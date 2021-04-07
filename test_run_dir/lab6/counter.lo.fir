circuit counter :
  module counter :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<2>

    reg counter : UInt<2>, clock with :
      reset => (UInt<1>("h0"), counter) @[Exercise2.scala 10:30]
    node _count_buffer_T = add(counter, UInt<1>("h1")) @[Exercise2.scala 15:72]
    node _count_buffer_T_1 = tail(_count_buffer_T, 1) @[Exercise2.scala 15:72]
    node _count_buffer_T_2 = eq(counter, UInt<3>("h4")) @[Exercise2.scala 15:92]
    node _count_buffer_T_3 = add(counter, UInt<1>("h1")) @[Exercise2.scala 15:119]
    node _count_buffer_T_4 = tail(_count_buffer_T_3, 1) @[Exercise2.scala 15:119]
    node _count_buffer_T_5 = mux(_count_buffer_T_2, UInt<1>("h0"), _count_buffer_T_4) @[Exercise2.scala 15:83]
    node count_buffer = mux(UInt<1>("h1"), _count_buffer_T_1, _count_buffer_T_5) @[Exercise2.scala 15:31]
    io_out <= counter @[Exercise2.scala 18:16]
    counter <= mux(reset, UInt<2>("h0"), count_buffer) @[Exercise2.scala 10:30 Exercise2.scala 10:30 Exercise2.scala 17:17]
