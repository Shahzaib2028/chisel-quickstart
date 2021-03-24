package lab2
import chisel3 . _
import chisel3 . util . _

//object lab2_exe_3 extends App{

class lab2_exe_3 extends Module {
	val io = IO ( new Bundle {
	val in0 = Input (Bool ())
	val in1 = Input (Bool ())
	val in2 = Input (Bool ())
	val in3 = Input (Bool ())
	val sel1 = Input (UInt(2.W))
	val sel2 = Input (UInt(2.W))
	val sel3 = Input (UInt(2.W))
	val out0 = Output (Bool ())
	val out1 = Output (Bool ())
	})

	// out0 = in3 + in1
	// out1 = in3 + in2

	
	io.out0 := Mux1H (io.sel1 , Seq (io.in1,io.in3 ) ) | Mux1H (io.sel2 , Seq (io.in1,io.in3 ) ) 
	io.out1 := Mux1H (io.sel2 , Seq (io.in2,io.in3 ) ) | Mux1H (io.sel3 , Seq (io.in2,io.in3 ) ) 

	//io.out0 := io.in3 | io.in1
	//io.out1 := io.in3 | io.in2
//}
}
