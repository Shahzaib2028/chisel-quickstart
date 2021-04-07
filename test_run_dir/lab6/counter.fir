;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit counter : 
  module counter : 
    input clock : Clock
    input reset : UInt<1>
    output io : {out : UInt<2>}
    
    reg counter : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[Exercise2.scala 10:30]
    node _count_buffer_T = add(counter, UInt<1>("h01")) @[Exercise2.scala 15:72]
    node _count_buffer_T_1 = tail(_count_buffer_T, 1) @[Exercise2.scala 15:72]
    node _count_buffer_T_2 = eq(counter, UInt<3>("h04")) @[Exercise2.scala 15:92]
    node _count_buffer_T_3 = add(counter, UInt<1>("h01")) @[Exercise2.scala 15:119]
    node _count_buffer_T_4 = tail(_count_buffer_T_3, 1) @[Exercise2.scala 15:119]
    node _count_buffer_T_5 = mux(_count_buffer_T_2, UInt<1>("h00"), _count_buffer_T_4) @[Exercise2.scala 15:83]
    node count_buffer = mux(UInt<1>("h01"), _count_buffer_T_1, _count_buffer_T_5) @[Exercise2.scala 15:31]
    counter <= count_buffer @[Exercise2.scala 17:17]
    io.out <= counter @[Exercise2.scala 18:16]
    
