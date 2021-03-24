package lab2
import chisel3 . _



class lab2_exe_1 extends Module {
	val io = IO ( new Bundle {
	val in_A = Input ( UInt (32. W ) )
	val in_B = Input ( UInt (32. W ) )
	val select = Input ( Bool () )
	val out = Output ( UInt () )
	})
	
	
	when (io.select === 0.U){
		io.out := io.in_A
	}.otherwise{
		io.out := io.in_B
	}
}
