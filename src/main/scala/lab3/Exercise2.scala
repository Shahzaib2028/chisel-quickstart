package lab3

import chisel3._
import chisel3.util._

class alu extends Module{
	val io = IO(new Bundle{
		val a = Input(SInt(32.W))
		val b = Input(SInt(32.W))
		val ALUcont = Input(UInt(5.W))
		val out = Output(SInt(32.W))

})
		io.out := 0.S
		
		switch (io.ALUcont){
			is ("b00000".U) {
				io.out := io.a + io.b
			}
			is ("b00001".U) {
				val shift_left = io.b(4,0)
				io.out := io.a << shift_left
			}
			is ("b00010".U) {
				when(io.a < io.b){
					io.out := 1.S			
				}.otherwise{
					io.out := 0.S
				}	
			}
			is ("b00011".U) {
				when(io.a.asUInt < io.b.asUInt){
					io.out := 1.S
				}.otherwise{
					io.out := 0.S	
				}	
			}
			is ("b00100".U) {
				io.out := io.a  ^ io.b
			}
			is ("b00101".U) {
				val shift_right = io.b(4,0)
				io.out := io.a >> shift_right	
			}
			is ("b00110".U) {
				io.out := io.a  | io.b
			}
			is ("b00111".U) {
				io.out := io.a  & io.b
			}
			is ("b01000".U) {
				io.out := io.a  - io.b
			}
			is ("b01101".U) {
				val shift_right_a = io.b(4,0)
				io.out := io.a >> shift_right_a
			}
			
		}

}





























