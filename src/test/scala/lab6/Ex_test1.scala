package lab6

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Ex_test1 extends FreeSpec with ChiselScalatestTester{
    "lab6" in {
        test(new Exercise1_Lab6(4)){c =>
            c.io.in.poke(13.U)
            c.clock.step(5)
            
    }
    }
	
}
