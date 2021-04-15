package lab7
import chisel3._
import chisel3.util . _
import chisel3.experimental.ChiselEnum
import chisel3.experimental.{withClock , withReset , withClockAndReset}
//import chisel3.experimental.BundleLiterals._

class Manchester_Encoding extends Bundle {
    val in = Input (UInt(1.W))
    val start = Input (Bool())
    val out = Output (UInt(8.W))
    val flag = Output (UInt(1.W))
}

class Task2_lab7 extends Module{
    val io =IO (new Manchester_Encoding)
    val state = RegInit(0.U(8.W))
    io.out:=0.U
    io.flag:=0.U
    switch (io.start){
        is (true.B){
            val next_state = (state << 1.U) | io.in
            state := next_state
            io.out := state
            io.flag := 1.U

        }
        is (false.B){
            io.out:=state
            io.flag:=0.U    
        }
    }
}
