package lab8
import chisel3._
import chisel3.util._

class Arb (val n: Int = 4) extends Bundle {
    val in = Vec(n, Flipped(Decoupled(UInt(32.W))))
    val out = Decoupled(UInt(n.W))
    //val RAddr = Input(UInt(5.W))
    val Addr = Input(UInt(5.W))
    //val mem_out = Vec(4,Output(UInt(32.W)))
    val data_out = Vec(4,Output(UInt(32.W)))
    //val mask = Input ( Vec (4 , Bool () ) )
}

class Task1 (val n : Int = 4) extends Module {
    val io = IO(new Arb(n))
    io.out.bits:=0.U
    io.out.valid:=false.B
    
    

    val queue0 = Queue(io.in(0),n)
    val queue1 = Queue(io.in(1),n)
    val queue2 = Queue(io.in(2),n)
    val queue3 = Queue(io.in(3),n)

    val mem = SyncReadMem(1024, Vec(n, UInt(n.W)))
    val arb_priority = Module (new Arbiter(UInt(),n))
    val vector = Reg(Vec(4, UInt()))
    val mask =  Reg(Vec(4, Bool()))
    mask(0) := false.B
    mask(1) := false.B
    mask(2) := false.B
    mask(3) := false.B

    queue0 <> arb_priority.io.in(0) 
    queue1 <> arb_priority.io.in(1)
    queue2 <> arb_priority.io.in(2) 
    queue3 <> arb_priority.io.in(3)   
    io.out <> arb_priority.io.out
    /*io.mem_out(0) := io.out.bits
    for (i <- 1 until n){
		io.mem_out(i) := 0.U
	}*/

    when(io.in(0).valid){
        mask(0) := true.B
    }.elsewhen(io.in(1).valid){
        mask(1) := true.B
    }.elsewhen(io.in(2).valid){
        mask(2) := true.B
    }.elsewhen(io.in(3).valid){
        mask(3) := true.B
    }


    when(mask(0)){
        vector(0) := io.in(0).bits
        vector(1) := 0.U
        vector(2) := 0.U
        vector(3) := 0.U
        mem.write(io.Addr, vector)
    }.elsewhen(mask(1)){
        vector(0) := 0.U
        vector(1) := io.in(1).bits
        vector(2) := 0.U
        vector(3) := 0.U
        mem.write(io.Addr, vector)
    }.elsewhen(mask(2)){
        vector(0) := 0.U
        vector(1) := 0.U
        vector(2) := io.in(2).bits
        vector(3) := 0.U
        mem.write(io.Addr, vector)
    }.elsewhen(mask(3)){
        vector(0) := 0.U
        vector(1) := 0.U
        vector(2) := 0.U
        vector(3) := io.in(3).bits
        mem.write(io.Addr, vector)
    }


    io.data_out := mem.read(io.Addr)

    /*when(io.out.bits === queue0.bits){
        io.mem_out(0) := io.out.bits
        io.mem_out(1) := 0.U
        io.mem_out(2) := 0.U
        io.mem_out(3) := 0.U
    }.elsewhen(io.out.bits === queue1.bits){
        io.mem_out(1) := io.out.bits
        io.mem_out(0) := 0.U
        io.mem_out(2) := 0.U
        io.mem_out(3) := 0.U
    }.elsewhen(io.out.bits === queue2.bits){
        io.mem_out(2) := io.out.bits
        io.mem_out(1) := 0.U
        io.mem_out(0) := 0.U
        io.mem_out(3) := 0.U
    }.elsewhen(io.out.bits === queue3.bits){
        io.mem_out(3) := io.out.bits
        io.mem_out(1) := 0.U
        io.mem_out(2) := 0.U
        io.mem_out(0) := 0.U
    }*/


    /*when(io.out.bits === queue0.bits){
        io.WAddr := 0.U
        io.RAddr := 0.U
    }.elsewhen(io.out.bits === queue1.bits){
        io.WAddr := 1.U
        io.RAddr := 1.U
    }.elsewhen(io.out.bits === queue2.bits){
        io.WAddr := 2.U
        io.RAddr := 2.U
    }.elsewhen(io.out.bits === queue3.bits){
        io.WAddr := 3.U
        io.RAddr := 3.U
    }*/

    //mem.write(io.Addr , io.mem_out)

   
}
