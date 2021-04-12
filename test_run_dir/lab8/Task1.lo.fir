circuit Task1 :
  module Queue :
    input clock : Clock
    input reset : UInt<1>
    output io_enq_ready : UInt<1>
    input io_enq_valid : UInt<1>
    input io_enq_bits : UInt<32>
    input io_deq_ready : UInt<1>
    output io_deq_valid : UInt<1>
    output io_deq_bits : UInt<32>
    output io_count : UInt<3>

    mem ram : @[Decoupled.scala 218:16]
      data-type => UInt<32>
      depth => 4
      read-latency => 0
      write-latency => 1
      reader => io_deq_bits_MPORT
      writer => MPORT
      read-under-write => undefined
    reg value : UInt<2>, clock with :
      reset => (UInt<1>("h0"), value) @[Counter.scala 60:40]
    reg value_1 : UInt<2>, clock with :
      reset => (UInt<1>("h0"), value_1) @[Counter.scala 60:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (UInt<1>("h0"), maybe_full) @[Decoupled.scala 221:27]
    node ptr_match = eq(value, value_1) @[Decoupled.scala 223:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 224:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 224:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 225:24]
    node _do_enq_T = and(io_enq_ready, io_enq_valid) @[Decoupled.scala 40:37]
    node _do_deq_T = and(io_deq_ready, io_deq_valid) @[Decoupled.scala 40:37]
    node wrap = eq(value, UInt<2>("h3")) @[Counter.scala 72:24]
    node _value_T = add(value, UInt<1>("h1")) @[Counter.scala 76:24]
    node _value_T_1 = tail(_value_T, 1) @[Counter.scala 76:24]
    node do_enq = _do_enq_T
    node _GEN_0 = validif(do_enq, value) @[Decoupled.scala 229:17 Decoupled.scala 230:8]
    node _GEN_1 = validif(do_enq, clock) @[Decoupled.scala 229:17 Decoupled.scala 230:8]
    node _GEN_2 = mux(do_enq, UInt<1>("h1"), UInt<1>("h0")) @[Decoupled.scala 229:17 Decoupled.scala 230:8 Decoupled.scala 218:16]
    node _GEN_3 = validif(do_enq, UInt<1>("h1")) @[Decoupled.scala 229:17 Decoupled.scala 230:24]
    node _GEN_4 = validif(do_enq, io_enq_bits) @[Decoupled.scala 229:17 Decoupled.scala 230:24]
    node _GEN_5 = mux(do_enq, _value_T_1, value) @[Decoupled.scala 229:17 Counter.scala 76:15 Counter.scala 60:40]
    node wrap_1 = eq(value_1, UInt<2>("h3")) @[Counter.scala 72:24]
    node _value_T_2 = add(value_1, UInt<1>("h1")) @[Counter.scala 76:24]
    node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 76:24]
    node do_deq = _do_deq_T
    node _GEN_6 = mux(do_deq, _value_T_3, value_1) @[Decoupled.scala 233:17 Counter.scala 76:15 Counter.scala 60:40]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 236:16]
    node _GEN_7 = mux(_T, do_enq, maybe_full) @[Decoupled.scala 236:28 Decoupled.scala 237:16 Decoupled.scala 221:27]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 240:19]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 241:19]
    node _ptr_diff_T = sub(value, value_1) @[Decoupled.scala 257:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 257:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 259:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<3>("h4"), UInt<1>("h0")) @[Decoupled.scala 259:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 259:62]
    io_enq_ready <= _io_enq_ready_T @[Decoupled.scala 241:16]
    io_deq_valid <= _io_deq_valid_T @[Decoupled.scala 240:16]
    io_deq_bits <= ram.io_deq_bits_MPORT.data @[Decoupled.scala 242:15]
    io_count <= _io_count_T_2 @[Decoupled.scala 259:14]
    ram.io_deq_bits_MPORT.addr <= value_1 @[Decoupled.scala 242:21]
    ram.io_deq_bits_MPORT.en <= UInt<1>("h1") @[Decoupled.scala 242:21]
    ram.io_deq_bits_MPORT.clk <= clock @[Decoupled.scala 242:21]
    ram.MPORT.addr <= _GEN_0
    ram.MPORT.en <= _GEN_2
    ram.MPORT.clk <= _GEN_1
    ram.MPORT.data <= _GEN_4
    ram.MPORT.mask <= _GEN_3
    value <= mux(reset, UInt<2>("h0"), _GEN_5) @[Counter.scala 60:40 Counter.scala 60:40]
    value_1 <= mux(reset, UInt<2>("h0"), _GEN_6) @[Counter.scala 60:40 Counter.scala 60:40]
    maybe_full <= mux(reset, UInt<1>("h0"), _GEN_7) @[Decoupled.scala 221:27 Decoupled.scala 221:27]

  module Arbiter :
    input clock : Clock
    input reset : UInt<1>
    output io_in_0_ready : UInt<1>
    input io_in_0_valid : UInt<1>
    input io_in_0_bits : UInt<32>
    output io_in_1_ready : UInt<1>
    input io_in_1_valid : UInt<1>
    input io_in_1_bits : UInt<32>
    output io_in_2_ready : UInt<1>
    input io_in_2_valid : UInt<1>
    input io_in_2_bits : UInt<32>
    output io_in_3_ready : UInt<1>
    input io_in_3_valid : UInt<1>
    input io_in_3_bits : UInt<32>
    input io_out_ready : UInt<1>
    output io_out_valid : UInt<1>
    output io_out_bits : UInt<32>
    output io_chosen : UInt<2>

    node _GEN_0 = mux(io_in_2_valid, UInt<2>("h2"), UInt<2>("h3")) @[Arbiter.scala 126:27 Arbiter.scala 127:17 Arbiter.scala 123:13]
    node _GEN_1 = mux(io_in_2_valid, io_in_2_bits, io_in_3_bits) @[Arbiter.scala 126:27 Arbiter.scala 128:19 Arbiter.scala 124:15]
    node _GEN_2 = mux(io_in_1_valid, UInt<1>("h1"), _GEN_0) @[Arbiter.scala 126:27 Arbiter.scala 127:17]
    node _GEN_3 = mux(io_in_1_valid, io_in_1_bits, _GEN_1) @[Arbiter.scala 126:27 Arbiter.scala 128:19]
    node _GEN_4 = mux(io_in_0_valid, UInt<1>("h0"), _GEN_2) @[Arbiter.scala 126:27 Arbiter.scala 127:17]
    node _GEN_5 = mux(io_in_0_valid, io_in_0_bits, _GEN_3) @[Arbiter.scala 126:27 Arbiter.scala 128:19]
    node _grant_T = or(io_in_0_valid, io_in_1_valid) @[Arbiter.scala 31:68]
    node _grant_T_1 = or(_grant_T, io_in_2_valid) @[Arbiter.scala 31:68]
    node grant_1 = eq(io_in_0_valid, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node grant_2 = eq(_grant_T, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node grant_3 = eq(_grant_T_1, UInt<1>("h0")) @[Arbiter.scala 31:78]
    node _io_in_0_ready_T = and(UInt<1>("h1"), io_out_ready) @[Arbiter.scala 134:19]
    node _io_in_1_ready_T = and(grant_1, io_out_ready) @[Arbiter.scala 134:19]
    node _io_in_2_ready_T = and(grant_2, io_out_ready) @[Arbiter.scala 134:19]
    node _io_in_3_ready_T = and(grant_3, io_out_ready) @[Arbiter.scala 134:19]
    node _io_out_valid_T = eq(grant_3, UInt<1>("h0")) @[Arbiter.scala 135:19]
    node _io_out_valid_T_1 = or(_io_out_valid_T, io_in_3_valid) @[Arbiter.scala 135:31]
    io_in_0_ready <= _io_in_0_ready_T @[Arbiter.scala 134:14]
    io_in_1_ready <= _io_in_1_ready_T @[Arbiter.scala 134:14]
    io_in_2_ready <= _io_in_2_ready_T @[Arbiter.scala 134:14]
    io_in_3_ready <= _io_in_3_ready_T @[Arbiter.scala 134:14]
    io_out_valid <= _io_out_valid_T_1 @[Arbiter.scala 135:16]
    io_out_bits <= _GEN_5
    io_chosen <= _GEN_4

  module Task1 :
    input clock : Clock
    input reset : UInt<1>
    output io_in_0_ready : UInt<1>
    input io_in_0_valid : UInt<1>
    input io_in_0_bits : UInt<32>
    output io_in_1_ready : UInt<1>
    input io_in_1_valid : UInt<1>
    input io_in_1_bits : UInt<32>
    output io_in_2_ready : UInt<1>
    input io_in_2_valid : UInt<1>
    input io_in_2_bits : UInt<32>
    output io_in_3_ready : UInt<1>
    input io_in_3_valid : UInt<1>
    input io_in_3_bits : UInt<32>
    input io_out_ready : UInt<1>
    output io_out_valid : UInt<1>
    output io_out_bits : UInt<4>
    input io_Addr : UInt<5>
    output io_data_out_0 : UInt<32>
    output io_data_out_1 : UInt<32>
    output io_data_out_2 : UInt<32>
    output io_data_out_3 : UInt<32>

    inst queue0 of Queue @[Decoupled.scala 296:21]
    inst queue1 of Queue @[Decoupled.scala 296:21]
    inst queue2 of Queue @[Decoupled.scala 296:21]
    inst queue3 of Queue @[Decoupled.scala 296:21]
    mem mem_0 : @[Task1.scala 27:26]
      data-type => UInt<4>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_4
      writer => MPORT
      writer => MPORT_1
      writer => MPORT_2
      writer => MPORT_3
      read-under-write => undefined
    mem mem_1 : @[Task1.scala 27:26]
      data-type => UInt<4>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_4
      writer => MPORT
      writer => MPORT_1
      writer => MPORT_2
      writer => MPORT_3
      read-under-write => undefined
    mem mem_2 : @[Task1.scala 27:26]
      data-type => UInt<4>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_4
      writer => MPORT
      writer => MPORT_1
      writer => MPORT_2
      writer => MPORT_3
      read-under-write => undefined
    mem mem_3 : @[Task1.scala 27:26]
      data-type => UInt<4>
      depth => 1024
      read-latency => 1
      write-latency => 1
      reader => MPORT_4
      writer => MPORT
      writer => MPORT_1
      writer => MPORT_2
      writer => MPORT_3
      read-under-write => undefined
    inst arb_priority of Arbiter @[Task1.scala 28:31]
    reg vector_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), vector_0) @[Task1.scala 29:21]
    reg vector_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), vector_1) @[Task1.scala 29:21]
    reg vector_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), vector_2) @[Task1.scala 29:21]
    reg vector_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), vector_3) @[Task1.scala 29:21]
    reg mask_0 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mask_0) @[Task1.scala 30:20]
    reg mask_1 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mask_1) @[Task1.scala 30:20]
    reg mask_2 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mask_2) @[Task1.scala 30:20]
    reg mask_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), mask_3) @[Task1.scala 30:20]
    node _GEN_0 = mux(io_in_3_valid, UInt<1>("h1"), UInt<1>("h0")) @[Task1.scala 52:31 Task1.scala 53:17 Task1.scala 34:13]
    node _GEN_1 = mux(io_in_2_valid, UInt<1>("h1"), UInt<1>("h0")) @[Task1.scala 50:31 Task1.scala 51:17 Task1.scala 33:13]
    node _GEN_2 = mux(io_in_2_valid, UInt<1>("h0"), _GEN_0) @[Task1.scala 50:31 Task1.scala 34:13]
    node _GEN_3 = mux(io_in_1_valid, UInt<1>("h1"), UInt<1>("h0")) @[Task1.scala 48:31 Task1.scala 49:17 Task1.scala 32:13]
    node _GEN_4 = mux(io_in_1_valid, UInt<1>("h0"), _GEN_1) @[Task1.scala 48:31 Task1.scala 33:13]
    node _GEN_5 = mux(io_in_1_valid, UInt<1>("h0"), _GEN_2) @[Task1.scala 48:31 Task1.scala 34:13]
    node _GEN_6 = mux(io_in_0_valid, UInt<1>("h1"), UInt<1>("h0")) @[Task1.scala 46:25 Task1.scala 47:17 Task1.scala 31:13]
    node _GEN_7 = mux(io_in_0_valid, UInt<1>("h0"), _GEN_3) @[Task1.scala 46:25 Task1.scala 32:13]
    node _GEN_8 = mux(io_in_0_valid, UInt<1>("h0"), _GEN_4) @[Task1.scala 46:25 Task1.scala 33:13]
    node _GEN_9 = mux(io_in_0_valid, UInt<1>("h0"), _GEN_5) @[Task1.scala 46:25 Task1.scala 34:13]
    node _GEN_10 = mux(mask_3, UInt<1>("h0"), vector_0) @[Task1.scala 75:24 Task1.scala 76:19 Task1.scala 29:21]
    node _GEN_11 = mux(mask_3, UInt<1>("h0"), vector_1) @[Task1.scala 75:24 Task1.scala 77:19 Task1.scala 29:21]
    node _GEN_12 = mux(mask_3, UInt<1>("h0"), vector_2) @[Task1.scala 75:24 Task1.scala 78:19 Task1.scala 29:21]
    node _GEN_13 = mux(mask_3, io_in_3_bits, vector_3) @[Task1.scala 75:24 Task1.scala 79:19 Task1.scala 29:21]
    node _GEN_14 = validif(mask_3, io_Addr) @[Task1.scala 75:24]
    node _GEN_15 = validif(mask_3, clock) @[Task1.scala 75:24]
    node _GEN_16 = mux(mask_3, UInt<1>("h1"), UInt<1>("h0")) @[Task1.scala 75:24 Task1.scala 27:26]
    node _GEN_17 = validif(mask_3, UInt<1>("h1")) @[Task1.scala 75:24]
    node _GEN_18 = validif(mask_3, vector_0) @[Task1.scala 75:24]
    node _GEN_19 = validif(mask_3, vector_1) @[Task1.scala 75:24]
    node _GEN_20 = validif(mask_3, vector_2) @[Task1.scala 75:24]
    node _GEN_21 = validif(mask_3, vector_3) @[Task1.scala 75:24]
    node _GEN_22 = mux(mask_2, UInt<1>("h0"), _GEN_10) @[Task1.scala 69:24 Task1.scala 70:19]
    node _GEN_23 = mux(mask_2, UInt<1>("h0"), _GEN_11) @[Task1.scala 69:24 Task1.scala 71:19]
    node _GEN_24 = mux(mask_2, io_in_2_bits, _GEN_12) @[Task1.scala 69:24 Task1.scala 72:19]
    node _GEN_25 = mux(mask_2, UInt<1>("h0"), _GEN_13) @[Task1.scala 69:24 Task1.scala 73:19]
    node _GEN_26 = validif(mask_2, io_Addr) @[Task1.scala 69:24]
    node _GEN_27 = validif(mask_2, clock) @[Task1.scala 69:24]
    node _GEN_28 = mux(mask_2, UInt<1>("h1"), UInt<1>("h0")) @[Task1.scala 69:24 Task1.scala 27:26]
    node _GEN_29 = validif(mask_2, UInt<1>("h1")) @[Task1.scala 69:24]
    node _GEN_30 = validif(mask_2, vector_0) @[Task1.scala 69:24]
    node _GEN_31 = validif(mask_2, vector_1) @[Task1.scala 69:24]
    node _GEN_32 = validif(mask_2, vector_2) @[Task1.scala 69:24]
    node _GEN_33 = validif(mask_2, vector_3) @[Task1.scala 69:24]
    node _GEN_34 = validif(eq(mask_2, UInt<1>("h0")), _GEN_14) @[Task1.scala 69:24]
    node _GEN_35 = validif(eq(mask_2, UInt<1>("h0")), _GEN_15) @[Task1.scala 69:24]
    node _GEN_36 = mux(mask_2, UInt<1>("h0"), _GEN_16) @[Task1.scala 69:24 Task1.scala 27:26]
    node _GEN_37 = validif(eq(mask_2, UInt<1>("h0")), _GEN_17) @[Task1.scala 69:24]
    node _GEN_38 = validif(eq(mask_2, UInt<1>("h0")), _GEN_18) @[Task1.scala 69:24]
    node _GEN_39 = validif(eq(mask_2, UInt<1>("h0")), _GEN_19) @[Task1.scala 69:24]
    node _GEN_40 = validif(eq(mask_2, UInt<1>("h0")), _GEN_20) @[Task1.scala 69:24]
    node _GEN_41 = validif(eq(mask_2, UInt<1>("h0")), _GEN_21) @[Task1.scala 69:24]
    node _GEN_42 = mux(mask_1, UInt<1>("h0"), _GEN_22) @[Task1.scala 63:24 Task1.scala 64:19]
    node _GEN_43 = mux(mask_1, io_in_1_bits, _GEN_23) @[Task1.scala 63:24 Task1.scala 65:19]
    node _GEN_44 = mux(mask_1, UInt<1>("h0"), _GEN_24) @[Task1.scala 63:24 Task1.scala 66:19]
    node _GEN_45 = mux(mask_1, UInt<1>("h0"), _GEN_25) @[Task1.scala 63:24 Task1.scala 67:19]
    node _GEN_46 = validif(mask_1, io_Addr) @[Task1.scala 63:24]
    node _GEN_47 = validif(mask_1, clock) @[Task1.scala 63:24]
    node _GEN_48 = mux(mask_1, UInt<1>("h1"), UInt<1>("h0")) @[Task1.scala 63:24 Task1.scala 27:26]
    node _GEN_49 = validif(mask_1, UInt<1>("h1")) @[Task1.scala 63:24]
    node _GEN_50 = validif(mask_1, vector_0) @[Task1.scala 63:24]
    node _GEN_51 = validif(mask_1, vector_1) @[Task1.scala 63:24]
    node _GEN_52 = validif(mask_1, vector_2) @[Task1.scala 63:24]
    node _GEN_53 = validif(mask_1, vector_3) @[Task1.scala 63:24]
    node _GEN_54 = validif(eq(mask_1, UInt<1>("h0")), _GEN_26) @[Task1.scala 63:24]
    node _GEN_55 = validif(eq(mask_1, UInt<1>("h0")), _GEN_27) @[Task1.scala 63:24]
    node _GEN_56 = mux(mask_1, UInt<1>("h0"), _GEN_28) @[Task1.scala 63:24 Task1.scala 27:26]
    node _GEN_57 = validif(eq(mask_1, UInt<1>("h0")), _GEN_29) @[Task1.scala 63:24]
    node _GEN_58 = validif(eq(mask_1, UInt<1>("h0")), _GEN_30) @[Task1.scala 63:24]
    node _GEN_59 = validif(eq(mask_1, UInt<1>("h0")), _GEN_31) @[Task1.scala 63:24]
    node _GEN_60 = validif(eq(mask_1, UInt<1>("h0")), _GEN_32) @[Task1.scala 63:24]
    node _GEN_61 = validif(eq(mask_1, UInt<1>("h0")), _GEN_33) @[Task1.scala 63:24]
    node _GEN_62 = validif(eq(mask_1, UInt<1>("h0")), _GEN_34) @[Task1.scala 63:24]
    node _GEN_63 = validif(eq(mask_1, UInt<1>("h0")), _GEN_35) @[Task1.scala 63:24]
    node _GEN_64 = mux(mask_1, UInt<1>("h0"), _GEN_36) @[Task1.scala 63:24 Task1.scala 27:26]
    node _GEN_65 = validif(eq(mask_1, UInt<1>("h0")), _GEN_37) @[Task1.scala 63:24]
    node _GEN_66 = validif(eq(mask_1, UInt<1>("h0")), _GEN_38) @[Task1.scala 63:24]
    node _GEN_67 = validif(eq(mask_1, UInt<1>("h0")), _GEN_39) @[Task1.scala 63:24]
    node _GEN_68 = validif(eq(mask_1, UInt<1>("h0")), _GEN_40) @[Task1.scala 63:24]
    node _GEN_69 = validif(eq(mask_1, UInt<1>("h0")), _GEN_41) @[Task1.scala 63:24]
    node _GEN_70 = mux(mask_0, io_in_0_bits, _GEN_42) @[Task1.scala 57:18 Task1.scala 58:19]
    node _GEN_71 = mux(mask_0, UInt<1>("h0"), _GEN_43) @[Task1.scala 57:18 Task1.scala 59:19]
    node _GEN_72 = mux(mask_0, UInt<1>("h0"), _GEN_44) @[Task1.scala 57:18 Task1.scala 60:19]
    node _GEN_73 = mux(mask_0, UInt<1>("h0"), _GEN_45) @[Task1.scala 57:18 Task1.scala 61:19]
    node _GEN_74 = validif(mask_0, io_Addr) @[Task1.scala 57:18]
    node _GEN_75 = validif(mask_0, clock) @[Task1.scala 57:18]
    node _GEN_76 = mux(mask_0, UInt<1>("h1"), UInt<1>("h0")) @[Task1.scala 57:18 Task1.scala 27:26]
    node _GEN_77 = validif(mask_0, UInt<1>("h1")) @[Task1.scala 57:18]
    node _GEN_78 = validif(mask_0, vector_0) @[Task1.scala 57:18]
    node _GEN_79 = validif(mask_0, vector_1) @[Task1.scala 57:18]
    node _GEN_80 = validif(mask_0, vector_2) @[Task1.scala 57:18]
    node _GEN_81 = validif(mask_0, vector_3) @[Task1.scala 57:18]
    node _GEN_82 = validif(eq(mask_0, UInt<1>("h0")), _GEN_46) @[Task1.scala 57:18]
    node _GEN_83 = validif(eq(mask_0, UInt<1>("h0")), _GEN_47) @[Task1.scala 57:18]
    node _GEN_84 = mux(mask_0, UInt<1>("h0"), _GEN_48) @[Task1.scala 57:18 Task1.scala 27:26]
    node _GEN_85 = validif(eq(mask_0, UInt<1>("h0")), _GEN_49) @[Task1.scala 57:18]
    node _GEN_86 = validif(eq(mask_0, UInt<1>("h0")), _GEN_50) @[Task1.scala 57:18]
    node _GEN_87 = validif(eq(mask_0, UInt<1>("h0")), _GEN_51) @[Task1.scala 57:18]
    node _GEN_88 = validif(eq(mask_0, UInt<1>("h0")), _GEN_52) @[Task1.scala 57:18]
    node _GEN_89 = validif(eq(mask_0, UInt<1>("h0")), _GEN_53) @[Task1.scala 57:18]
    node _GEN_90 = validif(eq(mask_0, UInt<1>("h0")), _GEN_54) @[Task1.scala 57:18]
    node _GEN_91 = validif(eq(mask_0, UInt<1>("h0")), _GEN_55) @[Task1.scala 57:18]
    node _GEN_92 = mux(mask_0, UInt<1>("h0"), _GEN_56) @[Task1.scala 57:18 Task1.scala 27:26]
    node _GEN_93 = validif(eq(mask_0, UInt<1>("h0")), _GEN_57) @[Task1.scala 57:18]
    node _GEN_94 = validif(eq(mask_0, UInt<1>("h0")), _GEN_58) @[Task1.scala 57:18]
    node _GEN_95 = validif(eq(mask_0, UInt<1>("h0")), _GEN_59) @[Task1.scala 57:18]
    node _GEN_96 = validif(eq(mask_0, UInt<1>("h0")), _GEN_60) @[Task1.scala 57:18]
    node _GEN_97 = validif(eq(mask_0, UInt<1>("h0")), _GEN_61) @[Task1.scala 57:18]
    node _GEN_98 = validif(eq(mask_0, UInt<1>("h0")), _GEN_62) @[Task1.scala 57:18]
    node _GEN_99 = validif(eq(mask_0, UInt<1>("h0")), _GEN_63) @[Task1.scala 57:18]
    node _GEN_100 = mux(mask_0, UInt<1>("h0"), _GEN_64) @[Task1.scala 57:18 Task1.scala 27:26]
    node _GEN_101 = validif(eq(mask_0, UInt<1>("h0")), _GEN_65) @[Task1.scala 57:18]
    node _GEN_102 = validif(eq(mask_0, UInt<1>("h0")), _GEN_66) @[Task1.scala 57:18]
    node _GEN_103 = validif(eq(mask_0, UInt<1>("h0")), _GEN_67) @[Task1.scala 57:18]
    node _GEN_104 = validif(eq(mask_0, UInt<1>("h0")), _GEN_68) @[Task1.scala 57:18]
    node _GEN_105 = validif(eq(mask_0, UInt<1>("h0")), _GEN_69) @[Task1.scala 57:18]
    io_in_0_ready <= queue0.io_enq_ready @[Decoupled.scala 299:17]
    io_in_1_ready <= queue1.io_enq_ready @[Decoupled.scala 299:17]
    io_in_2_ready <= queue2.io_enq_ready @[Decoupled.scala 299:17]
    io_in_3_ready <= queue3.io_enq_ready @[Decoupled.scala 299:17]
    io_out_valid <= arb_priority.io_out_valid @[Task1.scala 40:12]
    io_out_bits <= bits(arb_priority.io_out_bits, 3, 0) @[Task1.scala 40:12]
    io_data_out_0 <= mem_0.MPORT_4.data @[Task1.scala 84:17]
    io_data_out_1 <= mem_1.MPORT_4.data @[Task1.scala 84:17]
    io_data_out_2 <= mem_2.MPORT_4.data @[Task1.scala 84:17]
    io_data_out_3 <= mem_3.MPORT_4.data @[Task1.scala 84:17]
    queue0.clock <= clock
    queue0.reset <= reset
    queue0.io_enq_valid <= io_in_0_valid @[Decoupled.scala 297:22]
    queue0.io_enq_bits <= io_in_0_bits @[Decoupled.scala 298:21]
    queue0.io_deq_ready <= arb_priority.io_in_0_ready @[Task1.scala 36:12]
    queue1.clock <= clock
    queue1.reset <= reset
    queue1.io_enq_valid <= io_in_1_valid @[Decoupled.scala 297:22]
    queue1.io_enq_bits <= io_in_1_bits @[Decoupled.scala 298:21]
    queue1.io_deq_ready <= arb_priority.io_in_1_ready @[Task1.scala 37:12]
    queue2.clock <= clock
    queue2.reset <= reset
    queue2.io_enq_valid <= io_in_2_valid @[Decoupled.scala 297:22]
    queue2.io_enq_bits <= io_in_2_bits @[Decoupled.scala 298:21]
    queue2.io_deq_ready <= arb_priority.io_in_2_ready @[Task1.scala 38:12]
    queue3.clock <= clock
    queue3.reset <= reset
    queue3.io_enq_valid <= io_in_3_valid @[Decoupled.scala 297:22]
    queue3.io_enq_bits <= io_in_3_bits @[Decoupled.scala 298:21]
    queue3.io_deq_ready <= arb_priority.io_in_3_ready @[Task1.scala 39:12]
    mem_0.MPORT_4.addr <= io_Addr @[Task1.scala 84:28]
    mem_1.MPORT_4.addr <= io_Addr @[Task1.scala 84:28]
    mem_2.MPORT_4.addr <= io_Addr @[Task1.scala 84:28]
    mem_3.MPORT_4.addr <= io_Addr @[Task1.scala 84:28]
    mem_0.MPORT_4.en <= UInt<1>("h1") @[Task1.scala 84:28]
    mem_1.MPORT_4.en <= UInt<1>("h1") @[Task1.scala 84:28]
    mem_2.MPORT_4.en <= UInt<1>("h1") @[Task1.scala 84:28]
    mem_3.MPORT_4.en <= UInt<1>("h1") @[Task1.scala 84:28]
    mem_0.MPORT_4.clk <= clock @[Task1.scala 84:28]
    mem_1.MPORT_4.clk <= clock @[Task1.scala 84:28]
    mem_2.MPORT_4.clk <= clock @[Task1.scala 84:28]
    mem_3.MPORT_4.clk <= clock @[Task1.scala 84:28]
    mem_0.MPORT.addr <= _GEN_74
    mem_1.MPORT.addr <= _GEN_74
    mem_2.MPORT.addr <= _GEN_74
    mem_3.MPORT.addr <= _GEN_74
    mem_0.MPORT.en <= _GEN_76
    mem_1.MPORT.en <= _GEN_76
    mem_2.MPORT.en <= _GEN_76
    mem_3.MPORT.en <= _GEN_76
    mem_0.MPORT.clk <= _GEN_75
    mem_1.MPORT.clk <= _GEN_75
    mem_2.MPORT.clk <= _GEN_75
    mem_3.MPORT.clk <= _GEN_75
    mem_0.MPORT.data <= bits(_GEN_78, 3, 0)
    mem_1.MPORT.data <= bits(_GEN_79, 3, 0)
    mem_2.MPORT.data <= bits(_GEN_80, 3, 0)
    mem_3.MPORT.data <= bits(_GEN_81, 3, 0)
    mem_0.MPORT.mask <= _GEN_77
    mem_1.MPORT.mask <= _GEN_77
    mem_2.MPORT.mask <= _GEN_77
    mem_3.MPORT.mask <= _GEN_77
    mem_0.MPORT_1.addr <= _GEN_82
    mem_1.MPORT_1.addr <= _GEN_82
    mem_2.MPORT_1.addr <= _GEN_82
    mem_3.MPORT_1.addr <= _GEN_82
    mem_0.MPORT_1.en <= _GEN_84
    mem_1.MPORT_1.en <= _GEN_84
    mem_2.MPORT_1.en <= _GEN_84
    mem_3.MPORT_1.en <= _GEN_84
    mem_0.MPORT_1.clk <= _GEN_83
    mem_1.MPORT_1.clk <= _GEN_83
    mem_2.MPORT_1.clk <= _GEN_83
    mem_3.MPORT_1.clk <= _GEN_83
    mem_0.MPORT_1.data <= bits(_GEN_86, 3, 0)
    mem_1.MPORT_1.data <= bits(_GEN_87, 3, 0)
    mem_2.MPORT_1.data <= bits(_GEN_88, 3, 0)
    mem_3.MPORT_1.data <= bits(_GEN_89, 3, 0)
    mem_0.MPORT_1.mask <= _GEN_85
    mem_1.MPORT_1.mask <= _GEN_85
    mem_2.MPORT_1.mask <= _GEN_85
    mem_3.MPORT_1.mask <= _GEN_85
    mem_0.MPORT_2.addr <= _GEN_90
    mem_1.MPORT_2.addr <= _GEN_90
    mem_2.MPORT_2.addr <= _GEN_90
    mem_3.MPORT_2.addr <= _GEN_90
    mem_0.MPORT_2.en <= _GEN_92
    mem_1.MPORT_2.en <= _GEN_92
    mem_2.MPORT_2.en <= _GEN_92
    mem_3.MPORT_2.en <= _GEN_92
    mem_0.MPORT_2.clk <= _GEN_91
    mem_1.MPORT_2.clk <= _GEN_91
    mem_2.MPORT_2.clk <= _GEN_91
    mem_3.MPORT_2.clk <= _GEN_91
    mem_0.MPORT_2.data <= bits(_GEN_94, 3, 0)
    mem_1.MPORT_2.data <= bits(_GEN_95, 3, 0)
    mem_2.MPORT_2.data <= bits(_GEN_96, 3, 0)
    mem_3.MPORT_2.data <= bits(_GEN_97, 3, 0)
    mem_0.MPORT_2.mask <= _GEN_93
    mem_1.MPORT_2.mask <= _GEN_93
    mem_2.MPORT_2.mask <= _GEN_93
    mem_3.MPORT_2.mask <= _GEN_93
    mem_0.MPORT_3.addr <= _GEN_98
    mem_1.MPORT_3.addr <= _GEN_98
    mem_2.MPORT_3.addr <= _GEN_98
    mem_3.MPORT_3.addr <= _GEN_98
    mem_0.MPORT_3.en <= _GEN_100
    mem_1.MPORT_3.en <= _GEN_100
    mem_2.MPORT_3.en <= _GEN_100
    mem_3.MPORT_3.en <= _GEN_100
    mem_0.MPORT_3.clk <= _GEN_99
    mem_1.MPORT_3.clk <= _GEN_99
    mem_2.MPORT_3.clk <= _GEN_99
    mem_3.MPORT_3.clk <= _GEN_99
    mem_0.MPORT_3.data <= bits(_GEN_102, 3, 0)
    mem_1.MPORT_3.data <= bits(_GEN_103, 3, 0)
    mem_2.MPORT_3.data <= bits(_GEN_104, 3, 0)
    mem_3.MPORT_3.data <= bits(_GEN_105, 3, 0)
    mem_0.MPORT_3.mask <= _GEN_101
    mem_1.MPORT_3.mask <= _GEN_101
    mem_2.MPORT_3.mask <= _GEN_101
    mem_3.MPORT_3.mask <= _GEN_101
    arb_priority.clock <= clock
    arb_priority.reset <= reset
    arb_priority.io_in_0_valid <= queue0.io_deq_valid @[Task1.scala 36:12]
    arb_priority.io_in_0_bits <= queue0.io_deq_bits @[Task1.scala 36:12]
    arb_priority.io_in_1_valid <= queue1.io_deq_valid @[Task1.scala 37:12]
    arb_priority.io_in_1_bits <= queue1.io_deq_bits @[Task1.scala 37:12]
    arb_priority.io_in_2_valid <= queue2.io_deq_valid @[Task1.scala 38:12]
    arb_priority.io_in_2_bits <= queue2.io_deq_bits @[Task1.scala 38:12]
    arb_priority.io_in_3_valid <= queue3.io_deq_valid @[Task1.scala 39:12]
    arb_priority.io_in_3_bits <= queue3.io_deq_bits @[Task1.scala 39:12]
    arb_priority.io_out_ready <= io_out_ready @[Task1.scala 40:12]
    vector_0 <= _GEN_70
    vector_1 <= _GEN_71
    vector_2 <= _GEN_72
    vector_3 <= _GEN_73
    mask_0 <= _GEN_6
    mask_1 <= _GEN_7
    mask_2 <= _GEN_8
    mask_3 <= _GEN_9
