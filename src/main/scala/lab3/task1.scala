package lab3

import chisel3._


class Interface_Branch_Control extends Bundle{
	val func3 = Input(UInt(3.W))
	val branch = Input(Bool())
	val arg_y = Input(UInt(32.W))
	val arg_x = Input(UInt(32.W))
	val br_taken = Output(Bool())

}

class Branch_Control extends Module{
	val io = IO(new Interface_Branch_Control)

	when(io.func3 === "b000".U && io.branch === 1.B){
		when(io.arg_x === io.arg_y){
			io.br_taken := 1.B
		}.otherwise{
			io.br_taken := 0.B
		}
	}.elsewhen(io.func3 === "b001".U && io.branch === 1.B){
		when(io.arg_x =/= io.arg_y){
			io.br_taken := 1.B
		}.otherwise{
			io.br_taken := 0.B
		}
	}.elsewhen(io.func3 === "b100".U && io.branch === 1.B){
		when(io.arg_x < io.arg_y){
			io.br_taken := 1.B
		}.otherwise{
			io.br_taken := 0.B
		}
	}.elsewhen(io.func3 === "b101".U && io.branch === 1.B){
		when(io.arg_x > io.arg_y){
			io.br_taken := 1.B
		}.otherwise{
			io.br_taken := 0.B
		}
	}.elsewhen(io.func3 === "b110".U && io.branch === 1.B){
		when(io.arg_x < io.arg_y){
			io.br_taken := 1.B
		}.otherwise{
			io.br_taken := 0.B
		}
	}.elsewhen(io.func3 === "b111".U && io.branch === 1.B){
		when(io.arg_x > io.arg_y){
			io.br_taken := 1.B
		}.otherwise{
			io.br_taken := 0.B
		}
	}.otherwise{
		io.br_taken := 0.B
	}

}
