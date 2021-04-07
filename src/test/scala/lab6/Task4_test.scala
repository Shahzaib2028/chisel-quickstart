package lab6

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.util._

class Task4_test extends FreeSpec with ChiselScalatestTester{
	"lab6" in {
		test(new up_down_counter()) { c =>
			c.io.up_down.poke(1.B)
			c.clock.step(100)
		}
	}

}
