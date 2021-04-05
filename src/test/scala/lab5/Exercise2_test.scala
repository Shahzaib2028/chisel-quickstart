package lab5

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._
import chisel3.util._

class Exercise2_test extends FreeSpec with ChiselScalatestTester{
	"lab5" in {
		test(new Mux2_to_1(15.U)) { c =>
			c.io.in1.poke(2.U)
			c.io.in2.poke(10.U)
			c.io.sel.poke(0.B)
			c.clock.step(10)
		}
	}

}
