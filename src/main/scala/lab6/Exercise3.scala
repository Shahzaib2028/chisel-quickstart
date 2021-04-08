package lab6
import chisel3._
import chisel3.util._

class Exercise3( val din : Int) extends Module {
    val io = IO ( new Bundle {
    val reload = Output (Bool())
    })
    val counter1 = RegInit (din.U (4.W))
    val counter2 = RegInit (din.U (4.W))
    val done = counter1 === 0.U  && counter2 === 0.U
    val next = WireInit(0.U)
    counter1 := next
    counter2 := next
    io.reload:=0.B
    when (done){
	 io.reload := 1.B
    }.elsewhen(!done){
        next:= counter1 - 1.U
	next := counter2 - 1.U
         io.reload:=0.B
    }.elsewhen(counter1 === 0.U && counter2 === 0.U){
    	io.reload := 1.B
    }

    

}
