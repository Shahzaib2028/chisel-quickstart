;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit counter_3 : 
  module counter_3 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {result : UInt<1>}
    
    node _max_T = dshl(UInt<1>("h01"), UInt<3>("h05")) @[Execrise_3.scala 13:21]
    node _max_T_1 = sub(_max_T, UInt<1>("h01")) @[Execrise_3.scala 13:38]
    node max = tail(_max_T_1, 1) @[Execrise_3.scala 13:38]
    reg count : SInt<5>, clock with : (reset => (reset, asSInt(UInt<5>("h00")))) @[Execrise_3.scala 14:25]
    node _T = asSInt(max) @[Execrise_3.scala 15:26]
    node _T_1 = eq(count, _T) @[Execrise_3.scala 15:18]
    when _T_1 : @[Execrise_3.scala 15:35]
      count <= asSInt(UInt<1>("h00")) @[Execrise_3.scala 16:15]
      skip @[Execrise_3.scala 15:35]
    else : @[Execrise_3.scala 17:37]
      node _T_2 = dshr(count, UInt<4>("h0f")) @[Execrise_3.scala 17:22]
      node _T_3 = bits(_T_2, 0, 0) @[Execrise_3.scala 17:22]
      node _T_4 = eq(_T_3, UInt<1>("h01")) @[Execrise_3.scala 17:29]
      when _T_4 : @[Execrise_3.scala 17:37]
        count <= asSInt(UInt<1>("h00")) @[Execrise_3.scala 18:15]
        skip @[Execrise_3.scala 17:37]
      else : @[Execrise_3.scala 19:17]
        node _count_T = add(count, asSInt(UInt<2>("h01"))) @[Execrise_3.scala 20:24]
        node _count_T_1 = tail(_count_T, 1) @[Execrise_3.scala 20:24]
        node _count_T_2 = asSInt(_count_T_1) @[Execrise_3.scala 20:24]
        count <= _count_T_2 @[Execrise_3.scala 20:15]
        skip @[Execrise_3.scala 19:17]
    node _io_result_T = dshr(count, UInt<4>("h0f")) @[Execrise_3.scala 22:25]
    node _io_result_T_1 = bits(_io_result_T, 0, 0) @[Execrise_3.scala 22:25]
    io.result <= _io_result_T_1 @[Execrise_3.scala 22:17]
    
