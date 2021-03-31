package lab4

import chisel3._


class Intrfc_Branch_Control extends Bundle{
	val func3 = Input(UInt(3.W))
	val branch = Input(Bool())
	val arg_y = Input(UInt(32.W))
	val arg_x = Input(UInt(32.W))
	val br_taken = Output(Bool())

}

class Branch_Control_lab4 extends Module{
	val io = IO(new Intrfc_Branch_Control)

	when(io.func3 === "b000".U && io.branch === 1.B){
		io.br_taken := io.arg_x === io.arg_y

	}.elsewhen(io.func3 === "b001".U && io.branch === 1.B){
		io.br_taken := io.arg_x =/= io.arg_y

	}.elsewhen(io.func3 === "b100".U && io.branch === 1.B){
		io.br_taken := io.arg_x < io.arg_y

	}.elsewhen(io.func3 === "b101".U && io.branch === 1.B){
		io.br_taken := io.arg_x >= io.arg_y

	}.elsewhen(io.func3 === "b110".U && io.branch === 1.B){
		io.br_taken := io.arg_x < io.arg_y

	}.elsewhen(io.func3 === "b111".U && io.branch === 1.B){
		io.br_taken := io.arg_x >= io.arg_y

	}.otherwise{
		io.br_taken := 0.B
	}

}
