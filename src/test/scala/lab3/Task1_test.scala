package lab3
import org.scalatest._
import chiseltest._
import chisel3._

class Task1_test extends FreeSpec with ChiselScalatestTester {
	"Lab 3 " in {
		test(new Branch_Control()) { c =>
			c.io.func3.poke("b100".U)
			c.io.branch.poke(1.B)
			c.io.arg_x.poke(15.U)
			c.io.arg_y.poke(14.U)
			c.clock.step(50)
		}
	}

}
