circuit Exercise2 :
  module Exercise2 :
    input clock : Clock
    input reset : UInt<1>
    input io_enable : UInt<1>
    input io_write : UInt<1>
    input io_addr : UInt<10>
    input io_mask_0 : UInt<1>
    input io_mask_1 : UInt<1>
    input io_data_in_0 : UInt<8>
    input io_data_in_1 : UInt<8>
    output io_data_out_0 : UInt<8>
    output io_data_out_1 : UInt<8>

    mem mem_0 : @[Exercise2.scala 42:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => memData
      writer => MPORT
      read-under-write => undefined
    mem mem_1 : @[Exercise2.scala 42:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => memData
      writer => MPORT
      read-under-write => undefined
    reg wrDataReg_0 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), wrDataReg_0) @[Exercise2.scala 43:28]
    reg wrDataReg_1 : UInt<8>, clock with :
      reset => (UInt<1>("h0"), wrDataReg_1) @[Exercise2.scala 43:28]
    node _doFowarding_T = eq(io_enable, UInt<1>("h1")) @[Exercise2.scala 44:41]
    node _doFowarding_T_1 = eq(io_write, UInt<1>("h1")) @[Exercise2.scala 44:64]
    node _doFowarding_T_2 = and(_doFowarding_T, _doFowarding_T_1) @[Exercise2.scala 44:52]
    reg doFowarding : UInt<1>, clock with :
      reset => (UInt<1>("h0"), doFowarding) @[Exercise2.scala 44:30]
    node _GEN_0 = validif(io_mask_0, io_data_in_0)
    node _GEN_1 = mux(io_mask_0, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_2 = validif(io_mask_1, io_data_in_1)
    node _GEN_3 = mux(io_mask_1, UInt<1>("h1"), UInt<1>("h0"))
    node _GEN_4 = validif(io_write, io_addr) @[Exercise2.scala 47:20]
    node _GEN_5 = validif(io_write, clock) @[Exercise2.scala 47:20]
    node _GEN_6 = mux(io_write, UInt<1>("h1"), UInt<1>("h0")) @[Exercise2.scala 47:20 Exercise2.scala 42:26]
    node _GEN_7 = validif(io_write, _GEN_1) @[Exercise2.scala 47:20]
    node _GEN_8 = validif(io_write, _GEN_3) @[Exercise2.scala 47:20]
    node _GEN_9 = validif(io_write, _GEN_0) @[Exercise2.scala 47:20]
    node _GEN_10 = validif(io_write, _GEN_2) @[Exercise2.scala 47:20]
    node _T_0 = mux(doFowarding, wrDataReg_0, mem_0.memData.data) @[Exercise2.scala 51:23]
    node _T_1 = mux(doFowarding, wrDataReg_1, mem_1.memData.data) @[Exercise2.scala 51:23]
    io_data_out_0 <= _T_0 @[Exercise2.scala 51:17]
    io_data_out_1 <= _T_1 @[Exercise2.scala 51:17]
    mem_0.memData.addr <= io_addr @[Exercise2.scala 45:27]
    mem_1.memData.addr <= io_addr @[Exercise2.scala 45:27]
    mem_0.memData.en <= UInt<1>("h1") @[Exercise2.scala 45:27]
    mem_1.memData.en <= UInt<1>("h1") @[Exercise2.scala 45:27]
    mem_0.memData.clk <= clock @[Exercise2.scala 45:27]
    mem_1.memData.clk <= clock @[Exercise2.scala 45:27]
    mem_0.MPORT.addr <= _GEN_4
    mem_1.MPORT.addr <= _GEN_4
    mem_0.MPORT.en <= _GEN_6
    mem_1.MPORT.en <= _GEN_6
    mem_0.MPORT.clk <= _GEN_5
    mem_1.MPORT.clk <= _GEN_5
    mem_0.MPORT.data <= _GEN_9
    mem_1.MPORT.data <= _GEN_10
    mem_0.MPORT.mask <= _GEN_7
    mem_1.MPORT.mask <= _GEN_8
    wrDataReg_0 <= io_data_in_0 @[Exercise2.scala 43:28]
    wrDataReg_1 <= io_data_in_1 @[Exercise2.scala 43:28]
    doFowarding <= _doFowarding_T_2 @[Exercise2.scala 44:30]
