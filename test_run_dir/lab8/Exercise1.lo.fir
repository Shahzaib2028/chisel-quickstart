circuit Exercise1 :
  module Exercise1 :
    input clock : Clock
    input reset : UInt<1>
    input io_enable : UInt<1>
    input io_write : UInt<1>
    input io_addr : UInt<10>
    input io_data_in_0 : UInt<8>
    input io_data_in_1 : UInt<8>
    input io_data_in_2 : UInt<8>
    input io_data_in_3 : UInt<8>
    output io_data_out_0 : UInt<8>
    output io_data_out_1 : UInt<8>
    output io_data_out_2 : UInt<8>
    output io_data_out_3 : UInt<8>

    mem mem_0 : @[Exercise1.scala 19:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_1 : @[Exercise1.scala 19:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_2 : @[Exercise1.scala 19:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    mem mem_3 : @[Exercise1.scala 19:26]
      data-type => UInt<8>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_1
      writer => MPORT
      read-under-write => undefined
    node _GEN_0 = validif(io_enable, io_addr) @[Exercise1.scala 21:28 Exercise1.scala 21:28]
    node _WIRE = _GEN_0 @[Exercise1.scala 21:28]
    node _T = or(_WIRE, UInt<10>("h0")) @[Exercise1.scala 21:28]
    node _T_1 = bits(_T, 9, 0) @[Exercise1.scala 21:28]
    node _GEN_1 = mux(io_enable, UInt<1>("h1"), UInt<1>("h0")) @[Exercise1.scala 21:28 Exercise1.scala 21:28 Exercise1.scala 19:26]
    node _GEN_2 = validif(io_enable, _T_1) @[Exercise1.scala 21:28 Exercise1.scala 21:28]
    node _GEN_3 = validif(io_enable, clock) @[Exercise1.scala 21:28 Exercise1.scala 21:28]
    io_data_out_0 <= mem_0.MPORT_1.data @[Exercise1.scala 21:17]
    io_data_out_1 <= mem_1.MPORT_1.data @[Exercise1.scala 21:17]
    io_data_out_2 <= mem_2.MPORT_1.data @[Exercise1.scala 21:17]
    io_data_out_3 <= mem_3.MPORT_1.data @[Exercise1.scala 21:17]
    mem_0.MPORT_1.addr <= _GEN_2
    mem_1.MPORT_1.addr <= _GEN_2
    mem_2.MPORT_1.addr <= _GEN_2
    mem_3.MPORT_1.addr <= _GEN_2
    mem_0.MPORT_1.en <= _GEN_1
    mem_1.MPORT_1.en <= _GEN_1
    mem_2.MPORT_1.en <= _GEN_1
    mem_3.MPORT_1.en <= _GEN_1
    mem_0.MPORT_1.clk <= _GEN_3
    mem_1.MPORT_1.clk <= _GEN_3
    mem_2.MPORT_1.clk <= _GEN_3
    mem_3.MPORT_1.clk <= _GEN_3
    mem_0.MPORT.addr <= io_addr
    mem_1.MPORT.addr <= io_addr
    mem_2.MPORT.addr <= io_addr
    mem_3.MPORT.addr <= io_addr
    mem_0.MPORT.en <= UInt<1>("h1")
    mem_1.MPORT.en <= UInt<1>("h1")
    mem_2.MPORT.en <= UInt<1>("h1")
    mem_3.MPORT.en <= UInt<1>("h1")
    mem_0.MPORT.clk <= clock
    mem_1.MPORT.clk <= clock
    mem_2.MPORT.clk <= clock
    mem_3.MPORT.clk <= clock
    mem_0.MPORT.data <= io_data_in_0
    mem_1.MPORT.data <= io_data_in_1
    mem_2.MPORT.data <= io_data_in_2
    mem_3.MPORT.data <= io_data_in_3
    mem_0.MPORT.mask <= UInt<1>("h1")
    mem_1.MPORT.mask <= UInt<1>("h1")
    mem_2.MPORT.mask <= UInt<1>("h1")
    mem_3.MPORT.mask <= UInt<1>("h1")
