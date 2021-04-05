package lab5

import chisel3._
import chisel3 . util._
import org.scalatest._
import chiseltest._

class Task2_test extends FreeSpec with ChiselScalatestTester {

  "Lab 5 Task 2" in {
    test(new task2(UInt(16.W), UInt(16.W))) { c =>
      c.io.in.addr.poke(10.U)
      c.io.in.data.poke(40.U)
      c.io.out.addr.expect(10.U)
      c.io.out.data.expect(40.U)
    }
  }
}
