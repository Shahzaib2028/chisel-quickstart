package lab3

import org.scalatest._
import chiseltest._
import chisel3._

class Task3_test extends FreeSpec with ChiselScalatestTester {

  "Lab_3" in {
    test(new decoder_with_valid_bits()) { c =>
        c.io.in.poke("b01".U)
        c.clock.step(200)
    }
  }
}
