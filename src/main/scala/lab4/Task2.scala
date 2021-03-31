package lab4

import chisel3._
import chisel3.util._

class LM_IO_Interfc_ImmdValGen extends Bundle {
    val instr = Input ( UInt (32. W ) )
    val immd_se = Output ( UInt (32. W ) )
    val pc = Input(UInt(32.W))
}


class immediate_lab4 extends Module {
    	val io = IO (new LM_IO_Interfc_ImmdValGen )

    	val opcode = io.instr(6,0)
    	val imm31 = io.instr(31)
	val imm30 = io.instr(30,25)
	val imm24 = io.instr(24,21)
	val imm20 = io.instr(20)
	val imm19 = io.instr(19,12)
	val imm11 = io.instr(11,8)
	val imm7 = io.instr(7)

	val i = Cat(Fill(20,imm31),imm31,imm30,imm24,imm20)				//I_Type
	
	val s = Cat(Fill(20,imm31),imm31,imm30,imm11,imm7)				//S_Type					
	
	val sb = Cat(Fill(19,imm31),imm31,imm7,imm30,imm11, 0.U) +io.pc		//SB_Type
	
	val uj = Cat(Fill(11,imm31),imm31,imm19,imm20,imm30,imm24, 0.U) +io.pc		//UJ_Type
	
	val u = (Cat(imm31,imm30,imm24,imm20,imm19) << 12.U)				//U_Type


   io.immd_se := MuxCase(0.U,Array(
        (opcode === 35.U) -> s,
        (opcode === 99.U) -> sb,
        (opcode === 111.U) -> uj,
        (opcode === 23.U) -> u,
        (opcode <= 19.U || opcode >= 3.U || opcode === 27.U || opcode === 115.U) -> i
    ))


}
