package lab5

import chisel3._
import chisel3.util._

class eMuxInterface[ T <: Data ]( gen:T, gen1:T ) extends Bundle{
    val out = Output ( gen )
    val in1 = Input ( gen )
    val in2 = Input ( gen1 )
    val sel = Input ( Bool () )
}

class task3 [ T <: Data ]( gen:T, gen1:T ) extends Module {
    val io = IO(new eMuxInterface(gen, gen1))

    io.out := Mux( io.sel , io.in1 , io.in2 )
   


}
