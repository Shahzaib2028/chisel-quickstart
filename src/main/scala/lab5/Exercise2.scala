package lab5

import chisel3._
import chisel3.util._


/*class IO_Interfac[T <: UInt] (data_type : T) extends Bundle{
	val out = Output(data_type.cloneType)
	val in1 = Input(data_type.cloneType)
	val in2 = Input(data_type.cloneType)
	val sel = Input(Bool())

}*/

class IO_Interfac(value : UInt) extends Bundle{
	val out = Output(value.cloneType)
	val in1 = Input(value.cloneType)
	val in2 = Input(value.cloneType)
	val sel = Input(Bool())

}

class Mux2_to_1(size: UInt) extends Module{
	val io = IO(new IO_Interfac(size))
	
	io.out := Mux(io.sel , io.in1 , io.in2)
}



