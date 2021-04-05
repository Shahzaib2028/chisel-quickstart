package lab5

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._
import chisel3.util._

class Task1_test extends FreeSpec with ChiselScalatestTester{
	"lab5" in {
		test(new adder(32.U)) { c =>
			c.io.in0.poke(2.U)
			c.io.in1.poke(10.U)
			c.clock.step(10)
		}
	}

}
