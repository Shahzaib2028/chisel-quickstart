package lab1

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Ex1_test extends FreeSpec with ChiselScalatestTester{
    "Test1" in {
        test(new counter(4.U)){c =>
            c.clock.step(100)
            //c.io.in.poke(1.U)
            //c.io.result.expect(1.B)
    }
    }
	
	
}
