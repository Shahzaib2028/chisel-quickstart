package lab6

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.util._

class Exercise1_test extends FreeSpec with ChiselScalatestTester{
	"lab6" in {
		test(new shift_register(32)) { c =>
			c.io.in.poke(0.B)
			c.clock.step(100)
		}
	}

}
