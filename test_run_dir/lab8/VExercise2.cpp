// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VExercise2.h for the primary calling header

#include "VExercise2.h"        // For This
#include "VExercise2__Syms.h"


//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(VExercise2) {
    VExercise2__Syms* __restrict vlSymsp = __VlSymsp = new VExercise2__Syms(this, name());
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VExercise2::__Vconfigure(VExercise2__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VExercise2::~VExercise2() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void VExercise2::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VExercise2::eval\n"); );
    VExercise2__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
#ifdef VL_DEBUG
    // Debug assertions
    _eval_debug_assertions();
#endif // VL_DEBUG
    // Initialize
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) _eval_initial_loop(vlSymsp);
    // Evaluate till stable
    int __VclockLoop = 0;
    QData __Vchange = 1;
    while (VL_LIKELY(__Vchange)) {
	VL_DEBUG_IF(VL_DBG_MSGF("+ Clock loop\n"););
	vlSymsp->__Vm_activity = true;
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (VL_UNLIKELY(++__VclockLoop > 100)) VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Verilated model didn't converge");
    }
}

void VExercise2::_eval_initial_loop(VExercise2__Syms* __restrict vlSymsp) {
    vlSymsp->__Vm_didInit = true;
    _eval_initial(vlSymsp);
    vlSymsp->__Vm_activity = true;
    int __VclockLoop = 0;
    QData __Vchange = 1;
    while (VL_LIKELY(__Vchange)) {
	_eval_settle(vlSymsp);
	_eval(vlSymsp);
	__Vchange = _change_request(vlSymsp);
	if (VL_UNLIKELY(++__VclockLoop > 100)) VL_FATAL_MT(__FILE__,__LINE__,__FILE__,"Verilated model didn't DC converge");
    }
}

//--------------------
// Internal Methods

VL_INLINE_OPT void VExercise2::_sequent__TOP__1(VExercise2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise2::_sequent__TOP__1\n"); );
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    VL_SIG8(__Vdlyvval__Exercise2__DOT__mem_0__v0,7,0);
    VL_SIG8(__Vdlyvset__Exercise2__DOT__mem_0__v0,0,0);
    VL_SIG8(__Vdlyvval__Exercise2__DOT__mem_1__v0,7,0);
    VL_SIG8(__Vdlyvset__Exercise2__DOT__mem_1__v0,0,0);
    VL_SIG16(__Vdlyvdim0__Exercise2__DOT__mem_0__v0,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise2__DOT__mem_1__v0,9,0);
    // Body
    __Vdlyvset__Exercise2__DOT__mem_0__v0 = 0U;
    __Vdlyvset__Exercise2__DOT__mem_1__v0 = 0U;
    // ALWAYS at Exercise2.v:63
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->io_mask_0))) {
	__Vdlyvval__Exercise2__DOT__mem_0__v0 = vlTOPp->io_data_in_0;
	__Vdlyvset__Exercise2__DOT__mem_0__v0 = 1U;
	__Vdlyvdim0__Exercise2__DOT__mem_0__v0 = vlTOPp->io_addr;
    }
    // ALWAYS at Exercise2.v:63
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->io_mask_1))) {
	__Vdlyvval__Exercise2__DOT__mem_1__v0 = vlTOPp->io_data_in_1;
	__Vdlyvset__Exercise2__DOT__mem_1__v0 = 1U;
	__Vdlyvdim0__Exercise2__DOT__mem_1__v0 = vlTOPp->io_addr;
    }
    // ALWAYS at Exercise2.v:63
    vlTOPp->Exercise2__DOT__mem_0_memData_addr_pipe_0 
	= vlTOPp->io_addr;
    vlTOPp->Exercise2__DOT__mem_1_memData_addr_pipe_0 
	= vlTOPp->io_addr;
    vlTOPp->Exercise2__DOT__wrDataReg_0 = vlTOPp->io_data_in_0;
    vlTOPp->Exercise2__DOT__wrDataReg_1 = vlTOPp->io_data_in_1;
    vlTOPp->Exercise2__DOT__doFowarding = ((IData)(vlTOPp->io_enable) 
					   & (IData)(vlTOPp->io_write));
    // ALWAYSPOST at Exercise2.v:64
    if (__Vdlyvset__Exercise2__DOT__mem_0__v0) {
	vlTOPp->Exercise2__DOT__mem_0[__Vdlyvdim0__Exercise2__DOT__mem_0__v0] 
	    = __Vdlyvval__Exercise2__DOT__mem_0__v0;
    }
    // ALWAYSPOST at Exercise2.v:68
    if (__Vdlyvset__Exercise2__DOT__mem_1__v0) {
	vlTOPp->Exercise2__DOT__mem_1[__Vdlyvdim0__Exercise2__DOT__mem_1__v0] 
	    = __Vdlyvval__Exercise2__DOT__mem_1__v0;
    }
}

