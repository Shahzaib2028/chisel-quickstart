// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VExercise2__Syms.h"


//======================

void VExercise2::trace (VerilatedVcdC* tfp, int, int) {
    tfp->spTrace()->addCallback (&VExercise2::traceInit, &VExercise2::traceFull, &VExercise2::traceChg, this);
}
void VExercise2::traceInit(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->open()
    VExercise2* t=(VExercise2*)userthis;
    VExercise2__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (!Verilated::calcUnusedSigs()) VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    vcdp->scopeEscape(' ');
    t->traceInitThis (vlSymsp, vcdp, code);
    vcdp->scopeEscape('.');
}
void VExercise2::traceFull(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VExercise2* t=(VExercise2*)userthis;
    VExercise2__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    t->traceFullThis (vlSymsp, vcdp, code);
}

//======================


void VExercise2::traceInitThis(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    vcdp->module(vlSymsp->name());  // Setup signal names
    // Body
    {
	vlTOPp->traceInitThis__1(vlSymsp, vcdp, code);
    }
}

void VExercise2::traceFullThis(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vlTOPp->traceFullThis__1(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VExercise2::traceInitThis__1(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->declBit  (c+8,"clock",-1);
	vcdp->declBit  (c+9,"reset",-1);
	vcdp->declBit  (c+10,"io_enable",-1);
	vcdp->declBit  (c+11,"io_write",-1);
	vcdp->declBus  (c+12,"io_addr",-1,9,0);
	vcdp->declBit  (c+13,"io_mask_0",-1);
	vcdp->declBit  (c+14,"io_mask_1",-1);
	vcdp->declBus  (c+15,"io_data_in_0",-1,7,0);
	vcdp->declBus  (c+16,"io_data_in_1",-1,7,0);
	vcdp->declBus  (c+17,"io_data_out_0",-1,7,0);
	vcdp->declBus  (c+18,"io_data_out_1",-1,7,0);
	vcdp->declBit  (c+8,"Exercise2 clock",-1);
	vcdp->declBit  (c+9,"Exercise2 reset",-1);
	vcdp->declBit  (c+10,"Exercise2 io_enable",-1);
	vcdp->declBit  (c+11,"Exercise2 io_write",-1);
	vcdp->declBus  (c+12,"Exercise2 io_addr",-1,9,0);
	vcdp->declBit  (c+13,"Exercise2 io_mask_0",-1);
	vcdp->declBit  (c+14,"Exercise2 io_mask_1",-1);
	vcdp->declBus  (c+15,"Exercise2 io_data_in_0",-1,7,0);
	vcdp->declBus  (c+16,"Exercise2 io_data_in_1",-1,7,0);
	vcdp->declBus  (c+17,"Exercise2 io_data_out_0",-1,7,0);
	vcdp->declBus  (c+18,"Exercise2 io_data_out_1",-1,7,0);
	// Tracing: Exercise2 mem_0 // Ignored: Wide memory > --trace-max-array ents at Exercise2.v:25
	vcdp->declBus  (c+1,"Exercise2 mem_0_memData_data",-1,7,0);
	vcdp->declBus  (c+2,"Exercise2 mem_0_memData_addr",-1,9,0);
	vcdp->declBus  (c+15,"Exercise2 mem_0_MPORT_data",-1,7,0);
	vcdp->declBus  (c+12,"Exercise2 mem_0_MPORT_addr",-1,9,0);
	vcdp->declBit  (c+13,"Exercise2 mem_0_MPORT_mask",-1);
	vcdp->declBit  (c+11,"Exercise2 mem_0_MPORT_en",-1);
	vcdp->declBus  (c+2,"Exercise2 mem_0_memData_addr_pipe_0",-1,9,0);
	// Tracing: Exercise2 mem_1 // Ignored: Wide memory > --trace-max-array ents at Exercise2.v:33
	vcdp->declBus  (c+3,"Exercise2 mem_1_memData_data",-1,7,0);
	vcdp->declBus  (c+4,"Exercise2 mem_1_memData_addr",-1,9,0);
	vcdp->declBus  (c+16,"Exercise2 mem_1_MPORT_data",-1,7,0);
	vcdp->declBus  (c+12,"Exercise2 mem_1_MPORT_addr",-1,9,0);
	vcdp->declBit  (c+14,"Exercise2 mem_1_MPORT_mask",-1);
	vcdp->declBit  (c+11,"Exercise2 mem_1_MPORT_en",-1);
	vcdp->declBus  (c+4,"Exercise2 mem_1_memData_addr_pipe_0",-1,9,0);
	vcdp->declBus  (c+5,"Exercise2 wrDataReg_0",-1,7,0);
	vcdp->declBus  (c+6,"Exercise2 wrDataReg_1",-1,7,0);
	vcdp->declBit  (c+7,"Exercise2 doFowarding",-1);
	// Tracing: Exercise2 _io_data_out_0_T // Ignored: Inlined leading underscore at Exercise2.v:44
	// Tracing: Exercise2 _io_data_out_0_T_1 // Ignored: Inlined leading underscore at Exercise2.v:45
	// Tracing: Exercise2 _io_data_out_1_T // Ignored: Inlined leading underscore at Exercise2.v:46
	// Tracing: Exercise2 _io_data_out_1_T_1 // Ignored: Inlined leading underscore at Exercise2.v:47
    }
}

void VExercise2::traceFullThis__1(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->fullBus  (c+1,(vlTOPp->Exercise2__DOT__mem_0
			     [vlTOPp->Exercise2__DOT__mem_0_memData_addr_pipe_0]),8);
	vcdp->fullBus  (c+2,(vlTOPp->Exercise2__DOT__mem_0_memData_addr_pipe_0),10);
	vcdp->fullBus  (c+3,(vlTOPp->Exercise2__DOT__mem_1
			     [vlTOPp->Exercise2__DOT__mem_1_memData_addr_pipe_0]),8);
	vcdp->fullBus  (c+4,(vlTOPp->Exercise2__DOT__mem_1_memData_addr_pipe_0),10);
	vcdp->fullBus  (c+5,(vlTOPp->Exercise2__DOT__wrDataReg_0),8);
	vcdp->fullBus  (c+6,(vlTOPp->Exercise2__DOT__wrDataReg_1),8);
	vcdp->fullBit  (c+7,(vlTOPp->Exercise2__DOT__doFowarding));
	vcdp->fullBit  (c+8,(vlTOPp->clock));
	vcdp->fullBit  (c+9,(vlTOPp->reset));
	vcdp->fullBit  (c+10,(vlTOPp->io_enable));
	vcdp->fullBit  (c+11,(vlTOPp->io_write));
	vcdp->fullBus  (c+12,(vlTOPp->io_addr),10);
	vcdp->fullBit  (c+13,(vlTOPp->io_mask_0));
	vcdp->fullBit  (c+14,(vlTOPp->io_mask_1));
	vcdp->fullBus  (c+15,(vlTOPp->io_data_in_0),8);
	vcdp->fullBus  (c+16,(vlTOPp->io_data_in_1),8);
	vcdp->fullBus  (c+17,(vlTOPp->io_data_out_0),8);
	vcdp->fullBus  (c+18,(vlTOPp->io_data_out_1),8);
    }
}
