package lab8

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Task1_test extends FreeSpec with ChiselScalatestTester{
    "lab8" in {
        test(new Task1()){c =>
            c.io.in(1).bits.poke(4.U)
            c.io.in(2).bits.poke(5.U)
            c.io.in(3).bits.poke(2.U)
            c.io.in(0).bits.poke(6.U)
            //c.io.mask(2).poke(true.B)
            c.io.Addr.poke(5.U)
            //c.io.RAddr.poke(5.U)
        
            c.io.in(0).valid.poke(false.B)
            c.io.in(1).valid.poke(false.B)
            c.io.in(2).valid.poke(true.B)
            c.io.in(3).valid.poke(true.B)
            c.clock.step(50)
    
            
    }
    }
	
}
