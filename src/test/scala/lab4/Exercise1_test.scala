package lab4

import chisel3._
import chisel3.tester._
import org.scalatest.FreeSpec
import chisel3.experimental.BundleLiterals._
//import chisel3.iotesters.{Driver , PeekPokeTester}
import scala.util.Random
import ALUOP._
    


class Exercise1_test extends FreeSpec with ChiselScalatestTester{

val array_op = Array ( ALU_ADD , ALU_SUB , ALU_AND , ALU_OR , ALU_XOR , ALU_SLL
 , ALU_SRL , ALU_SRA , ALU_COPY_A , ALU_COPY_B , ALU_XXX )
    //for ( i<- 0 until 100) {
        val src_a = Random.nextLong()&0xFFFFFFFFL
        val src_b = Random.nextLong()&0xFFFFFFFFL
        val opr = Random.nextInt(10)
        val aluop = array_op ( opr )
    //}

   


    "lab4" in {
        test(new Exercise1){c =>
            c.io.in_A.poke(src_a.U)
            c.io.in_B.poke(src_b.U)
            c.io.alu_Op.poke(aluop)
            c.clock.step(500)
    }
    }
	
	
}
