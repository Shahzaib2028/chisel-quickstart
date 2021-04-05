;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit adder : 
  module adder : 
    input clock : Clock
    input reset : UInt<1>
    output io : {sum : UInt<6>, flip in0 : UInt<6>, flip in1 : UInt<6>}
    
    node _io_sum_T = add(io.in0, io.in1) @[Task1.scala 18:26]
    node _io_sum_T_1 = tail(_io_sum_T, 1) @[Task1.scala 18:26]
    io.sum <= _io_sum_T_1 @[Task1.scala 18:16]
    
