package lab8
import chisel3._
import chisel3.util._



class Exercise2 extends Module {

    /*val width : Int = 8
    val io = IO(new Bundle {
        //val enable = Input(Bool())
        val write = Input(Bool())
        val Raddr = Input(UInt(10.W))
        val Waddr = Input(UInt(10.W))
        val data_in = Input(Vec(2 , UInt(width.W)))
        val data_out = Output(Vec(2 , UInt(width.W)))

    })

    val mem = SyncReadMem(1024, Vec(2, UInt(width.W)))
    val wrDataReg = RegNext(io.data_in)
    val doFowarding = RegNext(io.Raddr === io.Waddr && io.write)
    val memData = mem.read(io.Raddr)

    when (io.write){
        mem.write(io.Waddr , io.data_in)
    }

    io.data_out := Mux(doFowarding , wrDataReg , memData)*/

    val width : Int = 16
    val io = IO(new Bundle {
        val enable = Input(Bool())
        val write = Input(Bool())
        val addr = Input(UInt(10.W))
        val mask = Input(Vec(2 , Bool()))
        val data_in = Input(Vec(2 , UInt(width.W)))
        val data_out = Output(Vec(2 , UInt(width.W)))

    })

    val mem = SyncReadMem(1024, Vec(2, UInt(width.W)))
    val wrDataReg = RegNext(io.data_in)
    val doFowarding = RegNext(io.enable === true.B && io.write === true.B)
    val memData = mem.read(io.addr)

    when (io.write){
        mem.write(io.addr , io.data_in , io.mask)
    }

    when(doFowarding){
        for(i <- 0 until 2){
            io.data_out(i) := Mux(doFowarding , Mux(io.mask(i) , wrDataReg(i) , 0.U) , 0.U)
        }
    }.otherwise{
        io.data_out := memData
    }

    
}