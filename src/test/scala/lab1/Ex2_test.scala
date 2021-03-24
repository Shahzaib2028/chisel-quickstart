package lab1

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Ex2_test extends FreeSpec with ChiselScalatestTester{
    "Test2" in {
        test(new Counter_2(6 , 10)){c =>
            c.clock.step(100)
            //c.io.in.poke(1.U)
            //c.io.result.expect(1.B)
    }
    }
	
	
}
