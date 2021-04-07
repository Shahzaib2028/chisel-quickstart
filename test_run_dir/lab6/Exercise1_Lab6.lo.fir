circuit Exercise1_Lab6 :
  module Exercise1_Lab6 :
    input clock : Clock
    input reset : UInt<1>
    input io_in : UInt<4>
    output io_out : UInt<1>

    reg state : UInt<4>, clock with :
      reset => (UInt<1>("h0"), state) @[exe1.scala 22:24]
    reg load : UInt<4>, clock with :
      reset => (UInt<1>("h0"), load) @[exe1.scala 23:23]
    node _T = eq(load, UInt<1>("h0")) @[exe1.scala 25:15]
    node _load_T = add(load, UInt<1>("h1")) @[exe1.scala 26:19]
    node _load_T_1 = tail(_load_T, 1) @[exe1.scala 26:19]
    node _state_T = shl(state, 1) @[exe1.scala 30:23]
    node _io_out_T = bits(state, 0, 0) @[exe1.scala 31:22]
    node _GEN_0 = mux(_T, _load_T_1, load) @[exe1.scala 25:23 exe1.scala 26:13 exe1.scala 23:23]
    node _GEN_1 = mux(_T, io_in, _state_T) @[exe1.scala 25:23 exe1.scala 27:14 exe1.scala 30:14]
    node _GEN_2 = mux(_T, UInt<1>("h0"), _io_out_T) @[exe1.scala 25:23 exe1.scala 28:16 exe1.scala 31:15]
    io_out <= _GEN_2
    state <= mux(reset, UInt<4>("h0"), bits(_GEN_1, 3, 0)) @[exe1.scala 22:24 exe1.scala 22:24]
    load <= mux(reset, UInt<4>("h0"), _GEN_0) @[exe1.scala 23:23 exe1.scala 23:23]
