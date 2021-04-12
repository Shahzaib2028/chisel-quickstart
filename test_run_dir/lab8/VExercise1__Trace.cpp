// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VExercise1__Syms.h"


//======================

void VExercise1::traceChg(VerilatedVcd* vcdp, void* userthis, uint32_t code) {
    // Callback from vcd->dump()
    VExercise1* t=(VExercise1*)userthis;
    VExercise1__Syms* __restrict vlSymsp = t->__VlSymsp;  // Setup global symbol table
    if (vlSymsp->getClearActivity()) {
	t->traceChgThis (vlSymsp, vcdp, code);
    }
}

//======================


void VExercise1::traceChgThis(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	if (VL_UNLIKELY((1U & (vlTOPp->__Vm_traceActivity 
			       | (vlTOPp->__Vm_traceActivity 
				  >> 2U))))) {
	    vlTOPp->traceChgThis__2(vlSymsp, vcdp, code);
	}
	if (VL_UNLIKELY((2U & vlTOPp->__Vm_traceActivity))) {
	    vlTOPp->traceChgThis__3(vlSymsp, vcdp, code);
	}
	vlTOPp->traceChgThis__4(vlSymsp, vcdp, code);
    }
    // Final
    vlTOPp->__Vm_traceActivity = 0U;
}

void VExercise1::traceChgThis__2(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBus  (c+1,(vlTOPp->Exercise1__DOT__Concat),4);
    }
}

void VExercise1::traceChgThis__3(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBus  (c+2,(vlTOPp->Exercise1__DOT__mem_0
			    [vlTOPp->Exercise1__DOT__mem_0_MPORT_16_addr_pipe_0]),8);
	vcdp->chgBus  (c+3,(vlTOPp->Exercise1__DOT__mem_0_MPORT_16_addr_pipe_0),10);
	vcdp->chgBus  (c+4,(vlTOPp->Exercise1__DOT__vector_0),8);
	vcdp->chgBit  (c+5,(vlTOPp->Exercise1__DOT__mem_0_MPORT_16_en_pipe_0));
	vcdp->chgBus  (c+6,(vlTOPp->Exercise1__DOT__mem_1
			    [vlTOPp->Exercise1__DOT__mem_1_MPORT_16_addr_pipe_0]),8);
	vcdp->chgBus  (c+7,(vlTOPp->Exercise1__DOT__mem_1_MPORT_16_addr_pipe_0),10);
	vcdp->chgBus  (c+8,(vlTOPp->Exercise1__DOT__vector_1),8);
	vcdp->chgBit  (c+9,(vlTOPp->Exercise1__DOT__mem_1_MPORT_16_en_pipe_0));
	vcdp->chgBus  (c+10,(vlTOPp->Exercise1__DOT__mem_2
			     [vlTOPp->Exercise1__DOT__mem_2_MPORT_16_addr_pipe_0]),8);
	vcdp->chgBus  (c+11,(vlTOPp->Exercise1__DOT__mem_2_MPORT_16_addr_pipe_0),10);
	vcdp->chgBus  (c+12,(vlTOPp->Exercise1__DOT__vector_2),8);
	vcdp->chgBit  (c+13,(vlTOPp->Exercise1__DOT__mem_2_MPORT_16_en_pipe_0));
	vcdp->chgBus  (c+14,(vlTOPp->Exercise1__DOT__mem_3
			     [vlTOPp->Exercise1__DOT__mem_3_MPORT_16_addr_pipe_0]),8);
	vcdp->chgBus  (c+15,(vlTOPp->Exercise1__DOT__mem_3_MPORT_16_addr_pipe_0),10);
	vcdp->chgBus  (c+16,(vlTOPp->Exercise1__DOT__vector_3),8);
	vcdp->chgBit  (c+17,(vlTOPp->Exercise1__DOT__mem_3_MPORT_16_en_pipe_0));
    }
}

void VExercise1::traceChgThis__4(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code) {
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    int c=code;
    if (0 && vcdp && c) {}  // Prevent unused
    // Body
    {
	vcdp->chgBit  (c+18,(vlTOPp->clock));
	vcdp->chgBit  (c+19,(vlTOPp->reset));
	vcdp->chgBit  (c+20,(vlTOPp->io_enable));
	vcdp->chgBit  (c+21,(vlTOPp->io_write));
	vcdp->chgBus  (c+22,(vlTOPp->io_addr),10);
	vcdp->chgBit  (c+23,(vlTOPp->io_mask_0));
	vcdp->chgBit  (c+24,(vlTOPp->io_mask_1));
	vcdp->chgBit  (c+25,(vlTOPp->io_mask_2));
	vcdp->chgBit  (c+26,(vlTOPp->io_mask_3));
	vcdp->chgBus  (c+27,(vlTOPp->io_dataIn_0),8);
	vcdp->chgBus  (c+28,(vlTOPp->io_dataIn_1),8);
	vcdp->chgBus  (c+29,(vlTOPp->io_dataIn_2),8);
	vcdp->chgBus  (c+30,(vlTOPp->io_dataIn_3),8);
	vcdp->chgBus  (c+31,(vlTOPp->io_dataOut_0),8);
	vcdp->chgBus  (c+32,(vlTOPp->io_dataOut_1),8);
	vcdp->chgBus  (c+33,(vlTOPp->io_dataOut_2),8);
	vcdp->chgBus  (c+34,(vlTOPp->io_dataOut_3),8);
	vcdp->chgBit  (c+35,(((IData)(vlTOPp->io_write) 
			      & (0U == (IData)(vlTOPp->Exercise1__DOT__Concat)))));
	vcdp->chgBit  (c+36,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1034))));
	vcdp->chgBit  (c+37,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1042))));
	vcdp->chgBit  (c+38,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1050))));
	vcdp->chgBit  (c+39,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1058))));
	vcdp->chgBit  (c+40,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1066))));
	vcdp->chgBit  (c+41,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1074))));
	vcdp->chgBit  (c+42,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1082))));
	vcdp->chgBit  (c+43,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1090))));
	vcdp->chgBit  (c+44,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1098))));
	vcdp->chgBit  (c+45,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1106))));
	vcdp->chgBit  (c+46,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1114))));
	vcdp->chgBit  (c+47,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1122))));
	vcdp->chgBit  (c+48,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1130))));
	vcdp->chgBit  (c+49,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1138))));
	vcdp->chgBit  (c+50,(((IData)(vlTOPp->io_write) 
			      & (IData)(vlTOPp->Exercise1__DOT___GEN_1146))));
    }
}
