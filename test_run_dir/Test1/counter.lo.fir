circuit counter :
  module counter :
    input clock : Clock
    input reset : UInt<1>
    output io_result : UInt<1>

    node _max_T = dshl(UInt<1>("h1"), UInt<3>("h4")) @[Exercise_1.scala 10:24]
    node _max_T_1 = sub(_max_T, UInt<1>("h1")) @[Exercise_1.scala 10:40]
    node max = tail(_max_T_1, 1) @[Exercise_1.scala 10:40]
    reg count : SInt<16>, clock with :
      reset => (UInt<1>("h0"), count) @[Exercise_1.scala 11:29]
    node _T = asSInt(max) @[Exercise_1.scala 12:28]
    node _T_1 = eq(count, _T) @[Exercise_1.scala 12:20]
    node _count_T = add(count, asSInt(UInt<2>("h1"))) @[Exercise_1.scala 15:32]
    node _count_T_1 = tail(_count_T, 1) @[Exercise_1.scala 15:32]
    node _count_T_2 = asSInt(_count_T_1) @[Exercise_1.scala 15:32]
    node _GEN_0 = mux(_T_1, asSInt(UInt<1>("h0")), _count_T_2) @[Exercise_1.scala 12:36 Exercise_1.scala 13:23 Exercise_1.scala 15:23]
    node _io_result_T = dshr(count, UInt<4>("hf")) @[Exercise_1.scala 17:27]
    node _io_result_T_1 = bits(_io_result_T, 0, 0) @[Exercise_1.scala 17:27]
    io_result <= _io_result_T_1 @[Exercise_1.scala 17:19]
    count <= mux(reset, asSInt(UInt<16>("h0")), _GEN_0) @[Exercise_1.scala 11:29 Exercise_1.scala 11:29]
