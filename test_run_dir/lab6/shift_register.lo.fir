circuit shift_register :
  module shift_register :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<1>
    output io_out : UInt<4>

    reg state : UInt<4>, clock with :
      reset => (UInt<1>("h0"), state) @[Execrise1.scala 11:28]
    reg register_0 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_0) @[Execrise1.scala 12:27]
    reg register_1 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_1) @[Execrise1.scala 12:27]
    reg register_2 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_2) @[Execrise1.scala 12:27]
    reg register_3 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_3) @[Execrise1.scala 12:27]
    reg register_4 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_4) @[Execrise1.scala 12:27]
    reg register_5 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_5) @[Execrise1.scala 12:27]
    reg register_6 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_6) @[Execrise1.scala 12:27]
    reg register_7 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_7) @[Execrise1.scala 12:27]
    reg register_8 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_8) @[Execrise1.scala 12:27]
    reg register_9 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_9) @[Execrise1.scala 12:27]
    reg register_10 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_10) @[Execrise1.scala 12:27]
    reg register_11 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_11) @[Execrise1.scala 12:27]
    reg register_12 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_12) @[Execrise1.scala 12:27]
    reg register_13 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_13) @[Execrise1.scala 12:27]
    reg register_14 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_14) @[Execrise1.scala 12:27]
    reg register_15 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_15) @[Execrise1.scala 12:27]
    reg register_16 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_16) @[Execrise1.scala 12:27]
    reg register_17 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_17) @[Execrise1.scala 12:27]
    reg register_18 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_18) @[Execrise1.scala 12:27]
    reg register_19 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_19) @[Execrise1.scala 12:27]
    reg register_20 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_20) @[Execrise1.scala 12:27]
    reg register_21 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_21) @[Execrise1.scala 12:27]
    reg register_22 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_22) @[Execrise1.scala 12:27]
    reg register_23 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_23) @[Execrise1.scala 12:27]
    reg register_24 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_24) @[Execrise1.scala 12:27]
    reg register_25 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_25) @[Execrise1.scala 12:27]
    reg register_26 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_26) @[Execrise1.scala 12:27]
    reg register_27 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_27) @[Execrise1.scala 12:27]
    reg register_28 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_28) @[Execrise1.scala 12:27]
    reg register_29 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_29) @[Execrise1.scala 12:27]
    reg register_30 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_30) @[Execrise1.scala 12:27]
    reg register_31 : UInt<4>, clock with :
      reset => (UInt<1>("h0"), register_31) @[Execrise1.scala 12:27]
    node _next_state_T = shl(state, 1) @[Execrise1.scala 14:33]
    node next_state = or(_next_state_T, io_in) @[Execrise1.scala 14:39]
    io_out <= register_31 @[Execrise1.scala 21:24]
    state <= mux(reset, UInt<4>("h1"), bits(next_state, 3, 0)) @[Execrise1.scala 11:28 Execrise1.scala 11:28 Execrise1.scala 15:15]
    register_0 <= state @[Execrise1.scala 20:29]
    register_1 <= state @[Execrise1.scala 20:29]
    register_2 <= state @[Execrise1.scala 20:29]
    register_3 <= state @[Execrise1.scala 20:29]
    register_4 <= state @[Execrise1.scala 20:29]
    register_5 <= state @[Execrise1.scala 20:29]
    register_6 <= state @[Execrise1.scala 20:29]
    register_7 <= state @[Execrise1.scala 20:29]
    register_8 <= state @[Execrise1.scala 20:29]
    register_9 <= state @[Execrise1.scala 20:29]
    register_10 <= state @[Execrise1.scala 20:29]
    register_11 <= state @[Execrise1.scala 20:29]
    register_12 <= state @[Execrise1.scala 20:29]
    register_13 <= state @[Execrise1.scala 20:29]
    register_14 <= state @[Execrise1.scala 20:29]
    register_15 <= state @[Execrise1.scala 20:29]
    register_16 <= state @[Execrise1.scala 20:29]
    register_17 <= state @[Execrise1.scala 20:29]
    register_18 <= state @[Execrise1.scala 20:29]
    register_19 <= state @[Execrise1.scala 20:29]
    register_20 <= state @[Execrise1.scala 20:29]
    register_21 <= state @[Execrise1.scala 20:29]
    register_22 <= state @[Execrise1.scala 20:29]
    register_23 <= state @[Execrise1.scala 20:29]
    register_24 <= state @[Execrise1.scala 20:29]
    register_25 <= state @[Execrise1.scala 20:29]
    register_26 <= state @[Execrise1.scala 20:29]
    register_27 <= state @[Execrise1.scala 20:29]
    register_28 <= state @[Execrise1.scala 20:29]
    register_29 <= state @[Execrise1.scala 20:29]
    register_30 <= state @[Execrise1.scala 20:29]
    register_31 <= state @[Execrise1.scala 20:29]
