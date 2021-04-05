circuit Exercise3 :
  module Exercise3 :
    input clock : Clock
    input reset : UInt<1>
    input io_in_0 : UInt<4>
    input io_in_1 : UInt<4>
    input io_in_2 : UInt<4>
    output io_out_0 : UInt<4>
    output io_out_1 : UInt<4>

    node _io_out_0_T = add(io_in_0, io_in_1) @[Exercise3_test.scala 10:42]
    node _io_out_0_T_1 = tail(_io_out_0_T, 1) @[Exercise3_test.scala 10:42]
    node _io_out_0_T_2 = add(_io_out_0_T_1, io_in_2) @[Exercise3_test.scala 10:42]
    node _io_out_0_T_3 = tail(_io_out_0_T_2, 1) @[Exercise3_test.scala 10:42]
    node _io_out_1_T = add(io_in_0, io_in_1) @[Exercise3_test.scala 10:42]
    node _io_out_1_T_1 = tail(_io_out_1_T, 1) @[Exercise3_test.scala 10:42]
    node _io_out_1_T_2 = add(_io_out_1_T_1, io_in_2) @[Exercise3_test.scala 10:42]
    node _io_out_1_T_3 = tail(_io_out_1_T_2, 1) @[Exercise3_test.scala 10:42]
    io_out_0 <= _io_out_0_T_3 @[Exercise3.scala 12:19]
    io_out_1 <= _io_out_1_T_3 @[Exercise3.scala 13:19]
