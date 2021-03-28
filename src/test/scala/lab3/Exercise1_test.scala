package lab3
import org.scalatest._
import chiseltest._
import chisel3._

class Exercise1_test extends FreeSpec with ChiselScalatestTester {
	"Lab 3 " in {
		test(new encoder2to4()) { c =>
			c.io.in.poke("b0010".U)
			c.clock.step(3)
			c.io.in.poke("b0000".U)
			c.clock.step(3)
			c.io.in.poke("b0100".U)
			c.clock.step(50)
		}
	}

}
