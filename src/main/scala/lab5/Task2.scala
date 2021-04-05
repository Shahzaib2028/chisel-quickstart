
package lab5

import chisel3._
import chisel3.util._

class DataPacket[T<:Data](gen:T) extends Bundle{
    val addr = UInt(10.W)
    val data = gen
    override def cloneType = (new DataPacket(gen)).asInstanceOf[this.type]
}

class task2[T<:Data](gen:T, gen1:T) extends Module{
    // val tipe1 = tipe
    val io = IO(new Bundle{
        val in = Input(new DataPacket(gen))
        val out = Output(new DataPacket(gen1))
    })
    
    io.out <> io.in
}
