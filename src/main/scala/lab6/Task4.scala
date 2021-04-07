package lab6
import chisel3._
import chisel3.util._

class up_down_counter(val max : Int = 10) extends Module{
	val io = IO(new Bundle{
		val out = Output(UInt(log2Ceil(max).W))
		val up_down = Input(Bool())
	})

	io.out := 0.U
	val counter_increase = RegInit(0.U(log2Ceil(max).W))
	val counter_decrease = RegInit(max.U(log2Ceil(max).W))

	when(io.up_down === 1.B){
		val counter_buffer = Mux(counter_increase === max.U, 0.U , counter_increase + 1.U)
		counter_increase := counter_buffer
		io.out := counter_increase
	}.elsewhen(io.up_down === 0.B){
		val counter_buffer = Mux(counter_decrease === 0.U, 0.U , counter_decrease -1.U)
		counter_decrease := counter_buffer
		io.out := counter_decrease
	}

	


}
