package lab2

import org.scalatest._
import chiseltest._
import chisel3._

class lab2_exe_3_test extends FreeSpec with ChiselScalatestTester {
	"Lab 2 Exercise 2 " in {
		test(new lab2_exe_3()) { c =>
			c.io.in0.poke(0.B)
			c.io.in1.poke(0.B)
			c.io.in2.poke(0.B)
			c.io.in3.poke(1.B)
			c.io.sel1.poke(1.U)
			c.io.sel2.poke(2.U)
			c.io.sel3.poke(1.U)
			c.clock.step(1)
			c.io.out0.expect(1.B)
			c.io.out1.expect(1.B)
		}
	}

}
