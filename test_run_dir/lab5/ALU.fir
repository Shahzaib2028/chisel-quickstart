;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit ALU : 
  module ALU : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip alu_oper : UInt<32>, flip arg_x : UInt<32>, flip arg_y : UInt<32>, alu_out : UInt<32>}
    
    node _T = eq(io.alu_oper, UInt<1>("h00")) @[Exercise1.scala 12:26]
    when _T : @[Exercise1.scala 12:40]
      node _io_alu_out_T = and(io.arg_x, io.arg_y) @[Exercise1.scala 13:40]
      io.alu_out <= _io_alu_out_T @[Exercise1.scala 13:28]
      skip @[Exercise1.scala 12:40]
    else : @[Exercise1.scala 14:46]
      node _T_1 = eq(io.alu_oper, UInt<1>("h01")) @[Exercise1.scala 14:32]
      when _T_1 : @[Exercise1.scala 14:46]
        node _io_alu_out_T_1 = or(io.arg_x, io.arg_y) @[Exercise1.scala 15:40]
        io.alu_out <= _io_alu_out_T_1 @[Exercise1.scala 15:28]
        skip @[Exercise1.scala 14:46]
      else : @[Exercise1.scala 16:46]
        node _T_2 = eq(io.alu_oper, UInt<2>("h02")) @[Exercise1.scala 16:32]
        when _T_2 : @[Exercise1.scala 16:46]
          node _io_alu_out_T_2 = add(io.arg_x, io.arg_y) @[Exercise1.scala 17:40]
          node _io_alu_out_T_3 = tail(_io_alu_out_T_2, 1) @[Exercise1.scala 17:40]
          io.alu_out <= _io_alu_out_T_3 @[Exercise1.scala 17:28]
          skip @[Exercise1.scala 16:46]
        else : @[Exercise1.scala 18:46]
          node _T_3 = eq(io.alu_oper, UInt<3>("h06")) @[Exercise1.scala 18:32]
          when _T_3 : @[Exercise1.scala 18:46]
            node _io_alu_out_T_4 = sub(io.arg_x, io.arg_y) @[Exercise1.scala 19:40]
            node _io_alu_out_T_5 = tail(_io_alu_out_T_4, 1) @[Exercise1.scala 19:40]
            io.alu_out <= _io_alu_out_T_5 @[Exercise1.scala 19:28]
            skip @[Exercise1.scala 18:46]
          else : @[Exercise1.scala 20:46]
            node _T_4 = eq(io.alu_oper, UInt<2>("h03")) @[Exercise1.scala 20:32]
            when _T_4 : @[Exercise1.scala 20:46]
              node _io_alu_out_T_6 = xor(io.arg_x, io.arg_y) @[Exercise1.scala 21:40]
              io.alu_out <= _io_alu_out_T_6 @[Exercise1.scala 21:28]
              skip @[Exercise1.scala 20:46]
            else : @[Exercise1.scala 22:46]
              node _T_5 = eq(io.alu_oper, UInt<3>("h04")) @[Exercise1.scala 22:32]
              when _T_5 : @[Exercise1.scala 22:46]
                node _io_alu_out_T_7 = bits(io.arg_y, 4, 0) @[Exercise1.scala 23:51]
                node _io_alu_out_T_8 = dshl(io.arg_x, _io_alu_out_T_7) @[Exercise1.scala 23:40]
                io.alu_out <= _io_alu_out_T_8 @[Exercise1.scala 23:28]
                skip @[Exercise1.scala 22:46]
              else : @[Exercise1.scala 24:46]
                node _T_6 = eq(io.alu_oper, UInt<3>("h05")) @[Exercise1.scala 24:32]
                when _T_6 : @[Exercise1.scala 24:46]
                  node _io_alu_out_T_9 = bits(io.arg_y, 4, 0) @[Exercise1.scala 25:51]
                  node _io_alu_out_T_10 = dshr(io.arg_x, _io_alu_out_T_9) @[Exercise1.scala 25:40]
                  io.alu_out <= _io_alu_out_T_10 @[Exercise1.scala 25:28]
                  skip @[Exercise1.scala 24:46]
                else : @[Exercise1.scala 26:46]
                  node _T_7 = eq(io.alu_oper, UInt<3>("h07")) @[Exercise1.scala 26:32]
                  when _T_7 : @[Exercise1.scala 26:46]
                    node _io_alu_out_T_11 = asSInt(io.arg_x) @[Exercise1.scala 27:41]
                    node _io_alu_out_T_12 = bits(io.arg_y, 4, 0) @[Exercise1.scala 27:59]
                    node _io_alu_out_T_13 = dshr(_io_alu_out_T_11, _io_alu_out_T_12) @[Exercise1.scala 27:48]
                    node _io_alu_out_T_14 = asUInt(_io_alu_out_T_13) @[Exercise1.scala 27:73]
                    io.alu_out <= _io_alu_out_T_14 @[Exercise1.scala 27:28]
                    skip @[Exercise1.scala 26:46]
                  else : @[Exercise1.scala 28:46]
                    node _T_8 = eq(io.alu_oper, UInt<4>("h08")) @[Exercise1.scala 28:32]
                    when _T_8 : @[Exercise1.scala 28:46]
                      node _io_alu_out_T_15 = asSInt(io.arg_x) @[Exercise1.scala 29:40]
                      node _io_alu_out_T_16 = asSInt(io.arg_y) @[Exercise1.scala 29:58]
                      node _io_alu_out_T_17 = lt(_io_alu_out_T_15, _io_alu_out_T_16) @[Exercise1.scala 29:47]
                      io.alu_out <= _io_alu_out_T_17 @[Exercise1.scala 29:28]
                      skip @[Exercise1.scala 28:46]
                    else : @[Exercise1.scala 30:46]
                      node _T_9 = eq(io.alu_oper, UInt<4>("h09")) @[Exercise1.scala 30:32]
                      when _T_9 : @[Exercise1.scala 30:46]
                        node _io_alu_out_T_18 = lt(io.arg_x, io.arg_y) @[Exercise1.scala 31:40]
                        io.alu_out <= _io_alu_out_T_18 @[Exercise1.scala 31:28]
                        skip @[Exercise1.scala 30:46]
                      else : @[Exercise1.scala 32:20]
                        io.alu_out <= UInt<1>("h00") @[Exercise1.scala 33:28]
                        skip @[Exercise1.scala 32:20]
    
