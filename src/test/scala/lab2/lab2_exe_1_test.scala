package lab2
import org.scalatest._
import chiseltest._
import chisel3._



class lab2_exe_1_test extends FreeSpec with ChiselScalatestTester {
	"Lab 2 Exercise 2 " in {
		test(new lab2_exe_1()) { c =>
			c.io.in_A.poke(10.U)
			c.io.in_B.poke(20.U)
			c.io.select.poke(1.B)
			c.clock.step(1)
			c.io.out.expect(20.U)
		}
	}

}
