package lab3
import org.scalatest._
import chiseltest._
import chisel3._

class Example1_test extends FreeSpec with ChiselScalatestTester {
	"Lab 3 " in {
		test(new Encoder2to4()) { c =>
			c.io.in.poke("b0010".U)
			c.clock.step(50)
		}
	}

}
