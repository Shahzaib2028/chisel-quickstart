package lab4

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._
import scala.util.Random

class Task2_test extends FreeSpec with ChiselScalatestTester{
    val instruction = Random.nextInt(512)
    val PC = 24.U
    "lab4" in {
        test(new immediate_lab4){c =>
            c.io.instr.poke(instruction.U)
            c.io.pc.poke(PC)
            c.clock.step(500)
            
    }
    }
	
	
}
