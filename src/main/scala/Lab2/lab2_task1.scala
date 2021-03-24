package lab2
import chisel3._
import chisel3.util._


class lab2_task1 extends Module {
	val io = IO ( new Bundle {
	val s0 = Input(Bool())
	val s1 = Input(Bool())
	val s2 = Input(Bool())
	val out = Output(UInt(32.W))
	})

	val concat = Cat(io.s2 ,io.s1 ,io.s0)

	io.out := MuxCase(32.U , Array(
	(concat === 0.U) -> 0.U,
	(concat === 1.U) -> 8.U,
	(concat === 2.U) -> 16.U,
	(concat === 3.U) -> 24.U))
	


}

