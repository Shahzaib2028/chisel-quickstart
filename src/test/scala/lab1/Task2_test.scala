package lab1

import org.scalatest._
import chiseltest._
import chisel3._

class Task2_test extends FreeSpec with ChiselScalatestTester {
    "TASK 2 TEST " in {
        test(new counter_up_down(4)){ c =>
            c.clock.step(100)
            // c.io.out.expect(1.B)
        }
    }
}
