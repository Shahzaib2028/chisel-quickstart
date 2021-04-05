package lab5

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Exercise3_test extends FreeSpec with ChiselScalatestTester{
    "lab5" in {
        test(new Exercise3(3,UInt(4.W))(_+_)){c =>
            c.io.in(0).poke(8.U)
            c.io.in(1).poke(2.U)
	    c.io.in(2).poke(5.U)
            c.clock.step(500)
            
    }
    }
	
	
}
