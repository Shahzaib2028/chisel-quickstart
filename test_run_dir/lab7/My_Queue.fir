;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit My_Queue : 
  module My_Queue : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip f1 : UInt<1>, flip f2 : UInt<1>, flip r1 : UInt<1>, flip r2 : UInt<1>, out : UInt<4>}
    
    reg state : UInt<2>, clock with : (reset => (reset, UInt<2>("h00"))) @[Task1.scala 18:28]
    node _T = eq(UInt<2>("h00"), state) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      node _T_1 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 22:36]
      node _T_2 = eq(io.f2, UInt<1>("h00")) @[Task1.scala 22:57]
      node _T_3 = and(_T_1, _T_2) @[Task1.scala 22:48]
      when _T_3 : @[Task1.scala 22:69]
        state <= UInt<2>("h00") @[Task1.scala 23:39]
        skip @[Task1.scala 22:69]
      else : @[Task1.scala 24:74]
        node _T_4 = eq(io.f1, UInt<1>("h01")) @[Task1.scala 24:42]
        node _T_5 = eq(io.f2, UInt<1>("h00")) @[Task1.scala 24:62]
        node _T_6 = and(_T_4, _T_5) @[Task1.scala 24:53]
        when _T_6 : @[Task1.scala 24:74]
          state <= UInt<2>("h01") @[Task1.scala 25:39]
          skip @[Task1.scala 24:74]
        else : @[Task1.scala 26:74]
          node _T_7 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 26:42]
          node _T_8 = eq(io.f2, UInt<1>("h01")) @[Task1.scala 26:63]
          node _T_9 = and(_T_7, _T_8) @[Task1.scala 26:54]
          when _T_9 : @[Task1.scala 26:74]
            state <= UInt<3>("h05") @[Task1.scala 27:39]
            skip @[Task1.scala 26:74]
          else : @[Task1.scala 28:73]
            node _T_10 = eq(io.f1, UInt<1>("h01")) @[Task1.scala 28:42]
            node _T_11 = eq(io.f2, UInt<1>("h01")) @[Task1.scala 28:62]
            node _T_12 = and(_T_10, _T_11) @[Task1.scala 28:53]
            when _T_12 : @[Task1.scala 28:73]
              state <= UInt<2>("h01") @[Task1.scala 29:39]
              skip @[Task1.scala 28:73]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_13 = eq(UInt<2>("h01"), state) @[Conditional.scala 37:30]
      when _T_13 : @[Conditional.scala 39:67]
        node _T_14 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 34:36]
        node _T_15 = eq(io.r1, UInt<1>("h00")) @[Task1.scala 34:57]
        node _T_16 = and(_T_14, _T_15) @[Task1.scala 34:48]
        when _T_16 : @[Task1.scala 34:69]
          state <= UInt<2>("h01") @[Task1.scala 35:39]
          skip @[Task1.scala 34:69]
        else : @[Task1.scala 36:53]
          node _T_17 = eq(io.f1, UInt<1>("h01")) @[Task1.scala 36:42]
          when _T_17 : @[Task1.scala 36:53]
            state <= UInt<2>("h02") @[Task1.scala 37:39]
            skip @[Task1.scala 36:53]
          else : @[Task1.scala 38:74]
            node _T_18 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 38:42]
            node _T_19 = eq(io.r1, UInt<1>("h01")) @[Task1.scala 38:63]
            node _T_20 = and(_T_18, _T_19) @[Task1.scala 38:54]
            when _T_20 : @[Task1.scala 38:74]
              state <= UInt<2>("h00") @[Task1.scala 39:39]
              skip @[Task1.scala 38:74]
        skip @[Conditional.scala 39:67]
      else : @[Conditional.scala 39:67]
        node _T_21 = eq(UInt<2>("h02"), state) @[Conditional.scala 37:30]
        when _T_21 : @[Conditional.scala 39:67]
          node _T_22 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 44:36]
          node _T_23 = eq(io.r1, UInt<1>("h00")) @[Task1.scala 44:57]
          node _T_24 = and(_T_22, _T_23) @[Task1.scala 44:48]
          when _T_24 : @[Task1.scala 44:69]
            state <= UInt<2>("h02") @[Task1.scala 45:39]
            skip @[Task1.scala 44:69]
          else : @[Task1.scala 46:53]
            node _T_25 = eq(io.f1, UInt<1>("h01")) @[Task1.scala 46:42]
            when _T_25 : @[Task1.scala 46:53]
              state <= UInt<2>("h03") @[Task1.scala 47:39]
              skip @[Task1.scala 46:53]
            else : @[Task1.scala 48:74]
              node _T_26 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 48:42]
              node _T_27 = eq(io.r1, UInt<1>("h01")) @[Task1.scala 48:63]
              node _T_28 = and(_T_26, _T_27) @[Task1.scala 48:54]
              when _T_28 : @[Task1.scala 48:74]
                state <= UInt<2>("h01") @[Task1.scala 49:39]
                skip @[Task1.scala 48:74]
          skip @[Conditional.scala 39:67]
        else : @[Conditional.scala 39:67]
          node _T_29 = eq(UInt<2>("h03"), state) @[Conditional.scala 37:30]
          when _T_29 : @[Conditional.scala 39:67]
            state <= UInt<2>("h00") @[Task1.scala 54:31]
            skip @[Conditional.scala 39:67]
          else : @[Conditional.scala 39:67]
            node _T_30 = eq(UInt<3>("h04"), state) @[Conditional.scala 37:30]
            when _T_30 : @[Conditional.scala 39:67]
              node _T_31 = eq(io.f2, UInt<1>("h01")) @[Task1.scala 58:36]
              when _T_31 : @[Task1.scala 58:47]
                state <= UInt<2>("h03") @[Task1.scala 59:39]
                skip @[Task1.scala 58:47]
              else : @[Task1.scala 60:75]
                node _T_32 = eq(io.f2, UInt<1>("h00")) @[Task1.scala 60:42]
                node _T_33 = eq(io.r2, UInt<1>("h00")) @[Task1.scala 60:63]
                node _T_34 = and(_T_32, _T_33) @[Task1.scala 60:54]
                when _T_34 : @[Task1.scala 60:75]
                  state <= UInt<3>("h04") @[Task1.scala 61:39]
                  skip @[Task1.scala 60:75]
                else : @[Task1.scala 62:74]
                  node _T_35 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 62:42]
                  node _T_36 = eq(io.r1, UInt<1>("h01")) @[Task1.scala 62:63]
                  node _T_37 = and(_T_35, _T_36) @[Task1.scala 62:54]
                  when _T_37 : @[Task1.scala 62:74]
                    state <= UInt<3>("h05") @[Task1.scala 63:39]
                    skip @[Task1.scala 62:74]
              skip @[Conditional.scala 39:67]
            else : @[Conditional.scala 39:67]
              node _T_38 = eq(UInt<3>("h05"), state) @[Conditional.scala 37:30]
              when _T_38 : @[Conditional.scala 39:67]
                node _T_39 = eq(io.f2, UInt<1>("h01")) @[Task1.scala 68:36]
                when _T_39 : @[Task1.scala 68:47]
                  state <= UInt<3>("h04") @[Task1.scala 69:39]
                  skip @[Task1.scala 68:47]
                else : @[Task1.scala 70:75]
                  node _T_40 = eq(io.f2, UInt<1>("h00")) @[Task1.scala 70:42]
                  node _T_41 = eq(io.r2, UInt<1>("h00")) @[Task1.scala 70:63]
                  node _T_42 = and(_T_40, _T_41) @[Task1.scala 70:54]
                  when _T_42 : @[Task1.scala 70:75]
                    state <= UInt<3>("h05") @[Task1.scala 71:39]
                    skip @[Task1.scala 70:75]
                  else : @[Task1.scala 72:74]
                    node _T_43 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 72:42]
                    node _T_44 = eq(io.r1, UInt<1>("h01")) @[Task1.scala 72:63]
                    node _T_45 = and(_T_43, _T_44) @[Task1.scala 72:54]
                    when _T_45 : @[Task1.scala 72:74]
                      state <= UInt<2>("h00") @[Task1.scala 73:39]
                      skip @[Task1.scala 72:74]
                skip @[Conditional.scala 39:67]
    node _T_46 = eq(state, UInt<2>("h02")) @[Task1.scala 86:22]
    node _T_47 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 86:39]
    node _T_48 = eq(io.r1, UInt<1>("h00")) @[Task1.scala 86:60]
    node _T_49 = and(_T_47, _T_48) @[Task1.scala 86:51]
    node _T_50 = and(_T_46, _T_49) @[Task1.scala 86:29]
    node _T_51 = eq(state, UInt<2>("h02")) @[Task1.scala 86:84]
    node _T_52 = eq(io.f1, UInt<1>("h01")) @[Task1.scala 86:101]
    node _T_53 = and(_T_51, _T_52) @[Task1.scala 86:91]
    node _T_54 = or(_T_50, _T_53) @[Task1.scala 86:74]
    node _T_55 = eq(state, UInt<2>("h02")) @[Task1.scala 86:124]
    node _T_56 = eq(io.f1, UInt<1>("h00")) @[Task1.scala 86:141]
    node _T_57 = and(_T_55, _T_56) @[Task1.scala 86:131]
    node _T_58 = eq(io.r1, UInt<1>("h01")) @[Task1.scala 86:164]
    node _T_59 = and(_T_57, _T_58) @[Task1.scala 86:154]
    node _T_60 = or(_T_54, _T_59) @[Task1.scala 86:114]
    when _T_60 : @[Task1.scala 86:177]
      io.out <= UInt<2>("h03") @[Task1.scala 87:23]
      skip @[Task1.scala 86:177]
    else : @[Task1.scala 88:183]
      node _T_61 = eq(state, UInt<3>("h04")) @[Task1.scala 88:27]
      node _T_62 = eq(io.f2, UInt<1>("h01")) @[Task1.scala 88:44]
      node _T_63 = and(_T_61, _T_62) @[Task1.scala 88:34]
      node _T_64 = eq(state, UInt<3>("h04")) @[Task1.scala 88:67]
      node _T_65 = eq(io.f2, UInt<1>("h00")) @[Task1.scala 88:84]
      node _T_66 = eq(io.r2, UInt<1>("h00")) @[Task1.scala 88:105]
      node _T_67 = and(_T_65, _T_66) @[Task1.scala 88:96]
      node _T_68 = and(_T_64, _T_67) @[Task1.scala 88:74]
      node _T_69 = or(_T_63, _T_68) @[Task1.scala 88:57]
      node _T_70 = eq(state, UInt<3>("h04")) @[Task1.scala 88:129]
      node _T_71 = eq(io.f2, UInt<1>("h00")) @[Task1.scala 88:146]
      node _T_72 = and(_T_70, _T_71) @[Task1.scala 88:136]
      node _T_73 = eq(io.r2, UInt<1>("h01")) @[Task1.scala 88:170]
      node _T_74 = and(_T_72, _T_73) @[Task1.scala 88:160]
      node _T_75 = or(_T_69, _T_74) @[Task1.scala 88:119]
      when _T_75 : @[Task1.scala 88:183]
        io.out <= UInt<3>("h07") @[Task1.scala 89:23]
        skip @[Task1.scala 88:183]
      else : @[Task1.scala 90:20]
        io.out <= UInt<1>("h00") @[Task1.scala 91:24]
        skip @[Task1.scala 90:20]
    
