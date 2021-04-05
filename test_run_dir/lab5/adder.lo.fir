circuit adder :
  module adder :
    input clock : Clock
    input reset : UInt<1>
    output io_sum : UInt<6>
    input io_in0 : UInt<6>
    input io_in1 : UInt<6>

    node _io_sum_T = add(io_in0, io_in1) @[Task1.scala 18:26]
    node _io_sum_T_1 = tail(_io_sum_T, 1) @[Task1.scala 18:26]
    io_sum <= _io_sum_T_1 @[Task1.scala 18:16]
