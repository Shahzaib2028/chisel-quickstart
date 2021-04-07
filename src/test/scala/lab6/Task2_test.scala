package lab6

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.util._

class Task2_test extends FreeSpec with ChiselScalatestTester{
	"lab6" in {
		test(new counter1(10)) { c =>
			c.clock.step(100)
		}
	}

}
