circuit Counter_2 :
  module Counter_2 :
    input clock : Clock
    input reset : UInt<1>
    output io_result : UInt<1>

    reg counter1 : UInt<6>, clock with :
      reset => (UInt<1>("h0"), counter1) @[Execrise_2.scala 9:21]
    node _counter1_T = eq(counter1, UInt<4>("ha")) @[Execrise_2.scala 10:14]
    node _counter1_count_T = add(counter1, UInt<1>("h1")) @[Execrise_2.scala 13:16]
    node _counter1_count_T_1 = tail(_counter1_count_T, 1) @[Execrise_2.scala 13:16]
    node _GEN_0 = mux(_counter1_T, UInt<1>("h0"), _counter1_count_T_1) @[Execrise_2.scala 10:31 Execrise_2.scala 11:7 Execrise_2.scala 13:7]
    node _io_result_T = bits(counter1, 5, 5) @[Execrise_2.scala 19:25]
    io_result <= _io_result_T @[Execrise_2.scala 19:13]
    counter1 <= mux(reset, UInt<6>("h0"), _GEN_0) @[Execrise_2.scala 9:21 Execrise_2.scala 9:21]
