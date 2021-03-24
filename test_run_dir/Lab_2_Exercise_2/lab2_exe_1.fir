;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab2_exe_1 : 
  module lab2_exe_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip in_A : UInt<32>, flip in_B : UInt<32>, flip select : UInt<1>, out : UInt}
    
    node _T = eq(io.select, UInt<1>("h00")) @[lab2_exe_1.scala 15:25]
    when _T : @[lab2_exe_1.scala 15:33]
      io.out <= io.in_A @[lab2_exe_1.scala 16:24]
      skip @[lab2_exe_1.scala 15:33]
    else : @[lab2_exe_1.scala 17:20]
      io.out <= io.in_B @[lab2_exe_1.scala 18:24]
      skip @[lab2_exe_1.scala 17:20]
    
