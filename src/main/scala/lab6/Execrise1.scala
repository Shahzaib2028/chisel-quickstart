package lab6
import chisel3._
import chisel3.util._

class shift_register(n: Int , val init: Int = 1 ) extends Module{
	val io = IO(new Bundle{
		val in = Input(Bool())
		val out = Output(UInt(4.W))
	})

	val state = RegInit(init.U(4.W))
	val register = Reg(Vec(n,UInt(4.W)))

	val next_state = (state << 1) | io.in  //0010 | 000
	state := next_state

	//io.out := state

	for (i <- 0 until n){
        	register(i) := state
		io.out := register(i)
   	 } 

	

	
	
}

