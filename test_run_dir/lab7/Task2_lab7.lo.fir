circuit Task2_lab7 :
  module Task2_lab7 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<1>
    input io_start : UInt<1>
    output io_out : UInt<8>
    output io_flag : UInt<1>

    reg register : UInt<8>, clock with :
      reset => (UInt<1>("h0"), register) @[Task2.scala 17:27]
    node _T = eq(UInt<1>("h1"), io_start) @[Conditional.scala 37:30]
    node _state_T = dshl(register, UInt<1>("h1")) @[Task2.scala 30:35]
    node state = or(_state_T, io_in) @[Task2.scala 30:43]
    node _T_1 = eq(UInt<1>("h0"), io_start) @[Conditional.scala 37:30]
    node _GEN_0 = mux(_T_1, register, UInt<1>("h0")) @[Conditional.scala 39:67 Task2.scala 37:19 Task2.scala 18:11]
    node _GEN_1 = mux(_T_1, UInt<1>("h0"), UInt<1>("h0")) @[Conditional.scala 39:67 Task2.scala 38:20 Task2.scala 19:12]
    node _GEN_2 = mux(_T, state, register) @[Conditional.scala 40:58 Task2.scala 31:22 Task2.scala 17:27]
    node _GEN_3 = mux(_T, register, _GEN_0) @[Conditional.scala 40:58 Task2.scala 32:20]
    node _GEN_4 = mux(_T, UInt<1>("h1"), _GEN_1) @[Conditional.scala 40:58 Task2.scala 33:21]
    io_out <= _GEN_3
    io_flag <= _GEN_4
    register <= mux(reset, UInt<8>("h0"), bits(_GEN_2, 7, 0)) @[Task2.scala 17:27 Task2.scala 17:27]
