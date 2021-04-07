circuit Exercise3 :
  module Exercise3 :
    input clock : Clock
    input reset : UInt<1>
    output io_reload : UInt<1>

    reg counter : UInt<4>, clock with :
      reset => (UInt<1>("h0"), counter) @[Exercise3.scala 9:27]
    node done = eq(counter, UInt<1>("h0")) @[Exercise3.scala 10:24]
    node _T = eq(done, UInt<1>("h0")) @[Exercise3.scala 16:16]
    node _next_T = sub(counter, UInt<1>("h1")) @[Exercise3.scala 17:23]
    node _next_T_1 = tail(_next_T, 1) @[Exercise3.scala 17:23]
    node _T_1 = eq(counter, UInt<1>("h0")) @[Exercise3.scala 19:24]
    node _GEN_0 = mux(_T_1, UInt<1>("h1"), UInt<1>("h0")) @[Exercise3.scala 19:32 Exercise3.scala 20:19 Exercise3.scala 13:14]
    node _GEN_1 = mux(_T, _next_T_1, UInt<1>("h0")) @[Exercise3.scala 16:22 Exercise3.scala 17:13]
    node _GEN_2 = mux(_T, UInt<1>("h0"), _GEN_0) @[Exercise3.scala 16:22 Exercise3.scala 18:19]
    node _GEN_3 = mux(done, UInt<1>("h1"), _GEN_2) @[Exercise3.scala 14:16 Exercise3.scala 15:20]
    node _GEN_4 = mux(done, UInt<1>("h0"), _GEN_1) @[Exercise3.scala 14:16]
    node next = _GEN_4
    io_reload <= _GEN_3
    counter <= mux(reset, UInt<4>("ha"), next) @[Exercise3.scala 9:27 Exercise3.scala 9:27 Exercise3.scala 12:12]
