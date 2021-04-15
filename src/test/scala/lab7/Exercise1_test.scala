package lab7

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Exercise1_test extends FreeSpec with ChiselScalatestTester{
    "lab7" in {
        test(new Exercise1_Lab7(2)){c =>
            c.io.in(0).bits.poke(1.U)
            c.io.in(1).bits.poke(2.U)
            c.io.in(0).valid.poke(false.B)
            c.io.in(1).valid.poke(true.B)
            c.clock.step(200)
            //c.io.out.expect(0.B)
            
    }
    }
	
}
