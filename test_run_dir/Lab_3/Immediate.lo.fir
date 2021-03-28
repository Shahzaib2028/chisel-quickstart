circuit Immediate :
  module Immediate :
    input clock : Clock
    input reset : UInt<1>
    input io_instr : UInt<32>
    input io_sel : UInt<4>
    output io_immd_se_I : UInt<32>
    output io_immd_se_S : UInt<32>
    output io_immd_se_SB : UInt<32>
    output io_immd_se_UJ : UInt<32>
    output io_immd_se_U : UInt<32>
    input io_pc : UInt<32>

    node imm31 = bits(io_instr, 31, 31) @[Task2.scala 21:29]
    node imm30 = bits(io_instr, 30, 25) @[Task2.scala 22:29]
    node imm24 = bits(io_instr, 24, 21) @[Task2.scala 23:29]
    node imm20 = bits(io_instr, 20, 20) @[Task2.scala 24:29]
    node imm19 = bits(io_instr, 19, 12) @[Task2.scala 25:29]
    node imm11 = bits(io_instr, 11, 8) @[Task2.scala 26:29]
    node imm7 = bits(io_instr, 7, 7) @[Task2.scala 27:28]
    node _io_immd_se_I_T = bits(imm31, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_I_hi_hi_hi = mux(_io_immd_se_I_T, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_I_lo = cat(imm24, imm20) @[Cat.scala 30:58]
    node io_immd_se_I_hi_hi = cat(io_immd_se_I_hi_hi_hi, imm31) @[Cat.scala 30:58]
    node io_immd_se_I_hi = cat(io_immd_se_I_hi_hi, imm30) @[Cat.scala 30:58]
    node _io_immd_se_I_T_1 = cat(io_immd_se_I_hi, io_immd_se_I_lo) @[Cat.scala 30:58]
    node _io_immd_se_S_T = bits(imm31, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_S_hi_hi_hi = mux(_io_immd_se_S_T, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_S_lo = cat(imm11, imm7) @[Cat.scala 30:58]
    node io_immd_se_S_hi_hi = cat(io_immd_se_S_hi_hi_hi, imm31) @[Cat.scala 30:58]
    node io_immd_se_S_hi = cat(io_immd_se_S_hi_hi, imm30) @[Cat.scala 30:58]
    node _io_immd_se_S_T_1 = cat(io_immd_se_S_hi, io_immd_se_S_lo) @[Cat.scala 30:58]
    node _io_immd_se_SB_T = bits(imm31, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_SB_hi_hi_hi = mux(_io_immd_se_SB_T, UInt<19>("h7ffff"), UInt<19>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_SB_lo_hi = cat(imm30, imm11) @[Cat.scala 30:58]
    node io_immd_se_SB_lo = cat(io_immd_se_SB_lo_hi, UInt<1>("h0")) @[Cat.scala 30:58]
    node io_immd_se_SB_hi_hi = cat(io_immd_se_SB_hi_hi_hi, imm31) @[Cat.scala 30:58]
    node io_immd_se_SB_hi = cat(io_immd_se_SB_hi_hi, imm7) @[Cat.scala 30:58]
    node _io_immd_se_SB_T_1 = cat(io_immd_se_SB_hi, io_immd_se_SB_lo) @[Cat.scala 30:58]
    node _io_immd_se_SB_T_2 = add(_io_immd_se_SB_T_1, io_pc) @[Task2.scala 35:74]
    node _io_immd_se_SB_T_3 = tail(_io_immd_se_SB_T_2, 1) @[Task2.scala 35:74]
    node _io_immd_se_UJ_T = bits(imm31, 0, 0) @[Bitwise.scala 72:15]
    node io_immd_se_UJ_hi_hi_hi = mux(_io_immd_se_UJ_T, UInt<11>("h7ff"), UInt<11>("h0")) @[Bitwise.scala 72:12]
    node io_immd_se_UJ_lo_hi = cat(imm30, imm24) @[Cat.scala 30:58]
    node io_immd_se_UJ_lo = cat(io_immd_se_UJ_lo_hi, UInt<1>("h0")) @[Cat.scala 30:58]
    node io_immd_se_UJ_hi_lo = cat(imm19, imm20) @[Cat.scala 30:58]
    node io_immd_se_UJ_hi_hi = cat(io_immd_se_UJ_hi_hi_hi, imm31) @[Cat.scala 30:58]
    node io_immd_se_UJ_hi = cat(io_immd_se_UJ_hi_hi, io_immd_se_UJ_hi_lo) @[Cat.scala 30:58]
    node _io_immd_se_UJ_T_1 = cat(io_immd_se_UJ_hi, io_immd_se_UJ_lo) @[Cat.scala 30:58]
    node _io_immd_se_UJ_T_2 = add(_io_immd_se_UJ_T_1, io_pc) @[Task2.scala 37:81]
    node _io_immd_se_UJ_T_3 = tail(_io_immd_se_UJ_T_2, 1) @[Task2.scala 37:81]
    node io_immd_se_U_lo = cat(imm20, imm19) @[Cat.scala 30:58]
    node io_immd_se_U_hi_hi = cat(imm31, imm30) @[Cat.scala 30:58]
    node io_immd_se_U_hi = cat(io_immd_se_U_hi_hi, imm24) @[Cat.scala 30:58]
    node _io_immd_se_U_T = cat(io_immd_se_U_hi, io_immd_se_U_lo) @[Cat.scala 30:58]
    node _io_immd_se_U_T_1 = dshl(_io_immd_se_U_T, UInt<4>("hc")) @[Task2.scala 39:61]
    io_immd_se_I <= _io_immd_se_I_T_1 @[Task2.scala 31:22]
    io_immd_se_S <= _io_immd_se_S_T_1 @[Task2.scala 33:22]
    io_immd_se_SB <= _io_immd_se_SB_T_3 @[Task2.scala 35:23]
    io_immd_se_UJ <= _io_immd_se_UJ_T_3 @[Task2.scala 37:23]
    io_immd_se_U <= bits(_io_immd_se_U_T_1, 31, 0) @[Task2.scala 39:22]
