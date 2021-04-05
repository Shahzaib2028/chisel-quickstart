;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Mux2_to_1 : 
  module Mux2_to_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<4>, flip in1 : UInt<4>, flip in2 : UInt<4>, flip sel : UInt<1>}
    
    node _io_out_T = mux(io.sel, io.in1, io.in2) @[Exercise2.scala 17:22]
    io.out <= _io_out_T @[Exercise2.scala 17:16]
    
