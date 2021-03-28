circuit Branch_Control :
  module Branch_Control :
    input clock : Clock
    input reset : UInt<1>
    input io_func3 : UInt<3>
    input io_branch : UInt<1>
    input io_arg_y : UInt<32>
    input io_arg_x : UInt<32>
    output io_br_taken : UInt<1>

    node _T = eq(io_func3, UInt<1>("h0")) @[task1.scala 18:23]
    node _T_1 = eq(io_branch, UInt<1>("h1")) @[task1.scala 18:49]
    node _T_2 = and(_T, _T_1) @[task1.scala 18:36]
    node _T_3 = eq(io_arg_x, io_arg_y) @[task1.scala 19:31]
    node _GEN_0 = mux(_T_3, UInt<1>("h1"), UInt<1>("h0")) @[task1.scala 19:44 task1.scala 20:37 task1.scala 22:37]
    node _T_4 = eq(io_func3, UInt<1>("h1")) @[task1.scala 24:29]
    node _T_5 = eq(io_branch, UInt<1>("h1")) @[task1.scala 24:55]
    node _T_6 = and(_T_4, _T_5) @[task1.scala 24:42]
    node _T_7 = neq(io_arg_x, io_arg_y) @[task1.scala 25:31]
    node _GEN_1 = mux(_T_7, UInt<1>("h1"), UInt<1>("h0")) @[task1.scala 25:44 task1.scala 26:37 task1.scala 28:37]
    node _T_8 = eq(io_func3, UInt<3>("h4")) @[task1.scala 30:29]
    node _T_9 = eq(io_branch, UInt<1>("h1")) @[task1.scala 30:55]
    node _T_10 = and(_T_8, _T_9) @[task1.scala 30:42]
    node _T_11 = lt(io_arg_x, io_arg_y) @[task1.scala 31:31]
    node _GEN_2 = mux(_T_11, UInt<1>("h1"), UInt<1>("h0")) @[task1.scala 31:42 task1.scala 32:37 task1.scala 34:37]
    node _T_12 = eq(io_func3, UInt<3>("h5")) @[task1.scala 36:29]
    node _T_13 = eq(io_branch, UInt<1>("h1")) @[task1.scala 36:55]
    node _T_14 = and(_T_12, _T_13) @[task1.scala 36:42]
    node _T_15 = gt(io_arg_x, io_arg_y) @[task1.scala 37:31]
    node _GEN_3 = mux(_T_15, UInt<1>("h1"), UInt<1>("h0")) @[task1.scala 37:42 task1.scala 38:37 task1.scala 40:37]
    node _T_16 = eq(io_func3, UInt<3>("h6")) @[task1.scala 42:29]
    node _T_17 = eq(io_branch, UInt<1>("h1")) @[task1.scala 42:55]
    node _T_18 = and(_T_16, _T_17) @[task1.scala 42:42]
    node _T_19 = lt(io_arg_x, io_arg_y) @[task1.scala 43:31]
    node _GEN_4 = mux(_T_19, UInt<1>("h1"), UInt<1>("h0")) @[task1.scala 43:42 task1.scala 44:37 task1.scala 46:37]
    node _T_20 = eq(io_func3, UInt<3>("h7")) @[task1.scala 48:29]
    node _T_21 = eq(io_branch, UInt<1>("h1")) @[task1.scala 48:55]
    node _T_22 = and(_T_20, _T_21) @[task1.scala 48:42]
    node _T_23 = gt(io_arg_x, io_arg_y) @[task1.scala 49:31]
    node _GEN_5 = mux(_T_23, UInt<1>("h1"), UInt<1>("h0")) @[task1.scala 49:42 task1.scala 50:37 task1.scala 52:37]
    node _GEN_6 = mux(_T_22, _GEN_5, UInt<1>("h0")) @[task1.scala 48:63 task1.scala 55:29]
    node _GEN_7 = mux(_T_18, _GEN_4, _GEN_6) @[task1.scala 42:63]
    node _GEN_8 = mux(_T_14, _GEN_3, _GEN_7) @[task1.scala 36:63]
    node _GEN_9 = mux(_T_10, _GEN_2, _GEN_8) @[task1.scala 30:63]
    node _GEN_10 = mux(_T_6, _GEN_1, _GEN_9) @[task1.scala 24:63]
    node _GEN_11 = mux(_T_2, _GEN_0, _GEN_10) @[task1.scala 18:57]
    io_br_taken <= _GEN_11
