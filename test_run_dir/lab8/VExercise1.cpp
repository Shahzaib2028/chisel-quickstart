// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VExercise1.h for the primary calling header

#include "VExercise1.h"        // For This
#include "VExercise1__Syms.h"


//--------------------
// STATIC VARIABLES


//--------------------

VL_CTOR_IMP(VExercise1) {
    VExercise1__Syms* __restrict vlSymsp = __VlSymsp = new VExercise1__Syms(this, name());
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Reset internal values
    
    // Reset structure values
    _ctor_var_reset();
}

void VExercise1::__Vconfigure(VExercise1__Syms* vlSymsp, bool first) {
    if (0 && first) {}  // Prevent unused
    this->__VlSymsp = vlSymsp;
}

VExercise1::~VExercise1() {
    delete __VlSymsp; __VlSymsp=NULL;
}

//--------------------


void VExercise1::eval() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VExercise1::eval\n"); );
    VExercise1__Syms* __restrict vlSymsp = this->__VlSymsp;  // Setup global symbol table
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
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

void VExercise1::_eval_initial_loop(VExercise1__Syms* __restrict vlSymsp) {
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

VL_INLINE_OPT void VExercise1::_sequent__TOP__1(VExercise1__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::_sequent__TOP__1\n"); );
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Variables
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v0,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v0,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v1,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v1,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v2,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v2,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v3,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v3,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v4,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v4,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v5,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v5,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v6,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v6,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v7,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v7,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v8,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v8,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v9,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v9,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v10,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v10,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v11,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v11,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v12,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v12,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v13,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v13,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v14,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v14,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_0__v15,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_0__v15,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v0,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v0,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v1,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v1,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v2,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v2,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v3,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v3,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v4,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v4,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v5,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v5,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v6,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v6,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v7,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v7,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v8,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v8,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v9,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v9,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v10,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v10,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v11,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v11,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v12,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v12,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v13,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v13,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v14,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v14,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_1__v15,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_1__v15,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v0,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v0,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v1,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v1,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v2,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v2,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v3,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v3,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v4,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v4,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v5,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v5,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v6,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v6,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v7,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v7,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v8,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v8,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v9,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v9,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v10,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v10,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v11,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v11,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v12,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v12,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v13,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v13,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v14,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v14,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_2__v15,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_2__v15,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v0,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v0,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v1,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v1,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v2,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v2,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v3,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v3,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v4,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v4,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v5,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v5,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v6,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v6,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v7,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v7,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v8,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v8,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v9,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v9,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v10,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v10,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v11,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v11,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v12,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v12,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v13,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v13,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v14,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v14,0,0);
    VL_SIG8(__Vdlyvval__Exercise1__DOT__mem_3__v15,7,0);
    VL_SIG8(__Vdlyvset__Exercise1__DOT__mem_3__v15,0,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v0,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v1,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v2,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v3,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v4,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v5,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v6,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v7,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v8,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v9,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v10,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v11,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v12,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v13,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v14,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_0__v15,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v0,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v1,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v2,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v3,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v4,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v5,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v6,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v7,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v8,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v9,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v10,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v11,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v12,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v13,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v14,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_1__v15,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v0,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v1,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v2,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v3,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v4,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v5,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v6,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v7,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v8,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v9,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v10,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v11,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v12,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v13,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v14,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_2__v15,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v0,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v1,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v2,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v3,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v4,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v5,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v6,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v7,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v8,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v9,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v10,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v11,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v12,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v13,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v14,9,0);
    VL_SIG16(__Vdlyvdim0__Exercise1__DOT__mem_3__v15,9,0);
    // Body
    __Vdlyvset__Exercise1__DOT__mem_0__v0 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v1 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v2 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v3 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v4 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v5 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v6 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v7 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v8 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v9 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v10 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v11 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v12 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v13 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v14 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_0__v15 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v0 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v1 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v2 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v3 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v4 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v5 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v6 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v7 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v8 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v9 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v10 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v11 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v12 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v13 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v14 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_1__v15 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v0 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v1 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v2 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v3 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v4 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v5 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v6 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v7 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v8 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v9 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v10 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v11 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v12 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v13 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v14 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_2__v15 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v0 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v1 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v2 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v3 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v4 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v5 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v6 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v7 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v8 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v9 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v10 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v11 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v12 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v13 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v14 = 0U;
    __Vdlyvset__Exercise1__DOT__mem_3__v15 = 0U;
    // ALWAYS at Exercise1.v:778
    if (((IData)(vlTOPp->io_write) & (0U == (IData)(vlTOPp->Exercise1__DOT__Concat)))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v0 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v0 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v0 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1034))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v1 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v1 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v1 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1042))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v2 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v2 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v2 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1050))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v3 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v3 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v3 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1058))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v4 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v4 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v4 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1066))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v5 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v5 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v5 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1074))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v6 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v6 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v6 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1082))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v7 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v7 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v7 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1090))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v8 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v8 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v8 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1098))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v9 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v9 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v9 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1106))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v10 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v10 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v10 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1114))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v11 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v11 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v11 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1122))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v12 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v12 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v12 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1130))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v13 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v13 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v13 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1138))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v14 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v14 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v14 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1146))) {
	__Vdlyvval__Exercise1__DOT__mem_0__v15 = vlTOPp->Exercise1__DOT__vector_0;
	__Vdlyvset__Exercise1__DOT__mem_0__v15 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_0__v15 = vlTOPp->io_addr;
    }
    // ALWAYS at Exercise1.v:778
    if (((IData)(vlTOPp->io_write) & (0U == (IData)(vlTOPp->Exercise1__DOT__Concat)))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v0 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v0 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v0 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1034))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v1 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v1 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v1 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1042))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v2 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v2 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v2 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1050))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v3 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v3 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v3 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1058))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v4 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v4 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v4 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1066))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v5 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v5 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v5 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1074))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v6 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v6 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v6 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1082))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v7 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v7 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v7 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1090))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v8 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v8 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v8 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1098))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v9 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v9 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v9 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1106))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v10 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v10 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v10 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1114))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v11 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v11 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v11 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1122))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v12 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v12 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v12 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1130))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v13 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v13 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v13 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1138))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v14 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v14 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v14 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1146))) {
	__Vdlyvval__Exercise1__DOT__mem_1__v15 = vlTOPp->Exercise1__DOT__vector_1;
	__Vdlyvset__Exercise1__DOT__mem_1__v15 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_1__v15 = vlTOPp->io_addr;
    }
    // ALWAYS at Exercise1.v:778
    if (((IData)(vlTOPp->io_write) & (0U == (IData)(vlTOPp->Exercise1__DOT__Concat)))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v0 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v0 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v0 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1034))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v1 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v1 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v1 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1042))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v2 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v2 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v2 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1050))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v3 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v3 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v3 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1058))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v4 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v4 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v4 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1066))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v5 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v5 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v5 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1074))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v6 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v6 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v6 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1082))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v7 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v7 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v7 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1090))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v8 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v8 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v8 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1098))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v9 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v9 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v9 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1106))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v10 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v10 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v10 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1114))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v11 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v11 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v11 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1122))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v12 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v12 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v12 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1130))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v13 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v13 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v13 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1138))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v14 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v14 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v14 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1146))) {
	__Vdlyvval__Exercise1__DOT__mem_2__v15 = vlTOPp->Exercise1__DOT__vector_2;
	__Vdlyvset__Exercise1__DOT__mem_2__v15 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_2__v15 = vlTOPp->io_addr;
    }
    // ALWAYS at Exercise1.v:778
    if (((IData)(vlTOPp->io_write) & (0U == (IData)(vlTOPp->Exercise1__DOT__Concat)))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v0 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v0 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v0 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1034))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v1 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v1 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v1 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1042))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v2 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v2 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v2 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1050))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v3 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v3 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v3 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1058))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v4 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v4 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v4 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1066))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v5 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v5 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v5 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1074))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v6 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v6 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v6 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1082))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v7 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v7 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v7 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1090))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v8 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v8 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v8 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1098))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v9 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v9 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v9 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1106))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v10 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v10 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v10 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1114))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v11 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v11 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v11 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1122))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v12 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v12 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v12 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1130))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v13 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v13 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v13 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1138))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v14 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v14 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v14 = vlTOPp->io_addr;
    }
    if (((IData)(vlTOPp->io_write) & (IData)(vlTOPp->Exercise1__DOT___GEN_1146))) {
	__Vdlyvval__Exercise1__DOT__mem_3__v15 = vlTOPp->Exercise1__DOT__vector_3;
	__Vdlyvset__Exercise1__DOT__mem_3__v15 = 1U;
	__Vdlyvdim0__Exercise1__DOT__mem_3__v15 = vlTOPp->io_addr;
    }
    // ALWAYSPOST at Exercise1.v:779
    if (__Vdlyvset__Exercise1__DOT__mem_0__v0) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v0] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v0;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v1) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v1] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v1;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v2) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v2] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v2;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v3) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v3] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v3;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v4) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v4] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v4;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v5) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v5] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v5;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v6) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v6] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v6;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v7) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v7] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v7;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v8) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v8] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v8;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v9) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v9] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v9;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v10) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v10] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v10;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v11) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v11] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v11;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v12) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v12] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v12;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v13) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v13] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v13;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v14) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v14] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v14;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_0__v15) {
	vlTOPp->Exercise1__DOT__mem_0[__Vdlyvdim0__Exercise1__DOT__mem_0__v15] 
	    = __Vdlyvval__Exercise1__DOT__mem_0__v15;
    }
    // ALWAYSPOST at Exercise1.v:831
    if (__Vdlyvset__Exercise1__DOT__mem_1__v0) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v0] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v0;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v1) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v1] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v1;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v2) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v2] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v2;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v3) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v3] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v3;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v4) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v4] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v4;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v5) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v5] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v5;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v6) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v6] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v6;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v7) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v7] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v7;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v8) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v8] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v8;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v9) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v9] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v9;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v10) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v10] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v10;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v11) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v11] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v11;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v12) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v12] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v12;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v13) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v13] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v13;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v14) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v14] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v14;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_1__v15) {
	vlTOPp->Exercise1__DOT__mem_1[__Vdlyvdim0__Exercise1__DOT__mem_1__v15] 
	    = __Vdlyvval__Exercise1__DOT__mem_1__v15;
    }
    // ALWAYSPOST at Exercise1.v:883
    if (__Vdlyvset__Exercise1__DOT__mem_2__v0) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v0] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v0;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v1) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v1] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v1;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v2) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v2] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v2;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v3) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v3] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v3;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v4) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v4] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v4;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v5) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v5] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v5;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v6) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v6] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v6;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v7) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v7] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v7;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v8) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v8] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v8;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v9) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v9] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v9;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v10) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v10] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v10;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v11) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v11] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v11;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v12) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v12] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v12;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v13) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v13] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v13;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v14) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v14] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v14;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_2__v15) {
	vlTOPp->Exercise1__DOT__mem_2[__Vdlyvdim0__Exercise1__DOT__mem_2__v15] 
	    = __Vdlyvval__Exercise1__DOT__mem_2__v15;
    }
    // ALWAYSPOST at Exercise1.v:935
    if (__Vdlyvset__Exercise1__DOT__mem_3__v0) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v0] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v0;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v1) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v1] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v1;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v2) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v2] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v2;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v3) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v3] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v3;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v4) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v4] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v4;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v5) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v5] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v5;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v6) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v6] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v6;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v7) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v7] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v7;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v8) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v8] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v8;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v9) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v9] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v9;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v10) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v10] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v10;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v11) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v11] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v11;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v12) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v12] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v12;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v13) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v13] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v13;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v14) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v14] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v14;
    }
    if (__Vdlyvset__Exercise1__DOT__mem_3__v15) {
	vlTOPp->Exercise1__DOT__mem_3[__Vdlyvdim0__Exercise1__DOT__mem_3__v15] 
	    = __Vdlyvval__Exercise1__DOT__mem_3__v15;
    }
    // ALWAYS at Exercise1.v:778
    vlTOPp->Exercise1__DOT__mem_0_MPORT_16_en_pipe_0 
	= vlTOPp->io_enable;
    if (vlTOPp->io_enable) {
	vlTOPp->Exercise1__DOT__mem_0_MPORT_16_addr_pipe_0 
	    = vlTOPp->io_addr;
    }
    vlTOPp->Exercise1__DOT__mem_1_MPORT_16_en_pipe_0 
	= vlTOPp->io_enable;
    if (vlTOPp->io_enable) {
	vlTOPp->Exercise1__DOT__mem_1_MPORT_16_addr_pipe_0 
	    = vlTOPp->io_addr;
    }
    vlTOPp->Exercise1__DOT__mem_2_MPORT_16_en_pipe_0 
	= vlTOPp->io_enable;
    if (vlTOPp->io_enable) {
	vlTOPp->Exercise1__DOT__mem_2_MPORT_16_addr_pipe_0 
	    = vlTOPp->io_addr;
    }
    vlTOPp->Exercise1__DOT__mem_3_MPORT_16_en_pipe_0 
	= vlTOPp->io_enable;
    if (vlTOPp->io_enable) {
	vlTOPp->Exercise1__DOT__mem_3_MPORT_16_addr_pipe_0 
	    = vlTOPp->io_addr;
    }
    if (vlTOPp->io_write) {
	vlTOPp->Exercise1__DOT__vector_0 = ((0U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					     ? 0U : 
					    ((1U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					      ? (IData)(vlTOPp->io_dataIn_0)
					      : ((2U 
						  == (IData)(vlTOPp->Exercise1__DOT__Concat))
						  ? 0U
						  : (IData)(vlTOPp->Exercise1__DOT___GEN_672))));
    }
    if (vlTOPp->io_write) {
	vlTOPp->Exercise1__DOT__vector_1 = ((0U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					     ? 0U : 
					    ((1U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					      ? 0U : 
					     ((2U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					       ? (IData)(vlTOPp->io_dataIn_1)
					       : (IData)(vlTOPp->Exercise1__DOT___GEN_673))));
    }
    if (vlTOPp->io_write) {
	vlTOPp->Exercise1__DOT__vector_2 = ((0U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					     ? 0U : 
					    ((1U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					      ? 0U : 
					     ((2U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					       ? 0U
					       : (IData)(vlTOPp->Exercise1__DOT___GEN_674))));
    }
    if (vlTOPp->io_write) {
	vlTOPp->Exercise1__DOT__vector_3 = ((0U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					     ? 0U : 
					    ((1U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					      ? 0U : 
					     ((2U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					       ? 0U
					       : (IData)(vlTOPp->Exercise1__DOT___GEN_675))));
    }
    vlTOPp->io_dataOut_0 = vlTOPp->Exercise1__DOT__mem_0
	[vlTOPp->Exercise1__DOT__mem_0_MPORT_16_addr_pipe_0];
    vlTOPp->io_dataOut_1 = vlTOPp->Exercise1__DOT__mem_1
	[vlTOPp->Exercise1__DOT__mem_1_MPORT_16_addr_pipe_0];
    vlTOPp->io_dataOut_2 = vlTOPp->Exercise1__DOT__mem_2
	[vlTOPp->Exercise1__DOT__mem_2_MPORT_16_addr_pipe_0];
    vlTOPp->io_dataOut_3 = vlTOPp->Exercise1__DOT__mem_3
	[vlTOPp->Exercise1__DOT__mem_3_MPORT_16_addr_pipe_0];
}

void VExercise1::_settle__TOP__2(VExercise1__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::_settle__TOP__2\n"); );
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->Exercise1__DOT__Concat = (((IData)(vlTOPp->io_mask_3) 
				       << 3U) | (((IData)(vlTOPp->io_mask_2) 
						  << 2U) 
						 | (((IData)(vlTOPp->io_mask_1) 
						     << 1U) 
						    | (IData)(vlTOPp->io_mask_0))));
    vlTOPp->io_dataOut_0 = vlTOPp->Exercise1__DOT__mem_0
	[vlTOPp->Exercise1__DOT__mem_0_MPORT_16_addr_pipe_0];
    vlTOPp->io_dataOut_1 = vlTOPp->Exercise1__DOT__mem_1
	[vlTOPp->Exercise1__DOT__mem_1_MPORT_16_addr_pipe_0];
    vlTOPp->io_dataOut_2 = vlTOPp->Exercise1__DOT__mem_2
	[vlTOPp->Exercise1__DOT__mem_2_MPORT_16_addr_pipe_0];
    vlTOPp->io_dataOut_3 = vlTOPp->Exercise1__DOT__mem_3
	[vlTOPp->Exercise1__DOT__mem_3_MPORT_16_addr_pipe_0];
    vlTOPp->Exercise1__DOT___GEN_1034 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & (1U == (IData)(vlTOPp->Exercise1__DOT__Concat)));
    vlTOPp->Exercise1__DOT___GEN_1042 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & (2U == (IData)(vlTOPp->Exercise1__DOT__Concat))));
    vlTOPp->Exercise1__DOT___GEN_1050 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & (3U 
						  == (IData)(vlTOPp->Exercise1__DOT__Concat)))));
    vlTOPp->Exercise1__DOT___GEN_1058 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & (4U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))))));
    vlTOPp->Exercise1__DOT___GEN_1066 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & (5U 
							== (IData)(vlTOPp->Exercise1__DOT__Concat)))))));
    vlTOPp->Exercise1__DOT___GEN_1074 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& (6U 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))))))));
    vlTOPp->Exercise1__DOT___GEN_1082 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & (7U 
							      == (IData)(vlTOPp->Exercise1__DOT__Concat)))))))));
    vlTOPp->Exercise1__DOT___GEN_1090 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & (8U 
								 == (IData)(vlTOPp->Exercise1__DOT__Concat))))))))));
    vlTOPp->Exercise1__DOT___GEN_1098 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & (9U 
								    == (IData)(vlTOPp->Exercise1__DOT__Concat)))))))))));
    vlTOPp->Exercise1__DOT___GEN_1106 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & (0xaU 
								       == (IData)(vlTOPp->Exercise1__DOT__Concat))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1114 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & (0xbU 
									  == (IData)(vlTOPp->Exercise1__DOT__Concat)))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1122 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & ((0xbU 
									   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									  & (0xcU 
									     == (IData)(vlTOPp->Exercise1__DOT__Concat))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1130 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & ((0xbU 
									   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									  & ((0xcU 
									      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									     & (0xdU 
										== (IData)(vlTOPp->Exercise1__DOT__Concat)))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1138 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & ((0xbU 
									   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									  & ((0xcU 
									      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									     & ((0xdU 
										!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
										& (0xeU 
										== (IData)(vlTOPp->Exercise1__DOT__Concat))))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1146 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & ((0xbU 
									   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									  & ((0xcU 
									      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									     & ((0xdU 
										!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
										& ((0xeU 
										!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
										& (0xfU 
										== (IData)(vlTOPp->Exercise1__DOT__Concat)))))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_672 = ((3U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					 ? (IData)(vlTOPp->io_dataIn_0)
					 : ((4U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					     ? 0U : 
					    ((5U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					      ? (IData)(vlTOPp->io_dataIn_0)
					      : ((6U 
						  == (IData)(vlTOPp->Exercise1__DOT__Concat))
						  ? 0U
						  : 
						 ((7U 
						   == (IData)(vlTOPp->Exercise1__DOT__Concat))
						   ? (IData)(vlTOPp->io_dataIn_0)
						   : 
						  ((8U 
						    == (IData)(vlTOPp->Exercise1__DOT__Concat))
						    ? 0U
						    : 
						   ((9U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))
						     ? (IData)(vlTOPp->io_dataIn_0)
						     : 
						    ((0xaU 
						      == (IData)(vlTOPp->Exercise1__DOT__Concat))
						      ? 0U
						      : 
						     ((0xbU 
						       == (IData)(vlTOPp->Exercise1__DOT__Concat))
						       ? (IData)(vlTOPp->io_dataIn_0)
						       : 
						      ((0xcU 
							== (IData)(vlTOPp->Exercise1__DOT__Concat))
						        ? 0U
						        : 
						       ((0xdU 
							 == (IData)(vlTOPp->Exercise1__DOT__Concat))
							 ? (IData)(vlTOPp->io_dataIn_0)
							 : 
							((0xeU 
							  == (IData)(vlTOPp->Exercise1__DOT__Concat))
							  ? 0U
							  : 
							 ((0xfU 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))
							   ? (IData)(vlTOPp->io_dataIn_0)
							   : (IData)(vlTOPp->Exercise1__DOT__vector_0))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_673 = ((3U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					 ? (IData)(vlTOPp->io_dataIn_1)
					 : ((4U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					     ? 0U : 
					    ((5U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					      ? 0U : 
					     ((6U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					       ? (IData)(vlTOPp->io_dataIn_1)
					       : ((7U 
						   == (IData)(vlTOPp->Exercise1__DOT__Concat))
						   ? (IData)(vlTOPp->io_dataIn_1)
						   : 
						  ((8U 
						    == (IData)(vlTOPp->Exercise1__DOT__Concat))
						    ? 0U
						    : 
						   ((9U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))
						     ? 0U
						     : 
						    ((0xaU 
						      == (IData)(vlTOPp->Exercise1__DOT__Concat))
						      ? (IData)(vlTOPp->io_dataIn_1)
						      : 
						     ((0xbU 
						       == (IData)(vlTOPp->Exercise1__DOT__Concat))
						       ? (IData)(vlTOPp->io_dataIn_1)
						       : 
						      ((0xcU 
							== (IData)(vlTOPp->Exercise1__DOT__Concat))
						        ? 0U
						        : 
						       ((0xdU 
							 == (IData)(vlTOPp->Exercise1__DOT__Concat))
							 ? 0U
							 : 
							((0xeU 
							  == (IData)(vlTOPp->Exercise1__DOT__Concat))
							  ? (IData)(vlTOPp->io_dataIn_1)
							  : 
							 ((0xfU 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))
							   ? (IData)(vlTOPp->io_dataIn_1)
							   : (IData)(vlTOPp->Exercise1__DOT__vector_1))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_674 = ((3U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					 ? 0U : ((4U 
						  == (IData)(vlTOPp->Exercise1__DOT__Concat))
						  ? (IData)(vlTOPp->io_dataIn_2)
						  : 
						 ((5U 
						   == (IData)(vlTOPp->Exercise1__DOT__Concat))
						   ? (IData)(vlTOPp->io_dataIn_2)
						   : 
						  ((6U 
						    == (IData)(vlTOPp->Exercise1__DOT__Concat))
						    ? (IData)(vlTOPp->io_dataIn_2)
						    : 
						   ((7U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))
						     ? (IData)(vlTOPp->io_dataIn_2)
						     : 
						    ((8U 
						      == (IData)(vlTOPp->Exercise1__DOT__Concat))
						      ? 0U
						      : 
						     ((9U 
						       == (IData)(vlTOPp->Exercise1__DOT__Concat))
						       ? 0U
						       : 
						      ((0xaU 
							== (IData)(vlTOPp->Exercise1__DOT__Concat))
						        ? 0U
						        : 
						       ((0xbU 
							 == (IData)(vlTOPp->Exercise1__DOT__Concat))
							 ? 0U
							 : 
							((0xcU 
							  == (IData)(vlTOPp->Exercise1__DOT__Concat))
							  ? (IData)(vlTOPp->io_dataIn_2)
							  : 
							 ((0xdU 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))
							   ? (IData)(vlTOPp->io_dataIn_2)
							   : 
							  ((0xeU 
							    == (IData)(vlTOPp->Exercise1__DOT__Concat))
							    ? (IData)(vlTOPp->io_dataIn_2)
							    : 
							   ((0xfU 
							     == (IData)(vlTOPp->Exercise1__DOT__Concat))
							     ? (IData)(vlTOPp->io_dataIn_2)
							     : (IData)(vlTOPp->Exercise1__DOT__vector_2))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_675 = ((3U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					 ? 0U : ((4U 
						  == (IData)(vlTOPp->Exercise1__DOT__Concat))
						  ? 0U
						  : 
						 ((5U 
						   == (IData)(vlTOPp->Exercise1__DOT__Concat))
						   ? 0U
						   : 
						  ((6U 
						    == (IData)(vlTOPp->Exercise1__DOT__Concat))
						    ? 0U
						    : 
						   ((7U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))
						     ? 0U
						     : 
						    ((8U 
						      == (IData)(vlTOPp->Exercise1__DOT__Concat))
						      ? (IData)(vlTOPp->io_dataIn_3)
						      : 
						     ((9U 
						       == (IData)(vlTOPp->Exercise1__DOT__Concat))
						       ? (IData)(vlTOPp->io_dataIn_3)
						       : 
						      ((0xaU 
							== (IData)(vlTOPp->Exercise1__DOT__Concat))
						        ? (IData)(vlTOPp->io_dataIn_3)
						        : 
						       ((0xbU 
							 == (IData)(vlTOPp->Exercise1__DOT__Concat))
							 ? (IData)(vlTOPp->io_dataIn_3)
							 : 
							((0xcU 
							  == (IData)(vlTOPp->Exercise1__DOT__Concat))
							  ? (IData)(vlTOPp->io_dataIn_3)
							  : 
							 ((0xdU 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))
							   ? (IData)(vlTOPp->io_dataIn_3)
							   : 
							  ((0xeU 
							    == (IData)(vlTOPp->Exercise1__DOT__Concat))
							    ? (IData)(vlTOPp->io_dataIn_3)
							    : 
							   ((0xfU 
							     == (IData)(vlTOPp->Exercise1__DOT__Concat))
							     ? (IData)(vlTOPp->io_dataIn_3)
							     : (IData)(vlTOPp->Exercise1__DOT__vector_3))))))))))))));
}

VL_INLINE_OPT void VExercise1::_combo__TOP__3(VExercise1__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::_combo__TOP__3\n"); );
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->Exercise1__DOT__Concat = (((IData)(vlTOPp->io_mask_3) 
				       << 3U) | (((IData)(vlTOPp->io_mask_2) 
						  << 2U) 
						 | (((IData)(vlTOPp->io_mask_1) 
						     << 1U) 
						    | (IData)(vlTOPp->io_mask_0))));
    vlTOPp->Exercise1__DOT___GEN_1034 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & (1U == (IData)(vlTOPp->Exercise1__DOT__Concat)));
    vlTOPp->Exercise1__DOT___GEN_1042 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & (2U == (IData)(vlTOPp->Exercise1__DOT__Concat))));
    vlTOPp->Exercise1__DOT___GEN_1050 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & (3U 
						  == (IData)(vlTOPp->Exercise1__DOT__Concat)))));
    vlTOPp->Exercise1__DOT___GEN_1058 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & (4U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))))));
    vlTOPp->Exercise1__DOT___GEN_1066 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & (5U 
							== (IData)(vlTOPp->Exercise1__DOT__Concat)))))));
    vlTOPp->Exercise1__DOT___GEN_1074 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& (6U 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))))))));
    vlTOPp->Exercise1__DOT___GEN_1082 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & (7U 
							      == (IData)(vlTOPp->Exercise1__DOT__Concat)))))))));
    vlTOPp->Exercise1__DOT___GEN_1090 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & (8U 
								 == (IData)(vlTOPp->Exercise1__DOT__Concat))))))))));
    vlTOPp->Exercise1__DOT___GEN_1098 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & (9U 
								    == (IData)(vlTOPp->Exercise1__DOT__Concat)))))))))));
    vlTOPp->Exercise1__DOT___GEN_1106 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & (0xaU 
								       == (IData)(vlTOPp->Exercise1__DOT__Concat))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1114 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & (0xbU 
									  == (IData)(vlTOPp->Exercise1__DOT__Concat)))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1122 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & ((0xbU 
									   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									  & (0xcU 
									     == (IData)(vlTOPp->Exercise1__DOT__Concat))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1130 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & ((0xbU 
									   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									  & ((0xcU 
									      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									     & (0xdU 
										== (IData)(vlTOPp->Exercise1__DOT__Concat)))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1138 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & ((0xbU 
									   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									  & ((0xcU 
									      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									     & ((0xdU 
										!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
										& (0xeU 
										== (IData)(vlTOPp->Exercise1__DOT__Concat))))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_1146 = ((0U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					 & ((1U != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					    & ((2U 
						!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
					       & ((3U 
						   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						  & ((4U 
						      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
						     & ((5U 
							 != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							& ((6U 
							    != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							   & ((7U 
							       != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
							      & ((8U 
								  != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								 & ((9U 
								     != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								    & ((0xaU 
									!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
								       & ((0xbU 
									   != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									  & ((0xcU 
									      != (IData)(vlTOPp->Exercise1__DOT__Concat)) 
									     & ((0xdU 
										!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
										& ((0xeU 
										!= (IData)(vlTOPp->Exercise1__DOT__Concat)) 
										& (0xfU 
										== (IData)(vlTOPp->Exercise1__DOT__Concat)))))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_672 = ((3U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					 ? (IData)(vlTOPp->io_dataIn_0)
					 : ((4U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					     ? 0U : 
					    ((5U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					      ? (IData)(vlTOPp->io_dataIn_0)
					      : ((6U 
						  == (IData)(vlTOPp->Exercise1__DOT__Concat))
						  ? 0U
						  : 
						 ((7U 
						   == (IData)(vlTOPp->Exercise1__DOT__Concat))
						   ? (IData)(vlTOPp->io_dataIn_0)
						   : 
						  ((8U 
						    == (IData)(vlTOPp->Exercise1__DOT__Concat))
						    ? 0U
						    : 
						   ((9U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))
						     ? (IData)(vlTOPp->io_dataIn_0)
						     : 
						    ((0xaU 
						      == (IData)(vlTOPp->Exercise1__DOT__Concat))
						      ? 0U
						      : 
						     ((0xbU 
						       == (IData)(vlTOPp->Exercise1__DOT__Concat))
						       ? (IData)(vlTOPp->io_dataIn_0)
						       : 
						      ((0xcU 
							== (IData)(vlTOPp->Exercise1__DOT__Concat))
						        ? 0U
						        : 
						       ((0xdU 
							 == (IData)(vlTOPp->Exercise1__DOT__Concat))
							 ? (IData)(vlTOPp->io_dataIn_0)
							 : 
							((0xeU 
							  == (IData)(vlTOPp->Exercise1__DOT__Concat))
							  ? 0U
							  : 
							 ((0xfU 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))
							   ? (IData)(vlTOPp->io_dataIn_0)
							   : (IData)(vlTOPp->Exercise1__DOT__vector_0))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_673 = ((3U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					 ? (IData)(vlTOPp->io_dataIn_1)
					 : ((4U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					     ? 0U : 
					    ((5U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					      ? 0U : 
					     ((6U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					       ? (IData)(vlTOPp->io_dataIn_1)
					       : ((7U 
						   == (IData)(vlTOPp->Exercise1__DOT__Concat))
						   ? (IData)(vlTOPp->io_dataIn_1)
						   : 
						  ((8U 
						    == (IData)(vlTOPp->Exercise1__DOT__Concat))
						    ? 0U
						    : 
						   ((9U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))
						     ? 0U
						     : 
						    ((0xaU 
						      == (IData)(vlTOPp->Exercise1__DOT__Concat))
						      ? (IData)(vlTOPp->io_dataIn_1)
						      : 
						     ((0xbU 
						       == (IData)(vlTOPp->Exercise1__DOT__Concat))
						       ? (IData)(vlTOPp->io_dataIn_1)
						       : 
						      ((0xcU 
							== (IData)(vlTOPp->Exercise1__DOT__Concat))
						        ? 0U
						        : 
						       ((0xdU 
							 == (IData)(vlTOPp->Exercise1__DOT__Concat))
							 ? 0U
							 : 
							((0xeU 
							  == (IData)(vlTOPp->Exercise1__DOT__Concat))
							  ? (IData)(vlTOPp->io_dataIn_1)
							  : 
							 ((0xfU 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))
							   ? (IData)(vlTOPp->io_dataIn_1)
							   : (IData)(vlTOPp->Exercise1__DOT__vector_1))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_674 = ((3U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					 ? 0U : ((4U 
						  == (IData)(vlTOPp->Exercise1__DOT__Concat))
						  ? (IData)(vlTOPp->io_dataIn_2)
						  : 
						 ((5U 
						   == (IData)(vlTOPp->Exercise1__DOT__Concat))
						   ? (IData)(vlTOPp->io_dataIn_2)
						   : 
						  ((6U 
						    == (IData)(vlTOPp->Exercise1__DOT__Concat))
						    ? (IData)(vlTOPp->io_dataIn_2)
						    : 
						   ((7U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))
						     ? (IData)(vlTOPp->io_dataIn_2)
						     : 
						    ((8U 
						      == (IData)(vlTOPp->Exercise1__DOT__Concat))
						      ? 0U
						      : 
						     ((9U 
						       == (IData)(vlTOPp->Exercise1__DOT__Concat))
						       ? 0U
						       : 
						      ((0xaU 
							== (IData)(vlTOPp->Exercise1__DOT__Concat))
						        ? 0U
						        : 
						       ((0xbU 
							 == (IData)(vlTOPp->Exercise1__DOT__Concat))
							 ? 0U
							 : 
							((0xcU 
							  == (IData)(vlTOPp->Exercise1__DOT__Concat))
							  ? (IData)(vlTOPp->io_dataIn_2)
							  : 
							 ((0xdU 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))
							   ? (IData)(vlTOPp->io_dataIn_2)
							   : 
							  ((0xeU 
							    == (IData)(vlTOPp->Exercise1__DOT__Concat))
							    ? (IData)(vlTOPp->io_dataIn_2)
							    : 
							   ((0xfU 
							     == (IData)(vlTOPp->Exercise1__DOT__Concat))
							     ? (IData)(vlTOPp->io_dataIn_2)
							     : (IData)(vlTOPp->Exercise1__DOT__vector_2))))))))))))));
    vlTOPp->Exercise1__DOT___GEN_675 = ((3U == (IData)(vlTOPp->Exercise1__DOT__Concat))
					 ? 0U : ((4U 
						  == (IData)(vlTOPp->Exercise1__DOT__Concat))
						  ? 0U
						  : 
						 ((5U 
						   == (IData)(vlTOPp->Exercise1__DOT__Concat))
						   ? 0U
						   : 
						  ((6U 
						    == (IData)(vlTOPp->Exercise1__DOT__Concat))
						    ? 0U
						    : 
						   ((7U 
						     == (IData)(vlTOPp->Exercise1__DOT__Concat))
						     ? 0U
						     : 
						    ((8U 
						      == (IData)(vlTOPp->Exercise1__DOT__Concat))
						      ? (IData)(vlTOPp->io_dataIn_3)
						      : 
						     ((9U 
						       == (IData)(vlTOPp->Exercise1__DOT__Concat))
						       ? (IData)(vlTOPp->io_dataIn_3)
						       : 
						      ((0xaU 
							== (IData)(vlTOPp->Exercise1__DOT__Concat))
						        ? (IData)(vlTOPp->io_dataIn_3)
						        : 
						       ((0xbU 
							 == (IData)(vlTOPp->Exercise1__DOT__Concat))
							 ? (IData)(vlTOPp->io_dataIn_3)
							 : 
							((0xcU 
							  == (IData)(vlTOPp->Exercise1__DOT__Concat))
							  ? (IData)(vlTOPp->io_dataIn_3)
							  : 
							 ((0xdU 
							   == (IData)(vlTOPp->Exercise1__DOT__Concat))
							   ? (IData)(vlTOPp->io_dataIn_3)
							   : 
							  ((0xeU 
							    == (IData)(vlTOPp->Exercise1__DOT__Concat))
							    ? (IData)(vlTOPp->io_dataIn_3)
							    : 
							   ((0xfU 
							     == (IData)(vlTOPp->Exercise1__DOT__Concat))
							     ? (IData)(vlTOPp->io_dataIn_3)
							     : (IData)(vlTOPp->Exercise1__DOT__vector_3))))))))))))));
}

void VExercise1::_eval(VExercise1__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::_eval\n"); );
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    if (((IData)(vlTOPp->clock) & (~ (IData)(vlTOPp->__Vclklast__TOP__clock)))) {
	vlTOPp->_sequent__TOP__1(vlSymsp);
	vlTOPp->__Vm_traceActivity = (2U | vlTOPp->__Vm_traceActivity);
    }
    vlTOPp->_combo__TOP__3(vlSymsp);
    vlTOPp->__Vm_traceActivity = (4U | vlTOPp->__Vm_traceActivity);
    // Final
    vlTOPp->__Vclklast__TOP__clock = vlTOPp->clock;
}

void VExercise1::_eval_initial(VExercise1__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::_eval_initial\n"); );
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VExercise1::final() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::final\n"); );
    // Variables
    VExercise1__Syms* __restrict vlSymsp = this->__VlSymsp;
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
}

void VExercise1::_eval_settle(VExercise1__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::_eval_settle\n"); );
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    vlTOPp->_settle__TOP__2(vlSymsp);
    vlTOPp->__Vm_traceActivity = (1U | vlTOPp->__Vm_traceActivity);
}

VL_INLINE_OPT QData VExercise1::_change_request(VExercise1__Syms* __restrict vlSymsp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::_change_request\n"); );
    VExercise1* __restrict vlTOPp VL_ATTR_UNUSED = vlSymsp->TOPp;
    // Body
    // Change detection
    QData __req = false;  // Logically a bool
    return __req;
}

#ifdef VL_DEBUG
void VExercise1::_eval_debug_assertions() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::_eval_debug_assertions\n"); );
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
    if (VL_UNLIKELY((io_mask_2 & 0xfeU))) {
	Verilated::overWidthError("io_mask_2");}
    if (VL_UNLIKELY((io_mask_3 & 0xfeU))) {
	Verilated::overWidthError("io_mask_3");}
}
#endif // VL_DEBUG

void VExercise1::_ctor_var_reset() {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VExercise1::_ctor_var_reset\n"); );
    // Body
    clock = VL_RAND_RESET_I(1);
    reset = VL_RAND_RESET_I(1);
    io_enable = VL_RAND_RESET_I(1);
    io_write = VL_RAND_RESET_I(1);
    io_addr = VL_RAND_RESET_I(10);
    io_mask_0 = VL_RAND_RESET_I(1);
    io_mask_1 = VL_RAND_RESET_I(1);
    io_mask_2 = VL_RAND_RESET_I(1);
    io_mask_3 = VL_RAND_RESET_I(1);
    io_dataIn_0 = VL_RAND_RESET_I(8);
    io_dataIn_1 = VL_RAND_RESET_I(8);
    io_dataIn_2 = VL_RAND_RESET_I(8);
    io_dataIn_3 = VL_RAND_RESET_I(8);
    io_dataOut_0 = VL_RAND_RESET_I(8);
    io_dataOut_1 = VL_RAND_RESET_I(8);
    io_dataOut_2 = VL_RAND_RESET_I(8);
    io_dataOut_3 = VL_RAND_RESET_I(8);
    { int __Vi0=0; for (; __Vi0<1024; ++__Vi0) {
	    Exercise1__DOT__mem_0[__Vi0] = VL_RAND_RESET_I(8);
    }}
    Exercise1__DOT__mem_0_MPORT_16_en_pipe_0 = VL_RAND_RESET_I(1);
    Exercise1__DOT__mem_0_MPORT_16_addr_pipe_0 = VL_RAND_RESET_I(10);
    { int __Vi0=0; for (; __Vi0<1024; ++__Vi0) {
	    Exercise1__DOT__mem_1[__Vi0] = VL_RAND_RESET_I(8);
    }}
    Exercise1__DOT__mem_1_MPORT_16_en_pipe_0 = VL_RAND_RESET_I(1);
    Exercise1__DOT__mem_1_MPORT_16_addr_pipe_0 = VL_RAND_RESET_I(10);
    { int __Vi0=0; for (; __Vi0<1024; ++__Vi0) {
	    Exercise1__DOT__mem_2[__Vi0] = VL_RAND_RESET_I(8);
    }}
    Exercise1__DOT__mem_2_MPORT_16_en_pipe_0 = VL_RAND_RESET_I(1);
    Exercise1__DOT__mem_2_MPORT_16_addr_pipe_0 = VL_RAND_RESET_I(10);
    { int __Vi0=0; for (; __Vi0<1024; ++__Vi0) {
	    Exercise1__DOT__mem_3[__Vi0] = VL_RAND_RESET_I(8);
    }}
    Exercise1__DOT__mem_3_MPORT_16_en_pipe_0 = VL_RAND_RESET_I(1);
    Exercise1__DOT__mem_3_MPORT_16_addr_pipe_0 = VL_RAND_RESET_I(10);
    Exercise1__DOT__vector_0 = VL_RAND_RESET_I(8);
    Exercise1__DOT__vector_1 = VL_RAND_RESET_I(8);
    Exercise1__DOT__vector_2 = VL_RAND_RESET_I(8);
    Exercise1__DOT__vector_3 = VL_RAND_RESET_I(8);
    Exercise1__DOT__Concat = VL_RAND_RESET_I(4);
    Exercise1__DOT___GEN_672 = VL_RAND_RESET_I(8);
    Exercise1__DOT___GEN_673 = VL_RAND_RESET_I(8);
    Exercise1__DOT___GEN_674 = VL_RAND_RESET_I(8);
    Exercise1__DOT___GEN_675 = VL_RAND_RESET_I(8);
    Exercise1__DOT___GEN_1034 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1042 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1050 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1058 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1066 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1074 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1082 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1090 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1098 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1106 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1114 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1122 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1130 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1138 = VL_RAND_RESET_I(1);
    Exercise1__DOT___GEN_1146 = VL_RAND_RESET_I(1);
    __Vclklast__TOP__clock = VL_RAND_RESET_I(1);
    __Vm_traceActivity = VL_RAND_RESET_I(32);
}
