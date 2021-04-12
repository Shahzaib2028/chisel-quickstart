package lab8

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._
import chiseltest.experimental.TestOptionBuilder._
import chiseltest.internal.VerilatorBackendAnnotation

class Exercise2_test extends FreeSpec with ChiselScalatestTester{
    "lab8" in {
        test(new Exercise2).withAnnotations(Seq(VerilatorBackendAnnotation)){c =>
            c.io.enable.poke(true.B)
            c.io.write.poke(true.B)
            c.io.addr.poke(5.U)
            c.io.mask(0).poke(true.B)
            c.io.data_in(0).poke(10.U)
            c.clock.step(10)

            /*c.io.enable.poke(true.B)
            c.io.write.poke(false.B)
            c.io.addr.poke(5.U)
            c.clock.step(10)

            c.io.enable.poke(true.B)
            c.io.write.poke(true.B)
            c.io.addr.poke(10.U)
            c.io.mask(0).poke(true.B)
            c.io.data_in(0).poke(40.U)
            c.clock.step(10)*/
            
    }
    }
	
}