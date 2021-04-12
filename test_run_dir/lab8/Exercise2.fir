;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit Exercise2 : 
  module Exercise2 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip enable : UInt<1>, flip write : UInt<1>, flip addr : UInt<10>, flip mask : UInt<1>[2], flip data_in : UInt<8>[2], data_out : UInt<8>[2]}
    
    smem mem : UInt<8>[2][1024], undefined @[Exercise2.scala 42:26]
    reg wrDataReg : UInt<8>[2], clock @[Exercise2.scala 43:28]
    wrDataReg[0] <= io.data_in[0] @[Exercise2.scala 43:28]
    wrDataReg[1] <= io.data_in[1] @[Exercise2.scala 43:28]
    node _doFowarding_T = eq(io.enable, UInt<1>("h01")) @[Exercise2.scala 44:41]
    node _doFowarding_T_1 = eq(io.write, UInt<1>("h01")) @[Exercise2.scala 44:64]
    node _doFowarding_T_2 = and(_doFowarding_T, _doFowarding_T_1) @[Exercise2.scala 44:52]
    reg doFowarding : UInt<1>, clock @[Exercise2.scala 44:30]
    doFowarding <= _doFowarding_T_2 @[Exercise2.scala 44:30]
    read mport memData = mem[io.addr], clock @[Exercise2.scala 45:27]
    when io.write : @[Exercise2.scala 47:20]
      write mport MPORT = mem[io.addr], clock
      when io.mask[0] :
        MPORT[0] <= io.data_in[0]
        skip
      when io.mask[1] :
        MPORT[1] <= io.data_in[1]
        skip
      skip @[Exercise2.scala 47:20]
    when doFowarding : @[Exercise2.scala 51:22]
      node _io_data_out_0_T = mux(io.mask[0], wrDataReg[0], UInt<1>("h00")) @[Exercise2.scala 53:52]
      node _io_data_out_0_T_1 = mux(doFowarding, _io_data_out_0_T, UInt<1>("h00")) @[Exercise2.scala 53:34]
      io.data_out[0] <= _io_data_out_0_T_1 @[Exercise2.scala 53:28]
      node _io_data_out_1_T = mux(io.mask[1], wrDataReg[1], UInt<1>("h00")) @[Exercise2.scala 53:52]
      node _io_data_out_1_T_1 = mux(doFowarding, _io_data_out_1_T, UInt<1>("h00")) @[Exercise2.scala 53:34]
      io.data_out[1] <= _io_data_out_1_T_1 @[Exercise2.scala 53:28]
      skip @[Exercise2.scala 51:22]
    else : @[Exercise2.scala 55:16]
      io.data_out[0] <= memData[0] @[Exercise2.scala 56:21]
      io.data_out[1] <= memData[1] @[Exercise2.scala 56:21]
      skip @[Exercise2.scala 55:16]
    
