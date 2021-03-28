package lab3
import org.scalatest._
import chiseltest._
import chisel3._

class Exercise2_test extends FreeSpec with ChiselScalatestTester {
	"Lab 3 " in {
		test(new alu()) { c =>
			c.io.a.poke(16.S)
			c.io.b.poke(15.S)
			c.io.ALUcont.poke("b01000".U)
			c.clock.step(50)
		}
	}

}
