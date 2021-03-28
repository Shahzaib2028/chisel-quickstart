package lab3

import chisel3._
import chisel3.util._

class Interface_Immediate extends Bundle{
	val instr = Input(UInt(32.W))
	val immd_se_I = Output(UInt(32.W))
	val immd_se_S = Output(UInt(32.W))
	val immd_se_SB = Output(UInt(32.W))
	val immd_se_UJ = Output(UInt(32.W))
	val immd_se_U = Output(UInt(32.W))
	val pc = Input(UInt(32.W))

}

class Immediate extends Module{
	val io = IO(new Interface_Immediate)

	val imm31 = io.instr(31)
	val imm30 = io.instr(30,25)
	val imm24 = io.instr(24,21)
	val imm20 = io.instr(20)
	val imm19 = io.instr(19,12)
	val imm11 = io.instr(11,8)
	val imm7 = io.instr(7)


	
	io.immd_se_I := Cat(Fill(20,imm31),imm31,imm30,imm24,imm20)				//I_Type
	
	io.immd_se_S := Cat(Fill(20,imm31),imm31,imm30,imm11,imm7)				//S_Type					
	
	io.immd_se_SB := Cat(Fill(19,imm31),imm31,imm7,imm30,imm11, 0.U) +io.pc			//SB_Type
	
	io.immd_se_UJ := Cat(Fill(11,imm31),imm31,imm19,imm20,imm30,imm24, 0.U) +io.pc		//UJ_Type
	
	io.immd_se_U := (Cat(imm31,imm30,imm24,imm20,imm19) << 12.U)				//U_Type
	
							
												
					
				
							
}
