package lab5

import chisel3._
import chisel3.util._


class IO_Interfce[T <: Data] (data_type : T) extends Bundle{
	val sum = Output(data_type.cloneType)
	val in0 = Input(data_type.cloneType)
	val in1 = Input(data_type.cloneType)

}


class adder(size: UInt) extends Module{
	val io = IO(new IO_Interfce(size))
	
	io.sum := io.in0 + io.in1
}



