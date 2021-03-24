package lab1

import org.scalatest._
import chiseltest._
import chisel3._

class ex2Tests extends FreeSpec with ChiselScalatestTester {

  "Exercise 2" in {
    test(new counter_3(5.U)) { c =>
      c.clock.step(100)
      c.io.result.expect(0.B)
    //   c.io.oo.expect(1.B)
    //   c.io.aa.expect(15.S)
    }
  }
}
