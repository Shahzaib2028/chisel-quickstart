package lab6
import chisel3._
import chisel3.util._

class Queue_exe extends Module {
    val io = IO ( new Bundle {
    val in = Flipped (Decoupled(UInt(8.W)))
    val out = Decoupled (UInt(8.W))
    })

    io.out.bits := 0.U
    io.out.valid := false.B

    val queue1 = Queue ( io.in, 5)
    val queue2 =Queue (queue1 , 5)
   
    queue1.nodeq()
    queue2.nodeq()

    when(queue2.valid && io.out.ready){
	io.out.enq(queue2.deq())
    }
}
