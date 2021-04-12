// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VExercise2__Syms.h"


//======================

void VExercise2::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VExercise2* t=(VExercise2*)userthis;
    VExercise2__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
	t->traceChgThis (vlSymsp, vcdp, code);
    }
}

//======================


void VExercise2::traceChgThis(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	if (VL_UNLIKELY((2U & vlTOPp->__Vm_traceActivity))) {
	    vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
	}
	vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VExercise2::traceChgThis__2(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBus  (c+1,(vlTOPp->Exercise2__DOT__mem_0
			    [vlTOPp->Exercise2__DOT__mem_0_memData_addr_pipe_0]),8);
	vcdp->chgBus  (c+2,(vlTOPp->Exercise2__DOT__mem_0_memData_addr_pipe_0),10);
	vcdp->chgBus  (c+3,(vlTOPp->Exercise2__DOT__mem_1
			    [vlTOPp->Exercise2__DOT__mem_1_memData_addr_pipe_0]),8);
	vcdp->chgBus  (c+4,(vlTOPp->Exercise2__DOT__mem_1_memData_addr_pipe_0),10);
	vcdp->chgBus  (c+5,(vlTOPp->Exercise2__DOT__wrDataReg_0),8);
	vcdp->chgBus  (c+6,(vlTOPp->Exercise2__DOT__wrDataReg_1),8);
	vcdp->chgBit  (c+7,(vlTOPp->Exercise2__DOT__doFowarding));
    }
}

void VExercise2::traceChgThis__3(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBit  (c+8,(vlTOPp->clock));
	vcdp->chgBit  (c+9,(vlTOPp->reset));
	vcdp->chgBit  (c+10,(vlTOPp->io_enable));
	vcdp->chgBit  (c+11,(vlTOPp->io_write));
	vcdp->chgBus  (c+12,(vlTOPp->io_addr),10);
	vcdp->chgBit  (c+13,(vlTOPp->io_mask_0));
	vcdp->chgBit  (c+14,(vlTOPp->io_mask_1));
	vcdp->chgBus  (c+15,(vlTOPp->io_data_in_0),8);
	vcdp->chgBus  (c+16,(vlTOPp->io_data_in_1),8);
	vcdp->chgBus  (c+17,(vlTOPp->io_data_out_0),8);
	vcdp->chgBus  (c+18,(vlTOPp->io_data_out_1),8);
    }
}
