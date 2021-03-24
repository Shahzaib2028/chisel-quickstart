package lab2
import org.scalatest._
import chiseltest._
import chisel3._

class lab2_task1_test extends FreeSpec with ChiselScalatestTester {
	"Lab 2 Exercise 2 " in {
		test(new lab2_task1()) { c =>
			c.io.s0.poke(1.B)
			c.io.s1.poke(0.B)
			c.io.s2.poke(0.B)
			c.clock.step(1)
			c.io.out.expect(8.U)
		}
	}

}
