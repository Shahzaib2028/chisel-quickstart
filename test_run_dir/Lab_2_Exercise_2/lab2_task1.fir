;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit lab2_task1 : 
  module lab2_task1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip s0 : UInt<1>, flip s1 : UInt<1>, flip s2 : UInt<1>, out : UInt<32>}
    
    node concat_hi = cat(io.s2, io.s1) @[Cat.scala 30:58]
    node concat = cat(concat_hi, io.s0) @[Cat.scala 30:58]
    node _io_out_T = eq(concat, UInt<1>("h00")) @[lab2_task1.scala 17:17]
    node _io_out_T_1 = eq(concat, UInt<1>("h01")) @[lab2_task1.scala 18:17]
    node _io_out_T_2 = eq(concat, UInt<2>("h02")) @[lab2_task1.scala 19:17]
    node _io_out_T_3 = eq(concat, UInt<2>("h03")) @[lab2_task1.scala 20:17]
    node _io_out_T_4 = mux(_io_out_T_3, UInt<5>("h018"), UInt<6>("h020")) @[Mux.scala 98:16]
    node _io_out_T_5 = mux(_io_out_T_2, UInt<5>("h010"), _io_out_T_4) @[Mux.scala 98:16]
    node _io_out_T_6 = mux(_io_out_T_1, UInt<4>("h08"), _io_out_T_5) @[Mux.scala 98:16]
    node _io_out_T_7 = mux(_io_out_T, UInt<1>("h00"), _io_out_T_6) @[Mux.scala 98:16]
    io.out <= _io_out_T_7 @[lab2_task1.scala 16:16]
    
