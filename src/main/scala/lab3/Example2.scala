package lab3

import chisel3._
import chisel3.util._

class Valid_intrf extends Module{
	val io = IO(new Bundle {
		val in = Flipped(Valid(UInt(8.W)))
		val out = Valid(UInt(8.W))
	})

	io.out := RegNext(io.in)
}
