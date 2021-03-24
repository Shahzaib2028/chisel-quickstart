circuit lab2_exe_1 :
  module lab2_exe_1 :
    input clock : Clock
    input reset : UInt<1>
    input io_in_A : UInt<32>
    input io_in_B : UInt<32>
    input io_select : UInt<1>
    output io_out : UInt<32>

    node _T = eq(io_select, UInt<1>("h0")) @[lab2_exe_1.scala 15:25]
    node _GEN_0 = mux(_T, io_in_A, io_in_B) @[lab2_exe_1.scala 15:33 lab2_exe_1.scala 16:24 lab2_exe_1.scala 18:24]
    io_out <= _GEN_0
