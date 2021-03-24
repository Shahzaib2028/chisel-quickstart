package lab1

import chisel3._
import chisel3.util._
import chisel3.core


class counter_3 ( counterBits : UInt ) extends Module {
    val io = IO ( new Bundle {
        val result = Output ( Bool () )
    })

    val max = (1. U << counterBits ) - 1. U
    val count = RegInit (0.S (5. W ) )
    when ( count === max.asSInt ) {
        count := 0. S
    } .elsewhen(count(15.U) === 1.B){
        count := 0.S
    }.otherwise {
        count := count + 1.S
    }
    io . result := count(15.U)
    println ( s" counter created with max value $max " )
}
