package lab6

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Exercise3_test extends FreeSpec with ChiselScalatestTester{
    "lab6" in {
        test(new Exercise3(10)){c =>
            c.clock.step(500)
            
            
    }
    }
	
}
