package lab3
import org.scalatest._
import chiseltest._
import chisel3._

class Task2_test extends FreeSpec with ChiselScalatestTester {
	"Lab 3 " in {
		test(new Immediate()) { c =>
			c.io.instr.poke(512.U)
			c.io.pc.poke(25.U)
			c.clock.step(200)
		}
	}

}
