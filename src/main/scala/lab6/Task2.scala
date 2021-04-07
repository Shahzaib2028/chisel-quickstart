package lab6
import chisel3._
import chisel3.util._

class counter1(val max : Int , val min : Int = 0) extends Module{
	val io   = IO(new Bundle{
		val out = Output(UInt(log2Ceil(max).W))
	})

	val counter = RegInit(min.U(log2Ceil(max).W))

	val count_buffer = Mux(counter(log2Ceil(max)-1) === 1.U , min.U , counter +1.U)  //taking MSB from counter register counter(log2Ceil(max)-1)

	counter := count_buffer
	io.out := counter
}
