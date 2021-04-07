package lab6

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Exercise4_test extends FreeSpec with ChiselScalatestTester{
    "lab6" in {
        test(new Queue_exe){c =>
            c.io.in.valid.poke(1.B)
	    c.io.in.bits.poke(12.U)
            c.clock.step(5)
            
    }
    }
	
}
