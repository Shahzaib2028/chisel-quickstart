// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VExercise1__Syms.h"


//======================

void VExercise1::trace (VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback (&VExercise1::traceInit, &VExercise1::traceFull, &VExercise1::traceChg, this);
}
void VExercise1::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VExercise1* t=(VExercise1*)userthis;
    VExercise1__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    vcdp->scopeEscape(' ');
    t->traceInitThis (vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VExercise1::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VExercise1* t=(VExercise1*)userthis;
    VExercise1__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis (vlSymsp, vcdp, code);
}

//======================


void VExercise1::traceInitThis(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
	vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VExercise1::traceFullThis(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VExercise1::traceInitThis__1(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->declBit  (c+18,"clock",-1);
	vcdp->declBit  (c+19,"reset",-1);
	vcdp->declBit  (c+20,"io_enable",-1);
	vcdp->declBit  (c+21,"io_write",-1);
	vcdp->declBus  (c+22,"io_addr",-1,9,0);
	vcdp->declBit  (c+23,"io_mask_0",-1);
	vcdp->declBit  (c+24,"io_mask_1",-1);
	vcdp->declBit  (c+25,"io_mask_2",-1);
	vcdp->declBit  (c+26,"io_mask_3",-1);
	vcdp->declBus  (c+27,"io_dataIn_0",-1,7,0);
	vcdp->declBus  (c+28,"io_dataIn_1",-1,7,0);
	vcdp->declBus  (c+29,"io_dataIn_2",-1,7,0);
	vcdp->declBus  (c+30,"io_dataIn_3",-1,7,0);
	vcdp->declBus  (c+31,"io_dataOut_0",-1,7,0);
	vcdp->declBus  (c+32,"io_dataOut_1",-1,7,0);
	vcdp->declBus  (c+33,"io_dataOut_2",-1,7,0);
	vcdp->declBus  (c+34,"io_dataOut_3",-1,7,0);
	vcdp->declBit  (c+18,"Exercise1 clock",-1);
	vcdp->declBit  (c+19,"Exercise1 reset",-1);
	vcdp->declBit  (c+20,"Exercise1 io_enable",-1);
	vcdp->declBit  (c+21,"Exercise1 io_write",-1);
	vcdp->declBus  (c+22,"Exercise1 io_addr",-1,9,0);
	vcdp->declBit  (c+23,"Exercise1 io_mask_0",-1);
	vcdp->declBit  (c+24,"Exercise1 io_mask_1",-1);
	vcdp->declBit  (c+25,"Exercise1 io_mask_2",-1);
	vcdp->declBit  (c+26,"Exercise1 io_mask_3",-1);
	vcdp->declBus  (c+27,"Exercise1 io_dataIn_0",-1,7,0);
	vcdp->declBus  (c+28,"Exercise1 io_dataIn_1",-1,7,0);
	vcdp->declBus  (c+29,"Exercise1 io_dataIn_2",-1,7,0);
	vcdp->declBus  (c+30,"Exercise1 io_dataIn_3",-1,7,0);
	vcdp->declBus  (c+31,"Exercise1 io_dataOut_0",-1,7,0);
	vcdp->declBus  (c+32,"Exercise1 io_dataOut_1",-1,7,0);
	vcdp->declBus  (c+33,"Exercise1 io_dataOut_2",-1,7,0);
	vcdp->declBus  (c+34,"Exercise1 io_dataOut_3",-1,7,0);
	// Tracing: Exercise1 mem_0 // Ignored: Wide memory > --trace-max-array ents at Exercise1.v:40
	vcdp->declBus  (c+2,"Exercise1 mem_0_MPORT_16_data",-1,7,0);
	vcdp->declBus  (c+3,"Exercise1 mem_0_MPORT_16_addr",-1,9,0);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_mask",-1);
	vcdp->declBit  (c+35,"Exercise1 mem_0_MPORT_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_1_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_1_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_1_mask",-1);
	vcdp->declBit  (c+36,"Exercise1 mem_0_MPORT_1_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_2_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_2_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_2_mask",-1);
	vcdp->declBit  (c+37,"Exercise1 mem_0_MPORT_2_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_3_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_3_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_3_mask",-1);
	vcdp->declBit  (c+38,"Exercise1 mem_0_MPORT_3_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_4_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_4_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_4_mask",-1);
	vcdp->declBit  (c+39,"Exercise1 mem_0_MPORT_4_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_5_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_5_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_5_mask",-1);
	vcdp->declBit  (c+40,"Exercise1 mem_0_MPORT_5_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_6_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_6_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_6_mask",-1);
	vcdp->declBit  (c+41,"Exercise1 mem_0_MPORT_6_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_7_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_7_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_7_mask",-1);
	vcdp->declBit  (c+42,"Exercise1 mem_0_MPORT_7_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_8_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_8_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_8_mask",-1);
	vcdp->declBit  (c+43,"Exercise1 mem_0_MPORT_8_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_9_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_9_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_9_mask",-1);
	vcdp->declBit  (c+44,"Exercise1 mem_0_MPORT_9_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_10_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_10_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_10_mask",-1);
	vcdp->declBit  (c+45,"Exercise1 mem_0_MPORT_10_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_11_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_11_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_11_mask",-1);
	vcdp->declBit  (c+46,"Exercise1 mem_0_MPORT_11_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_12_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_12_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_12_mask",-1);
	vcdp->declBit  (c+47,"Exercise1 mem_0_MPORT_12_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_13_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_13_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_13_mask",-1);
	vcdp->declBit  (c+48,"Exercise1 mem_0_MPORT_13_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_14_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_14_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_14_mask",-1);
	vcdp->declBit  (c+49,"Exercise1 mem_0_MPORT_14_en",-1);
	vcdp->declBus  (c+4,"Exercise1 mem_0_MPORT_15_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_0_MPORT_15_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_0_MPORT_15_mask",-1);
	vcdp->declBit  (c+50,"Exercise1 mem_0_MPORT_15_en",-1);
	vcdp->declBit  (c+5,"Exercise1 mem_0_MPORT_16_en_pipe_0",-1);
	vcdp->declBus  (c+3,"Exercise1 mem_0_MPORT_16_addr_pipe_0",-1,9,0);
	// Tracing: Exercise1 mem_1 // Ignored: Wide memory > --trace-max-array ents at Exercise1.v:109
	vcdp->declBus  (c+6,"Exercise1 mem_1_MPORT_16_data",-1,7,0);
	vcdp->declBus  (c+7,"Exercise1 mem_1_MPORT_16_addr",-1,9,0);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_mask",-1);
	vcdp->declBit  (c+35,"Exercise1 mem_1_MPORT_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_1_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_1_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_1_mask",-1);
	vcdp->declBit  (c+36,"Exercise1 mem_1_MPORT_1_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_2_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_2_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_2_mask",-1);
	vcdp->declBit  (c+37,"Exercise1 mem_1_MPORT_2_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_3_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_3_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_3_mask",-1);
	vcdp->declBit  (c+38,"Exercise1 mem_1_MPORT_3_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_4_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_4_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_4_mask",-1);
	vcdp->declBit  (c+39,"Exercise1 mem_1_MPORT_4_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_5_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_5_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_5_mask",-1);
	vcdp->declBit  (c+40,"Exercise1 mem_1_MPORT_5_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_6_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_6_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_6_mask",-1);
	vcdp->declBit  (c+41,"Exercise1 mem_1_MPORT_6_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_7_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_7_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_7_mask",-1);
	vcdp->declBit  (c+42,"Exercise1 mem_1_MPORT_7_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_8_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_8_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_8_mask",-1);
	vcdp->declBit  (c+43,"Exercise1 mem_1_MPORT_8_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_9_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_9_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_9_mask",-1);
	vcdp->declBit  (c+44,"Exercise1 mem_1_MPORT_9_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_10_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_10_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_10_mask",-1);
	vcdp->declBit  (c+45,"Exercise1 mem_1_MPORT_10_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_11_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_11_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_11_mask",-1);
	vcdp->declBit  (c+46,"Exercise1 mem_1_MPORT_11_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_12_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_12_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_12_mask",-1);
	vcdp->declBit  (c+47,"Exercise1 mem_1_MPORT_12_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_13_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_13_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_13_mask",-1);
	vcdp->declBit  (c+48,"Exercise1 mem_1_MPORT_13_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_14_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_14_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_14_mask",-1);
	vcdp->declBit  (c+49,"Exercise1 mem_1_MPORT_14_en",-1);
	vcdp->declBus  (c+8,"Exercise1 mem_1_MPORT_15_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_1_MPORT_15_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_1_MPORT_15_mask",-1);
	vcdp->declBit  (c+50,"Exercise1 mem_1_MPORT_15_en",-1);
	vcdp->declBit  (c+9,"Exercise1 mem_1_MPORT_16_en_pipe_0",-1);
	vcdp->declBus  (c+7,"Exercise1 mem_1_MPORT_16_addr_pipe_0",-1,9,0);
	// Tracing: Exercise1 mem_2 // Ignored: Wide memory > --trace-max-array ents at Exercise1.v:178
	vcdp->declBus  (c+10,"Exercise1 mem_2_MPORT_16_data",-1,7,0);
	vcdp->declBus  (c+11,"Exercise1 mem_2_MPORT_16_addr",-1,9,0);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_mask",-1);
	vcdp->declBit  (c+35,"Exercise1 mem_2_MPORT_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_1_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_1_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_1_mask",-1);
	vcdp->declBit  (c+36,"Exercise1 mem_2_MPORT_1_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_2_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_2_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_2_mask",-1);
	vcdp->declBit  (c+37,"Exercise1 mem_2_MPORT_2_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_3_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_3_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_3_mask",-1);
	vcdp->declBit  (c+38,"Exercise1 mem_2_MPORT_3_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_4_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_4_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_4_mask",-1);
	vcdp->declBit  (c+39,"Exercise1 mem_2_MPORT_4_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_5_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_5_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_5_mask",-1);
	vcdp->declBit  (c+40,"Exercise1 mem_2_MPORT_5_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_6_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_6_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_6_mask",-1);
	vcdp->declBit  (c+41,"Exercise1 mem_2_MPORT_6_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_7_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_7_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_7_mask",-1);
	vcdp->declBit  (c+42,"Exercise1 mem_2_MPORT_7_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_8_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_8_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_8_mask",-1);
	vcdp->declBit  (c+43,"Exercise1 mem_2_MPORT_8_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_9_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_9_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_9_mask",-1);
	vcdp->declBit  (c+44,"Exercise1 mem_2_MPORT_9_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_10_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_10_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_10_mask",-1);
	vcdp->declBit  (c+45,"Exercise1 mem_2_MPORT_10_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_11_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_11_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_11_mask",-1);
	vcdp->declBit  (c+46,"Exercise1 mem_2_MPORT_11_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_12_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_12_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_12_mask",-1);
	vcdp->declBit  (c+47,"Exercise1 mem_2_MPORT_12_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_13_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_13_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_13_mask",-1);
	vcdp->declBit  (c+48,"Exercise1 mem_2_MPORT_13_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_14_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_14_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_14_mask",-1);
	vcdp->declBit  (c+49,"Exercise1 mem_2_MPORT_14_en",-1);
	vcdp->declBus  (c+12,"Exercise1 mem_2_MPORT_15_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_2_MPORT_15_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_2_MPORT_15_mask",-1);
	vcdp->declBit  (c+50,"Exercise1 mem_2_MPORT_15_en",-1);
	vcdp->declBit  (c+13,"Exercise1 mem_2_MPORT_16_en_pipe_0",-1);
	vcdp->declBus  (c+11,"Exercise1 mem_2_MPORT_16_addr_pipe_0",-1,9,0);
	// Tracing: Exercise1 mem_3 // Ignored: Wide memory > --trace-max-array ents at Exercise1.v:247
	vcdp->declBus  (c+14,"Exercise1 mem_3_MPORT_16_data",-1,7,0);
	vcdp->declBus  (c+15,"Exercise1 mem_3_MPORT_16_addr",-1,9,0);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_mask",-1);
	vcdp->declBit  (c+35,"Exercise1 mem_3_MPORT_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_1_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_1_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_1_mask",-1);
	vcdp->declBit  (c+36,"Exercise1 mem_3_MPORT_1_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_2_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_2_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_2_mask",-1);
	vcdp->declBit  (c+37,"Exercise1 mem_3_MPORT_2_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_3_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_3_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_3_mask",-1);
	vcdp->declBit  (c+38,"Exercise1 mem_3_MPORT_3_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_4_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_4_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_4_mask",-1);
	vcdp->declBit  (c+39,"Exercise1 mem_3_MPORT_4_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_5_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_5_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_5_mask",-1);
	vcdp->declBit  (c+40,"Exercise1 mem_3_MPORT_5_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_6_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_6_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_6_mask",-1);
	vcdp->declBit  (c+41,"Exercise1 mem_3_MPORT_6_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_7_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_7_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_7_mask",-1);
	vcdp->declBit  (c+42,"Exercise1 mem_3_MPORT_7_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_8_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_8_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_8_mask",-1);
	vcdp->declBit  (c+43,"Exercise1 mem_3_MPORT_8_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_9_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_9_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_9_mask",-1);
	vcdp->declBit  (c+44,"Exercise1 mem_3_MPORT_9_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_10_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_10_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_10_mask",-1);
	vcdp->declBit  (c+45,"Exercise1 mem_3_MPORT_10_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_11_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_11_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_11_mask",-1);
	vcdp->declBit  (c+46,"Exercise1 mem_3_MPORT_11_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_12_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_12_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_12_mask",-1);
	vcdp->declBit  (c+47,"Exercise1 mem_3_MPORT_12_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_13_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_13_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_13_mask",-1);
	vcdp->declBit  (c+48,"Exercise1 mem_3_MPORT_13_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_14_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_14_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_14_mask",-1);
	vcdp->declBit  (c+49,"Exercise1 mem_3_MPORT_14_en",-1);
	vcdp->declBus  (c+16,"Exercise1 mem_3_MPORT_15_data",-1,7,0);
	vcdp->declBus  (c+22,"Exercise1 mem_3_MPORT_15_addr",-1,9,0);
	vcdp->declBit  (c+51,"Exercise1 mem_3_MPORT_15_mask",-1);
	vcdp->declBit  (c+50,"Exercise1 mem_3_MPORT_15_en",-1);
	vcdp->declBit  (c+17,"Exercise1 mem_3_MPORT_16_en_pipe_0",-1);
	vcdp->declBus  (c+15,"Exercise1 mem_3_MPORT_16_addr_pipe_0",-1,9,0);
	vcdp->declBus  (c+4,"Exercise1 vector_0",-1,7,0);
	vcdp->declBus  (c+8,"Exercise1 vector_1",-1,7,0);
	vcdp->declBus  (c+12,"Exercise1 vector_2",-1,7,0);
	vcdp->declBus  (c+16,"Exercise1 vector_3",-1,7,0);
	vcdp->declBus  (c+1,"Exercise1 Concat",-1,3,0);
	// Tracing: Exercise1 _T_1 // Ignored: Inlined leading underscore at Exercise1.v:321
	// Tracing: Exercise1 _T_2 // Ignored: Inlined leading underscore at Exercise1.v:322
	// Tracing: Exercise1 _T_3 // Ignored: Inlined leading underscore at Exercise1.v:323
	// Tracing: Exercise1 _T_4 // Ignored: Inlined leading underscore at Exercise1.v:324
	// Tracing: Exercise1 _T_5 // Ignored: Inlined leading underscore at Exercise1.v:325
	// Tracing: Exercise1 _T_6 // Ignored: Inlined leading underscore at Exercise1.v:326
	// Tracing: Exercise1 _T_7 // Ignored: Inlined leading underscore at Exercise1.v:327
	// Tracing: Exercise1 _T_8 // Ignored: Inlined leading underscore at Exercise1.v:328
	// Tracing: Exercise1 _T_9 // Ignored: Inlined leading underscore at Exercise1.v:329
	// Tracing: Exercise1 _T_10 // Ignored: Inlined leading underscore at Exercise1.v:330
	// Tracing: Exercise1 _T_11 // Ignored: Inlined leading underscore at Exercise1.v:331
	// Tracing: Exercise1 _T_12 // Ignored: Inlined leading underscore at Exercise1.v:332
	// Tracing: Exercise1 _T_13 // Ignored: Inlined leading underscore at Exercise1.v:333
	// Tracing: Exercise1 _T_14 // Ignored: Inlined leading underscore at Exercise1.v:334
	// Tracing: Exercise1 _T_15 // Ignored: Inlined leading underscore at Exercise1.v:335
	// Tracing: Exercise1 _T_16 // Ignored: Inlined leading underscore at Exercise1.v:336
	// Tracing: Exercise1 _GEN_0 // Ignored: Inlined leading underscore at Exercise1.v:337
	// Tracing: Exercise1 _GEN_1 // Ignored: Inlined leading underscore at Exercise1.v:338
	// Tracing: Exercise1 _GEN_2 // Ignored: Inlined leading underscore at Exercise1.v:339
	// Tracing: Exercise1 _GEN_3 // Ignored: Inlined leading underscore at Exercise1.v:340
	// Tracing: Exercise1 _GEN_12 // Ignored: Inlined leading underscore at Exercise1.v:341
	// Tracing: Exercise1 _GEN_13 // Ignored: Inlined leading underscore at Exercise1.v:342
	// Tracing: Exercise1 _GEN_14 // Ignored: Inlined leading underscore at Exercise1.v:343
	// Tracing: Exercise1 _GEN_15 // Ignored: Inlined leading underscore at Exercise1.v:344
	// Tracing: Exercise1 _GEN_26 // Ignored: Inlined leading underscore at Exercise1.v:345
	// Tracing: Exercise1 _GEN_32 // Ignored: Inlined leading underscore at Exercise1.v:346
	// Tracing: Exercise1 _GEN_33 // Ignored: Inlined leading underscore at Exercise1.v:347
	// Tracing: Exercise1 _GEN_34 // Ignored: Inlined leading underscore at Exercise1.v:348
	// Tracing: Exercise1 _GEN_35 // Ignored: Inlined leading underscore at Exercise1.v:349
	// Tracing: Exercise1 _GEN_46 // Ignored: Inlined leading underscore at Exercise1.v:350
	// Tracing: Exercise1 _GEN_54 // Ignored: Inlined leading underscore at Exercise1.v:351
	// Tracing: Exercise1 _GEN_60 // Ignored: Inlined leading underscore at Exercise1.v:352
	// Tracing: Exercise1 _GEN_61 // Ignored: Inlined leading underscore at Exercise1.v:353
	// Tracing: Exercise1 _GEN_62 // Ignored: Inlined leading underscore at Exercise1.v:354
	// Tracing: Exercise1 _GEN_63 // Ignored: Inlined leading underscore at Exercise1.v:355
	// Tracing: Exercise1 _GEN_74 // Ignored: Inlined leading underscore at Exercise1.v:356
	// Tracing: Exercise1 _GEN_82 // Ignored: Inlined leading underscore at Exercise1.v:357
	// Tracing: Exercise1 _GEN_90 // Ignored: Inlined leading underscore at Exercise1.v:358
	// Tracing: Exercise1 _GEN_96 // Ignored: Inlined leading underscore at Exercise1.v:359
	// Tracing: Exercise1 _GEN_97 // Ignored: Inlined leading underscore at Exercise1.v:360
	// Tracing: Exercise1 _GEN_98 // Ignored: Inlined leading underscore at Exercise1.v:361
	// Tracing: Exercise1 _GEN_99 // Ignored: Inlined leading underscore at Exercise1.v:362
	// Tracing: Exercise1 _GEN_110 // Ignored: Inlined leading underscore at Exercise1.v:363
	// Tracing: Exercise1 _GEN_118 // Ignored: Inlined leading underscore at Exercise1.v:364
	// Tracing: Exercise1 _GEN_126 // Ignored: Inlined leading underscore at Exercise1.v:365
	// Tracing: Exercise1 _GEN_134 // Ignored: Inlined leading underscore at Exercise1.v:366
	// Tracing: Exercise1 _GEN_140 // Ignored: Inlined leading underscore at Exercise1.v:367
	// Tracing: Exercise1 _GEN_141 // Ignored: Inlined leading underscore at Exercise1.v:368
	// Tracing: Exercise1 _GEN_142 // Ignored: Inlined leading underscore at Exercise1.v:369
	// Tracing: Exercise1 _GEN_143 // Ignored: Inlined leading underscore at Exercise1.v:370
	// Tracing: Exercise1 _GEN_154 // Ignored: Inlined leading underscore at Exercise1.v:371
	// Tracing: Exercise1 _GEN_162 // Ignored: Inlined leading underscore at Exercise1.v:372
	// Tracing: Exercise1 _GEN_170 // Ignored: Inlined leading underscore at Exercise1.v:373
	// Tracing: Exercise1 _GEN_178 // Ignored: Inlined leading underscore at Exercise1.v:374
	// Tracing: Exercise1 _GEN_186 // Ignored: Inlined leading underscore at Exercise1.v:375
	// Tracing: Exercise1 _GEN_192 // Ignored: Inlined leading underscore at Exercise1.v:376
	// Tracing: Exercise1 _GEN_193 // Ignored: Inlined leading underscore at Exercise1.v:377
	// Tracing: Exercise1 _GEN_194 // Ignored: Inlined leading underscore at Exercise1.v:378
	// Tracing: Exercise1 _GEN_195 // Ignored: Inlined leading underscore at Exercise1.v:379
	// Tracing: Exercise1 _GEN_206 // Ignored: Inlined leading underscore at Exercise1.v:380
	// Tracing: Exercise1 _GEN_214 // Ignored: Inlined leading underscore at Exercise1.v:381
	// Tracing: Exercise1 _GEN_222 // Ignored: Inlined leading underscore at Exercise1.v:382
	// Tracing: Exercise1 _GEN_230 // Ignored: Inlined leading underscore at Exercise1.v:383
	// Tracing: Exercise1 _GEN_238 // Ignored: Inlined leading underscore at Exercise1.v:384
	// Tracing: Exercise1 _GEN_246 // Ignored: Inlined leading underscore at Exercise1.v:385
	// Tracing: Exercise1 _GEN_252 // Ignored: Inlined leading underscore at Exercise1.v:386
	// Tracing: Exercise1 _GEN_253 // Ignored: Inlined leading underscore at Exercise1.v:387
	// Tracing: Exercise1 _GEN_254 // Ignored: Inlined leading underscore at Exercise1.v:388
	// Tracing: Exercise1 _GEN_255 // Ignored: Inlined leading underscore at Exercise1.v:389
	// Tracing: Exercise1 _GEN_266 // Ignored: Inlined leading underscore at Exercise1.v:390
	// Tracing: Exercise1 _GEN_274 // Ignored: Inlined leading underscore at Exercise1.v:391
	// Tracing: Exercise1 _GEN_282 // Ignored: Inlined leading underscore at Exercise1.v:392
	// Tracing: Exercise1 _GEN_290 // Ignored: Inlined leading underscore at Exercise1.v:393
	// Tracing: Exercise1 _GEN_298 // Ignored: Inlined leading underscore at Exercise1.v:394
	// Tracing: Exercise1 _GEN_306 // Ignored: Inlined leading underscore at Exercise1.v:395
	// Tracing: Exercise1 _GEN_314 // Ignored: Inlined leading underscore at Exercise1.v:396
	// Tracing: Exercise1 _GEN_320 // Ignored: Inlined leading underscore at Exercise1.v:397
	// Tracing: Exercise1 _GEN_321 // Ignored: Inlined leading underscore at Exercise1.v:398
	// Tracing: Exercise1 _GEN_322 // Ignored: Inlined leading underscore at Exercise1.v:399
	// Tracing: Exercise1 _GEN_323 // Ignored: Inlined leading underscore at Exercise1.v:400
	// Tracing: Exercise1 _GEN_334 // Ignored: Inlined leading underscore at Exercise1.v:401
	// Tracing: Exercise1 _GEN_342 // Ignored: Inlined leading underscore at Exercise1.v:402
	// Tracing: Exercise1 _GEN_350 // Ignored: Inlined leading underscore at Exercise1.v:403
	// Tracing: Exercise1 _GEN_358 // Ignored: Inlined leading underscore at Exercise1.v:404
	// Tracing: Exercise1 _GEN_366 // Ignored: Inlined leading underscore at Exercise1.v:405
	// Tracing: Exercise1 _GEN_374 // Ignored: Inlined leading underscore at Exercise1.v:406
	// Tracing: Exercise1 _GEN_382 // Ignored: Inlined leading underscore at Exercise1.v:407
	// Tracing: Exercise1 _GEN_390 // Ignored: Inlined leading underscore at Exercise1.v:408
	// Tracing: Exercise1 _GEN_396 // Ignored: Inlined leading underscore at Exercise1.v:409
	// Tracing: Exercise1 _GEN_397 // Ignored: Inlined leading underscore at Exercise1.v:410
	// Tracing: Exercise1 _GEN_398 // Ignored: Inlined leading underscore at Exercise1.v:411
	// Tracing: Exercise1 _GEN_399 // Ignored: Inlined leading underscore at Exercise1.v:412
	// Tracing: Exercise1 _GEN_410 // Ignored: Inlined leading underscore at Exercise1.v:413
	// Tracing: Exercise1 _GEN_418 // Ignored: Inlined leading underscore at Exercise1.v:414
	// Tracing: Exercise1 _GEN_426 // Ignored: Inlined leading underscore at Exercise1.v:415
	// Tracing: Exercise1 _GEN_434 // Ignored: Inlined leading underscore at Exercise1.v:416
	// Tracing: Exercise1 _GEN_442 // Ignored: Inlined leading underscore at Exercise1.v:417
	// Tracing: Exercise1 _GEN_450 // Ignored: Inlined leading underscore at Exercise1.v:418
	// Tracing: Exercise1 _GEN_458 // Ignored: Inlined leading underscore at Exercise1.v:419
	// Tracing: Exercise1 _GEN_466 // Ignored: Inlined leading underscore at Exercise1.v:420
	// Tracing: Exercise1 _GEN_474 // Ignored: Inlined leading underscore at Exercise1.v:421
	// Tracing: Exercise1 _GEN_480 // Ignored: Inlined leading underscore at Exercise1.v:422
	// Tracing: Exercise1 _GEN_481 // Ignored: Inlined leading underscore at Exercise1.v:423
	// Tracing: Exercise1 _GEN_482 // Ignored: Inlined leading underscore at Exercise1.v:424
	// Tracing: Exercise1 _GEN_483 // Ignored: Inlined leading underscore at Exercise1.v:425
	// Tracing: Exercise1 _GEN_494 // Ignored: Inlined leading underscore at Exercise1.v:426
	// Tracing: Exercise1 _GEN_502 // Ignored: Inlined leading underscore at Exercise1.v:427
	// Tracing: Exercise1 _GEN_510 // Ignored: Inlined leading underscore at Exercise1.v:428
	// Tracing: Exercise1 _GEN_518 // Ignored: Inlined leading underscore at Exercise1.v:429
	// Tracing: Exercise1 _GEN_526 // Ignored: Inlined leading underscore at Exercise1.v:430
	// Tracing: Exercise1 _GEN_534 // Ignored: Inlined leading underscore at Exercise1.v:431
	// Tracing: Exercise1 _GEN_542 // Ignored: Inlined leading underscore at Exercise1.v:432
	// Tracing: Exercise1 _GEN_550 // Ignored: Inlined leading underscore at Exercise1.v:433
	// Tracing: Exercise1 _GEN_558 // Ignored: Inlined leading underscore at Exercise1.v:434
	// Tracing: Exercise1 _GEN_566 // Ignored: Inlined leading underscore at Exercise1.v:435
	// Tracing: Exercise1 _GEN_572 // Ignored: Inlined leading underscore at Exercise1.v:436
	// Tracing: Exercise1 _GEN_573 // Ignored: Inlined leading underscore at Exercise1.v:437
	// Tracing: Exercise1 _GEN_574 // Ignored: Inlined leading underscore at Exercise1.v:438
	// Tracing: Exercise1 _GEN_575 // Ignored: Inlined leading underscore at Exercise1.v:439
	// Tracing: Exercise1 _GEN_586 // Ignored: Inlined leading underscore at Exercise1.v:440
	// Tracing: Exercise1 _GEN_594 // Ignored: Inlined leading underscore at Exercise1.v:441
	// Tracing: Exercise1 _GEN_602 // Ignored: Inlined leading underscore at Exercise1.v:442
	// Tracing: Exercise1 _GEN_610 // Ignored: Inlined leading underscore at Exercise1.v:443
	// Tracing: Exercise1 _GEN_618 // Ignored: Inlined leading underscore at Exercise1.v:444
	// Tracing: Exercise1 _GEN_626 // Ignored: Inlined leading underscore at Exercise1.v:445
	// Tracing: Exercise1 _GEN_634 // Ignored: Inlined leading underscore at Exercise1.v:446
	// Tracing: Exercise1 _GEN_642 // Ignored: Inlined leading underscore at Exercise1.v:447
	// Tracing: Exercise1 _GEN_650 // Ignored: Inlined leading underscore at Exercise1.v:448
	// Tracing: Exercise1 _GEN_658 // Ignored: Inlined leading underscore at Exercise1.v:449
	// Tracing: Exercise1 _GEN_666 // Ignored: Inlined leading underscore at Exercise1.v:450
	// Tracing: Exercise1 _GEN_672 // Ignored: Inlined leading underscore at Exercise1.v:451
	// Tracing: Exercise1 _GEN_673 // Ignored: Inlined leading underscore at Exercise1.v:452
	// Tracing: Exercise1 _GEN_674 // Ignored: Inlined leading underscore at Exercise1.v:453
	// Tracing: Exercise1 _GEN_675 // Ignored: Inlined leading underscore at Exercise1.v:454
	// Tracing: Exercise1 _GEN_686 // Ignored: Inlined leading underscore at Exercise1.v:455
	// Tracing: Exercise1 _GEN_694 // Ignored: Inlined leading underscore at Exercise1.v:456
	// Tracing: Exercise1 _GEN_702 // Ignored: Inlined leading underscore at Exercise1.v:457
	// Tracing: Exercise1 _GEN_710 // Ignored: Inlined leading underscore at Exercise1.v:458
	// Tracing: Exercise1 _GEN_718 // Ignored: Inlined leading underscore at Exercise1.v:459
	// Tracing: Exercise1 _GEN_726 // Ignored: Inlined leading underscore at Exercise1.v:460
	// Tracing: Exercise1 _GEN_734 // Ignored: Inlined leading underscore at Exercise1.v:461
	// Tracing: Exercise1 _GEN_742 // Ignored: Inlined leading underscore at Exercise1.v:462
	// Tracing: Exercise1 _GEN_750 // Ignored: Inlined leading underscore at Exercise1.v:463
	// Tracing: Exercise1 _GEN_758 // Ignored: Inlined leading underscore at Exercise1.v:464
	// Tracing: Exercise1 _GEN_766 // Ignored: Inlined leading underscore at Exercise1.v:465
	// Tracing: Exercise1 _GEN_774 // Ignored: Inlined leading underscore at Exercise1.v:466
	// Tracing: Exercise1 _GEN_794 // Ignored: Inlined leading underscore at Exercise1.v:467
	// Tracing: Exercise1 _GEN_802 // Ignored: Inlined leading underscore at Exercise1.v:468
	// Tracing: Exercise1 _GEN_810 // Ignored: Inlined leading underscore at Exercise1.v:469
	// Tracing: Exercise1 _GEN_818 // Ignored: Inlined leading underscore at Exercise1.v:470
	// Tracing: Exercise1 _GEN_826 // Ignored: Inlined leading underscore at Exercise1.v:471
	// Tracing: Exercise1 _GEN_834 // Ignored: Inlined leading underscore at Exercise1.v:472
	// Tracing: Exercise1 _GEN_842 // Ignored: Inlined leading underscore at Exercise1.v:473
	// Tracing: Exercise1 _GEN_850 // Ignored: Inlined leading underscore at Exercise1.v:474
	// Tracing: Exercise1 _GEN_858 // Ignored: Inlined leading underscore at Exercise1.v:475
	// Tracing: Exercise1 _GEN_866 // Ignored: Inlined leading underscore at Exercise1.v:476
	// Tracing: Exercise1 _GEN_874 // Ignored: Inlined leading underscore at Exercise1.v:477
	// Tracing: Exercise1 _GEN_882 // Ignored: Inlined leading underscore at Exercise1.v:478
	// Tracing: Exercise1 _GEN_890 // Ignored: Inlined leading underscore at Exercise1.v:479
	// Tracing: Exercise1 _GEN_910 // Ignored: Inlined leading underscore at Exercise1.v:480
	// Tracing: Exercise1 _GEN_918 // Ignored: Inlined leading underscore at Exercise1.v:481
	// Tracing: Exercise1 _GEN_926 // Ignored: Inlined leading underscore at Exercise1.v:482
	// Tracing: Exercise1 _GEN_934 // Ignored: Inlined leading underscore at Exercise1.v:483
	// Tracing: Exercise1 _GEN_942 // Ignored: Inlined leading underscore at Exercise1.v:484
	// Tracing: Exercise1 _GEN_950 // Ignored: Inlined leading underscore at Exercise1.v:485
	// Tracing: Exercise1 _GEN_958 // Ignored: Inlined leading underscore at Exercise1.v:486
	// Tracing: Exercise1 _GEN_966 // Ignored: Inlined leading underscore at Exercise1.v:487
	// Tracing: Exercise1 _GEN_974 // Ignored: Inlined leading underscore at Exercise1.v:488
	// Tracing: Exercise1 _GEN_982 // Ignored: Inlined leading underscore at Exercise1.v:489
	// Tracing: Exercise1 _GEN_990 // Ignored: Inlined leading underscore at Exercise1.v:490
	// Tracing: Exercise1 _GEN_998 // Ignored: Inlined leading underscore at Exercise1.v:491
	// Tracing: Exercise1 _GEN_1006 // Ignored: Inlined leading underscore at Exercise1.v:492
	// Tracing: Exercise1 _GEN_1014 // Ignored: Inlined leading underscore at Exercise1.v:493
	// Tracing: Exercise1 _GEN_1034 // Ignored: Inlined leading underscore at Exercise1.v:494
	// Tracing: Exercise1 _GEN_1042 // Ignored: Inlined leading underscore at Exercise1.v:495
	// Tracing: Exercise1 _GEN_1050 // Ignored: Inlined leading underscore at Exercise1.v:496
	// Tracing: Exercise1 _GEN_1058 // Ignored: Inlined leading underscore at Exercise1.v:497
	// Tracing: Exercise1 _GEN_1066 // Ignored: Inlined leading underscore at Exercise1.v:498
	// Tracing: Exercise1 _GEN_1074 // Ignored: Inlined leading underscore at Exercise1.v:499
	// Tracing: Exercise1 _GEN_1082 // Ignored: Inlined leading underscore at Exercise1.v:500
	// Tracing: Exercise1 _GEN_1090 // Ignored: Inlined leading underscore at Exercise1.v:501
	// Tracing: Exercise1 _GEN_1098 // Ignored: Inlined leading underscore at Exercise1.v:502
	// Tracing: Exercise1 _GEN_1106 // Ignored: Inlined leading underscore at Exercise1.v:503
	// Tracing: Exercise1 _GEN_1114 // Ignored: Inlined leading underscore at Exercise1.v:504
	// Tracing: Exercise1 _GEN_1122 // Ignored: Inlined leading underscore at Exercise1.v:505
	// Tracing: Exercise1 _GEN_1130 // Ignored: Inlined leading underscore at Exercise1.v:506
	// Tracing: Exercise1 _GEN_1138 // Ignored: Inlined leading underscore at Exercise1.v:507
	// Tracing: Exercise1 _GEN_1146 // Ignored: Inlined leading underscore at Exercise1.v:508
    }
}

void VExercise1::traceFullThis__1(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->fullBus  (c+1,(vlTOPp->Exercise1__DOT__Concat),4);
	vcdp->fullBus  (c+2,(vlTOPp->Exercise1__DOT__mem_0
			     [vlTOPp->Exercise1__DOT__mem_0_MPORT_16_addr_pipe_0]),8);
	vcdp->fullBus  (c+3,(vlTOPp->Exercise1__DOT__mem_0_MPORT_16_addr_pipe_0),10);
	vcdp->fullBus  (c+4,(vlTOPp->Exercise1__DOT__vector_0),8);
	vcdp->fullBit  (c+5,(vlTOPp->Exercise1__DOT__mem_0_MPORT_16_en_pipe_0));
	vcdp->fullBus  (c+6,(vlTOPp->Exercise1__DOT__mem_1
			     [vlTOPp->Exercise1__DOT__mem_1_MPORT_16_addr_pipe_0]),8);
	vcdp->fullBus  (c+7,(vlTOPp->Exercise1__DOT__mem_1_MPORT_16_addr_pipe_0),10);
	vcdp->fullBus  (c+8,(vlTOPp->Exercise1__DOT__vector_1),8);
	vcdp->fullBit  (c+9,(vlTOPp->Exercise1__DOT__mem_1_MPORT_16_en_pipe_0));
	vcdp->fullBus  (c+10,(vlTOPp->Exercise1__DOT__mem_2
			      [vlTOPp->Exercise1__DOT__mem_2_MPORT_16_addr_pipe_0]),8);
	vcdp->fullBus  (c+11,(vlTOPp->Exercise1__DOT__mem_2_MPORT_16_addr_pipe_0),10);
	vcdp->fullBus  (c+12,(vlTOPp->Exercise1__DOT__vector_2),8);
	vcdp->fullBit  (c+13,(vlTOPp->Exercise1__DOT__mem_2_MPORT_16_en_pipe_0));
	vcdp->fullBus  (c+14,(vlTOPp->Exercise1__DOT__mem_3
			      [vlTOPp->Exercise1__DOT__mem_3_MPORT_16_addr_pipe_0]),8);
	vcdp->fullBus  (c+15,(vlTOPp->Exercise1__DOT__mem_3_MPORT_16_addr_pipe_0),10);
	vcdp->fullBus  (c+16,(vlTOPp->Exercise1__DOT__vector_3),8);
	vcdp->fullBit  (c+17,(vlTOPp->Exercise1__DOT__mem_3_MPORT_16_en_pipe_0));
	vcdp->fullBit  (c+18,(vlTOPp->clock));
	vcdp->fullBit  (c+19,(vlTOPp->reset));
	vcdp->fullBit  (c+20,(vlTOPp->io_enable));
	vcdp->fullBit  (c+21,(vlTOPp->io_write));
	vcdp->fullBus  (c+22,(vlTOPp->io_addr),10);
	vcdp->fullBit  (c+23,(vlTOPp->io_mask_0));
	vcdp->fullBit  (c+24,(vlTOPp->io_mask_1));
	vcdp->fullBit  (c+25,(vlTOPp->io_mask_2));
	vcdp->fullBit  (c+26,(vlTOPp->io_mask_3));
	vcdp->fullBus  (c+27,(vlTOPp->io_dataIn_0),8);
	vcdp->fullBus  (c+28,(vlTOPp->io_dataIn_1),8);
	vcdp->fullBus  (c+29,(vlTOPp->io_dataIn_2),8);
	vcdp->fullBus  (c+30,(vlTOPp->io_dataIn_3),8);
	vcdp->fullBus  (c+31,(vlTOPp->io_dataOut_0),8);
	vcdp->fullBus  (c+32,(vlTOPp->io_dataOut_1),8);
	vcdp->fullBus  (c+33,(vlTOPp->io_dataOut_2),8);
	vcdp->fullBus  (c+34,(vlTOPp->io_dataOut_3),8);
	vcdp->fullBit  (c+35,(((IData)(vlTOPp->io_write) 
			       & (0U == (IData)(vlTOPp->Exercise1__DOT__Concat)))));
	vcdp->fullBit  (c+36,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1034))));
	vcdp->fullBit  (c+37,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1042))));
	vcdp->fullBit  (c+38,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1050))));
	vcdp->fullBit  (c+39,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1058))));
	vcdp->fullBit  (c+40,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1066))));
	vcdp->fullBit  (c+41,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1074))));
	vcdp->fullBit  (c+42,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1082))));
	vcdp->fullBit  (c+43,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1090))));
	vcdp->fullBit  (c+44,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1098))));
	vcdp->fullBit  (c+45,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1106))));
	vcdp->fullBit  (c+46,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1114))));
	vcdp->fullBit  (c+47,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1122))));
	vcdp->fullBit  (c+48,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1130))));
	vcdp->fullBit  (c+49,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1138))));
	vcdp->fullBit  (c+50,(((IData)(vlTOPp->io_write) 
			       & (IData)(vlTOPp->Exercise1__DOT___GEN_1146))));
	vcdp->fullBit  (c+51,(1U));
    }
}
