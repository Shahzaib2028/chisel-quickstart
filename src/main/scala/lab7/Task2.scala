package lab7
import chisel3._
import chisel3.util . _
import chisel3.experimental.ChiselEnum
import chisel3.experimental.{withClock , withReset , withClockAndReset}
import scala.annotation.switch
//import chisel3.experimental.BundleLiterals._

class Manchester_Encoding extends Bundle {
    val in = Input (UInt(1.W))
    val start = Input (Bool())
    val out = Output (UInt(8.W))
    val flag = Output (UInt(1.W))
}

class Task2_lab7 extends Module{
    val io =IO (new Manchester_Encoding)

    val s0 :: s1 :: Nil = Enum(2)

    val register = RegInit(0.U(8.W))
    val state = RegInit(s0)

    io.out:=0.U
    io.flag:=0.U
    

    switch(state){
        is(s0){
            when(io.start === true.B){
                val next_state = (register << 1.U) | io.in
                register := next_state
                io.out := register
                state := s1
                io.flag := 1.U
            }
        
        }
        is(s1){
            when(io.start === true.B){
                val next_state = (register << 1.U) | io.in
                register := next_state
                io.out := register
                state := s0
                io.flag := 1.U
            }
        }
    }
}
