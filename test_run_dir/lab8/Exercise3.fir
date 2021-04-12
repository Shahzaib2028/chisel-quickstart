;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Exercise3 : 
  module Exercise3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip addr : UInt<32>, inst : UInt<32>}
    
    cmem i_mem : UInt<32>[32] @[Exercise3.scala 14:20]
    node _io_inst_T = bits(io.addr, 4, 0) @[Exercise3.scala 16:21]
    infer mport io_inst_MPORT = i_mem[_io_inst_T], clock @[Exercise3.scala 16:21]
    io.inst <= io_inst_MPORT @[Exercise3.scala 16:13]
    
