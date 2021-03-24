package lab1

import chisel3._
import chisel3.util._

class counter_up_down(n:Int) extends Module {
    val io = IO(new Bundle{
        val data_in = Input(UInt(n.W))
        val reload = Input(Bool())
        val out = Output(Bool())
        // val counter = Output(UInt(n.W))
    })

    val counter = RegInit(0.U(n.W))
    val max_count = RegInit(6.U(n.W))

    val flag = RegInit(0.B)

   	when(flag === 0.B && counter =/= max_count){
		counter := counter + 1.U
	}.elsewhen(counter === max_count){
		flag := true.B
	}.otherwise{
		DontCare
	}

	when(flag === 1.B){
		counter := counter - 1.U
	}.otherwise{
		DontCare
	}

	when(counter === 0.U){
		flag := false.B
	}

	io.out := Mux( counter === 0.U || counter === max_count, 1.B, 0.B)


    

	



}

