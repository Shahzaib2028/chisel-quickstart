package lab6
import chisel3._
import chisel3.util._


class register(n:Int) extends Bundle {
val in = Input (UInt(4.W))
val out = Output ( Bool())    
}

//val loadReg = RegInit(0.U(4.W))
//when (load) {
//    loadReg := d                          Example Code of Parallel load Shift
//}.otherwise{
//    loadReg := Cat(0.U, loadReg(3, 1))
//}
//val serOut = loadReg(0)


class Exercise1_Lab6(n:Int) extends Module{
    val io = IO (new register(n))
    val state = RegInit(0.U(n.W))
    val load = RegInit(0.U(n.W))
    //io.out:=0.B
    when(load === 0.U){
        load:=load+1.U
        state:=io.in
	io.out := 0.B
    }.otherwise{
        state:= state << 1
        io.out:=state(0)
    }
    
}
