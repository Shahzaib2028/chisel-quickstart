package lab6
import chisel3._
import chisel3.util._

class shift_register(n: Int) extends Module{
	val io = IO(new Bundle{
		val in = Input(UInt(n.W))
		val out = Output(Bool())
	})

	val state = RegInit(0.U(n.W))
	val load = RegInit(0.U(n.W))

	io.out := 0.B

	when(load === 0.U){
		state := io.in
		load := load + 1.U
	}.otherwise{
		state := state >> 1
		io.out := state
	}

	/*val next_state = (state >> 1) | io.in  
	state := next_state*/

	

	
	

	
	
}
