circuit Mux2_to_1 :
  module Mux2_to_1 :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<4>
    input io_in1 : UInt<4>
    input io_in2 : UInt<4>
    input io_sel : UInt<1>

    node _io_out_T = mux(io_sel, io_in1, io_in2) @[Exercise2.scala 17:22]
    io_out <= _io_out_T @[Exercise2.scala 17:16]
