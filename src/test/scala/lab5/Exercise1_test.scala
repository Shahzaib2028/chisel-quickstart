package lab5

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._
import chisel3.util._

class Exercise1_test extends FreeSpec with ChiselScalatestTester{
	"lab5" in {
		test(new ALU(32)) { c =>
			c.io.alu_oper.poke(2.U)
			c.io.arg_x.poke(10.U)
			c.io.arg_y.poke(10.U)
			c.clock.step(10)
		}
	}

}
