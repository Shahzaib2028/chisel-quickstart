
package lab8

import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum


class Exercise1 extends Module {
    val width : Int = 8
    val io = IO (new Bundle {
        val enable = Input ( Bool () )
        val write = Input ( Bool () )
        val addr = Input ( UInt (10. W ) )
        val mask = Input ( Vec (4 , Bool () ) )
        val dataIn = Input ( Vec (4 , UInt ( width . W ) ) )
        val dataOut = Output ( Vec (4 , UInt ( width . W ) ) )
    })
    val mem = SyncReadMem(1024,Vec(4,UInt(width.W)))
    val vector = Reg(Vec(4, UInt()))

    /*when(io.write === true.B){
        when(io.mask(0)){
            vector(0) := io.dataIn(0)
            vector(1) := 0.U
            vector(2) := 0.U
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(io.mask(1)){
            vector(0) := 0.U
            vector(1) := io.dataIn(1)
            vector(2) := 0.U
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(io.mask(2)){
            vector(0) := 0.U
            vector(1) := 0.U
            vector(2) := io.dataIn(2)
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(io.mask(3)){
            vector(0) := 0.U
            vector(1) := 0.U
            vector(2) := 0.U
            vector(3) := io.dataIn(3)
            mem.write(io.addr, vector)
        }

    }*/

    val Concat = Cat(io.mask(3) , io.mask(2) , io.mask(1) , io.mask(0))
     when(io.write === true.B){
        when(Concat === 1.U){
            vector(0) := io.dataIn(0)
            vector(1) := 0.U
            vector(2) := 0.U
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 2.U){
            vector(0) := 0.U
            vector(1) := io.dataIn(1)
            vector(2) := 0.U
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 3.U){
            vector(0) := io.dataIn(0)
            vector(1) := io.dataIn(1)
            vector(2) := 0.U
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 4.U){
            vector(0) := 0.U
            vector(1) := 0.U
            vector(2) := io.dataIn(2)
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 5.U){
            vector(0) := io.dataIn(0)
            vector(1) := 0.U
            vector(2) := io.dataIn(2)
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 6.U){
            vector(0) := 0.U
            vector(1) := io.dataIn(1)
            vector(2) := io.dataIn(2)
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 7.U){
            vector(0) := io.dataIn(0)
            vector(1) := io.dataIn(1)
            vector(2) := io.dataIn(2)
            vector(3) := 0.U
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 8.U){
            vector(0) := 0.U
            vector(1) := 0.U
            vector(2) := 0.U
            vector(3) := io.dataIn(3)
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 9.U){
            vector(0) := io.dataIn(0)
            vector(1) := 0.U
            vector(2) := 0.U
            vector(3) := io.dataIn(3)
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 10.U){
            vector(0) := 0.U
            vector(1) := io.dataIn(1)
            vector(2) := 0.U
            vector(3) := io.dataIn(3)
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 11.U){
            vector(0) := io.dataIn(0)
            vector(1) := io.dataIn(1)
            vector(2) := 0.U
            vector(3) := io.dataIn(3)
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 12.U){
            vector(0) := 0.U
            vector(1) := 0.U
            vector(2) := io.dataIn(2)
            vector(3) := io.dataIn(3)
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 13.U){
            vector(0) := io.dataIn(0)
            vector(1) := 0.U
            vector(2) := io.dataIn(2)
            vector(3) := io.dataIn(3)
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 14.U){
            vector(0) := 0.U
            vector(1) := io.dataIn(1)
            vector(2) := io.dataIn(2)
            vector(3) := io.dataIn(3)
            mem.write(io.addr, vector)
        }.elsewhen(Concat === 15.U){
            vector(0) := io.dataIn(0)
            vector(1) := io.dataIn(1)
            vector(2) := io.dataIn(2)
            vector(3) := io.dataIn(3)
            mem.write(io.addr, vector)
        }

    }

    io.dataOut := mem.read(io.addr,io.enable)
}
