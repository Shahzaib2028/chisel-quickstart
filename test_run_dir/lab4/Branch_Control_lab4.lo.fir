circuit Branch_Control_lab4 :
  module Branch_Control_lab4 :
    input clock : Clock
    input reset : UInt<1>
    input io_func3 : UInt<3>
    input io_branch : UInt<1>
    input io_arg_y : UInt<32>
    input io_arg_x : UInt<32>
    output io_br_taken : UInt<1>

    node _T = eq(io_func3, UInt<1>("h0")) @[Task1.scala 18:23]
    node _T_1 = eq(io_branch, UInt<1>("h1")) @[Task1.scala 18:49]
    node _T_2 = and(_T, _T_1) @[Task1.scala 18:36]
    node _io_br_taken_T = eq(io_arg_x, io_arg_y) @[Task1.scala 19:41]
    node _T_3 = eq(io_func3, UInt<1>("h1")) @[Task1.scala 21:29]
    node _T_4 = eq(io_branch, UInt<1>("h1")) @[Task1.scala 21:55]
    node _T_5 = and(_T_3, _T_4) @[Task1.scala 21:42]
    node _io_br_taken_T_1 = neq(io_arg_x, io_arg_y) @[Task1.scala 22:41]
    node _T_6 = eq(io_func3, UInt<3>("h4")) @[Task1.scala 24:29]
    node _T_7 = eq(io_branch, UInt<1>("h1")) @[Task1.scala 24:55]
    node _T_8 = and(_T_6, _T_7) @[Task1.scala 24:42]
    node _io_br_taken_T_2 = lt(io_arg_x, io_arg_y) @[Task1.scala 25:41]
    node _T_9 = eq(io_func3, UInt<3>("h5")) @[Task1.scala 27:29]
    node _T_10 = eq(io_branch, UInt<1>("h1")) @[Task1.scala 27:55]
    node _T_11 = and(_T_9, _T_10) @[Task1.scala 27:42]
    node _io_br_taken_T_3 = geq(io_arg_x, io_arg_y) @[Task1.scala 28:41]
    node _T_12 = eq(io_func3, UInt<3>("h6")) @[Task1.scala 30:29]
    node _T_13 = eq(io_branch, UInt<1>("h1")) @[Task1.scala 30:55]
    node _T_14 = and(_T_12, _T_13) @[Task1.scala 30:42]
    node _io_br_taken_T_4 = lt(io_arg_x, io_arg_y) @[Task1.scala 31:41]
    node _T_15 = eq(io_func3, UInt<3>("h7")) @[Task1.scala 33:29]
    node _T_16 = eq(io_branch, UInt<1>("h1")) @[Task1.scala 33:55]
    node _T_17 = and(_T_15, _T_16) @[Task1.scala 33:42]
    node _io_br_taken_T_5 = geq(io_arg_x, io_arg_y) @[Task1.scala 34:41]
    node _GEN_0 = mux(_T_17, _io_br_taken_T_5, UInt<1>("h0")) @[Task1.scala 33:63 Task1.scala 34:29 Task1.scala 37:29]
    node _GEN_1 = mux(_T_14, _io_br_taken_T_4, _GEN_0) @[Task1.scala 30:63 Task1.scala 31:29]
    node _GEN_2 = mux(_T_11, _io_br_taken_T_3, _GEN_1) @[Task1.scala 27:63 Task1.scala 28:29]
    node _GEN_3 = mux(_T_8, _io_br_taken_T_2, _GEN_2) @[Task1.scala 24:63 Task1.scala 25:29]
    node _GEN_4 = mux(_T_5, _io_br_taken_T_1, _GEN_3) @[Task1.scala 21:63 Task1.scala 22:29]
    node _GEN_5 = mux(_T_2, _io_br_taken_T, _GEN_4) @[Task1.scala 18:57 Task1.scala 19:29]
    io_br_taken <= _GEN_5
