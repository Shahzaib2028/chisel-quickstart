package lab4

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._
import scala.util.Random



class Task1_test extends FreeSpec with ChiselScalatestTester{
    val a = Random.nextInt(10)
    val b = Random.nextInt(10)
    val function3= Random.nextInt(8)
    "lab4" in {
        test(new Branch_Control_lab4){c =>
            c.io.arg_x.poke(a.U)
            c.io.arg_y.poke(b.U)
            c.io.branch.poke(1.B)
            c.io.func3.poke(function3.U)
            c.clock.step(500)
            
    }
    }
	
	
}
