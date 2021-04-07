package lab6
import chisel3._
import chisel3.util._

class Queue_exe extends Module {
    val io = IO ( new Bundle {
    val in = Flipped ( Decoupled ( UInt (8. W ) ) ) // valid = Input , ready =Output , bits = Input
    val out = Decoupled ( UInt (8. W ) )
    })

    val queue1 = Queue ( io.in , 5)
    val queue2 =Queue (queue1,5)  // 5 - element queue

io.out <> queue2
}