VL_INLINE_OPT void VExercise2::_settle__TOP__2(VExercise2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise2::_settle__TOP__2\n"); );
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->io_data_out_0 = ((IData)(vlTOPp->Exercise2__DOT__doFowarding)
			      ? ((IData)(vlTOPp->Exercise2__DOT__doFowarding)
				  ? ((IData)(vlTOPp->io_mask_0)
				      ? (IData)(vlTOPp->Exercise2__DOT__wrDataReg_0)
				      : 0U) : 0U) : 
			     vlTOPp->Exercise2__DOT__mem_0
			     [vlTOPp->Exercise2__DOT__mem_0_memData_addr_pipe_0]);
    vlTOPp->io_data_out_1 = ((IData)(vlTOPp->Exercise2__DOT__doFowarding)
			      ? ((IData)(vlTOPp->Exercise2__DOT__doFowarding)
				  ? ((IData)(vlTOPp->io_mask_1)
				      ? (IData)(vlTOPp->Exercise2__DOT__wrDataReg_1)
				      : 0U) : 0U) : 
			     vlTOPp->Exercise2__DOT__mem_1
			     [vlTOPp->Exercise2__DOT__mem_1_memData_addr_pipe_0]);
}

void VExercise2::_eval(VExercise2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise2::_eval\n"); );
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
	vlTOPp->_sequent__TOP__1(vlSymsp);
	vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    vlTOPp->_settle__TOP__2(vlSymsp);
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VExercise2::_eval_initial(VExercise2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise2::_eval_initial\n"); );
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VExercise2::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise2::final\n"); );
    // Variables
    VExercise2__Syms* __restrict vlSymsp = this->__VlSymsp;
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VExercise2::_eval_settle(VExercise2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise2::_eval_settle\n"); );
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
}

VL_INLINE_OPT QData VExercise2::_change_request(VExercise2__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise2::_change_request\n"); );
    VExercise2* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VExercise2::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise2::_eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((clock & 0xfeU))) {
	Verilated::overWidthError("clock");}
    if (VL_UNLIKELY((reset & 0xfeU))) {
	Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((io_enable & 0xfeU))) {
	Verilated::overWidthError("io_enable");}
    if (VL_UNLIKELY((io_write & 0xfeU))) {
	Verilated::overWidthError("io_write");}
    if (VL_UNLIKELY((io_addr & 0xfc00U))) {
	Verilated::overWidthError("io_addr");}
    if (VL_UNLIKELY((io_mask_0 & 0xfeU))) {
	Verilated::overWidthError("io_mask_0");}
    if (VL_UNLIKELY((io_mask_1 & 0xfeU))) {
	Verilated::overWidthError("io_mask_1");}
}
#endif // VL_DEBUG

void VExercise2::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise2::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_enable = VL_RAND_RESET_I(1);
    io_write = VL_RAND_RESET_I(1);
    io_addr = VL_RAND_RESET_I(10);
    io_mask_0 = VL_RAND_RESET_I(1);
    io_mask_1 = VL_RAND_RESET_I(1);
    io_data_in_0 = VL_RAND_RESET_I(8);
    io_data_in_1 = VL_RAND_RESET_I(8);
    io_data_out_0 = VL_RAND_RESET_I(8);
    io_data_out_1 = VL_RAND_RESET_I(8);
    { int __Vi0=0; for (; __Vi0<1024; ++__Vi0) {
	    Exercise2__DOT__mem_0[__Vi0] = VL_RAND_RESET_I(8);
    }}
    Exercise2__DOT__mem_0_memData_addr_pipe_0 = VL_RAND_RESET_I(10);
    { int __Vi0=0; for (; __Vi0<1024; ++__Vi0) {
	    Exercise2__DOT__mem_1[__Vi0] = VL_RAND_RESET_I(8);
    }}
    Exercise2__DOT__mem_1_memData_addr_pipe_0 = VL_RAND_RESET_I(10);
    Exercise2__DOT__wrDataReg_0 = VL_RAND_RESET_I(8);
    Exercise2__DOT__wrDataReg_1 = VL_RAND_RESET_I(8);
    Exercise2__DOT__doFowarding = VL_RAND_RESET_I(1);
    __Vclklast__TOP__clock = VL_RAND_RESET_I(1);
    __Vm_traceActivity = VL_RAND_RESET_I(32);
}
