package lab6
import chisel3._
import chisel3.util._

class Exercise3( val din : Int ) extends Module {
    val io = IO ( new Bundle {
    val reload = Output (Bool())
    })
    val counter = RegInit (din. U (4.W ) )
    val done = counter === 0. U
    val next = WireInit(0.U)
    counter:=next
    io.reload:=0.B
    when (done){
	 io.reload := 1.B
    }.elsewhen(!done){
        next:=counter - 1.U
         io.reload:=0.B
    }.elsewhen(counter === 0.U){
    	io.reload := 1.B
    }

    

}
