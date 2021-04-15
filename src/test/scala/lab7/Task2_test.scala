package lab7

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._

class Task2_test extends FreeSpec with ChiselScalatestTester{
    "lab7" in {
        test(new Task2_lab7){c =>
            c.io.start.poke(true.B) //1010010011001
            c.io.in.poke(1.U)
            c.clock.step(1)
            c.io.start.poke(true.B)
            c.io.in.poke(0.U)
            c.clock.step(1)
            c.io.start.poke(true.B)
            c.io.in.poke(1.U)
            c.clock.step(1)
            c.io.start.poke(true.B)
            c.io.in.poke(0.U)
            c.clock.step(1)
            c.io.start.poke(false.B)
            c.io.in.poke(0.U)
            c.clock.step(1)
            c.io.start.poke(true.B)
            c.io.in.poke(1.U)
            c.clock.step(2)
            //c.io.out.expect(3.U)
            
    }
    }
	
}