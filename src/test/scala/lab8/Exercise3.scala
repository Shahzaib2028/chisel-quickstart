package lab8

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Exercise3_test extends FreeSpec with ChiselScalatestTester{
    "lab8" in {
        test(new Exercise3()){c =>
            c.io.addr.poke(10.U)
            c.clock.step(10)

            /*c.io.write.poke(true.B)
            c.io.Waddr.poke(5.U)
            c.io.Raddr.poke(5.U)
            c.io.data_in(1).poke(10.U)
            c.clock.step(100)*/
            
    }
    }
	
}