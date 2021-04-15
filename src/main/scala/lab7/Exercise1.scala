package lab7
import chisel3._
import chisel3.util._

class Arbiter_2 (val n: Int) extends Bundle {
    val in = Flipped(Vec(n,Decoupled(UInt(n. W )) ) )
    val out = Decoupled(UInt(n.W))
}

class Exercise1_Lab7 (val n : Int) extends Module {
    val io = IO(new Arbiter_2(n))
    io.out.bits:=0.U
    io.out.valid:=false.B

    val queue1 = Queue(io.in(0),n)
    val queue2 = Queue(io.in(1),n)
    val arb_priority = Module (new Arbiter(UInt(),n))
    queue1 <> arb_priority.io.in(0) 
    queue2 <> arb_priority.io.in(1)  
    io.out <> arb_priority.io.out
}
