// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VExercise2_H_
#define _VExercise2_H_

#include "verilated.h"

class VExercise2__Syms;
class VerilatedVcd;

//----------

VL_MODULE(VExercise2) {
  public:
    
    // PORTS
    // The application code writes and reads these signals to
    // propagate new values into/out from the Verilated model.
    VL_IN8(clock,0,0);
    VL_IN8(reset,0,0);
    VL_IN8(io_enable,0,0);
    VL_IN8(io_write,0,0);
    VL_IN8(io_mask_0,0,0);
    VL_IN8(io_mask_1,0,0);
    VL_IN8(io_data_in_0,7,0);
    VL_IN8(io_data_in_1,7,0);
    VL_OUT8(io_data_out_0,7,0);
    VL_OUT8(io_data_out_1,7,0);
    VL_IN16(io_addr,9,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    VL_SIG8(Exercise2__DOT__wrDataReg_0,7,0);
    VL_SIG8(Exercise2__DOT__wrDataReg_1,7,0);
    VL_SIG8(Exercise2__DOT__doFowarding,0,0);
    VL_SIG16(Exercise2__DOT__mem_0_memData_addr_pipe_0,9,0);
    VL_SIG16(Exercise2__DOT__mem_1_memData_addr_pipe_0,9,0);
    VL_SIG8(Exercise2__DOT__mem_0[1024],7,0);
    VL_SIG8(Exercise2__DOT__mem_1[1024],7,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    VL_SIG8(__Vclklast__TOP__clock,0,0);
    VL_SIG(__Vm_traceActivity,31,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VExercise2__Syms* __VlSymsp;  // Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    VExercise2& operator= (const VExercise2&);  ///< Copying not allowed
    VExercise2(const VExercise2&);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible WRT DPI scope names.
    VExercise2(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VExercise2();
    /// Trace signals in the model; called by application code
    void trace (VerilatedVcdC* tfp, int levels, int options=0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VExercise2__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VExercise2__Syms* symsp, bool first);
  private:
    static QData _change_request(VExercise2__Syms* __restrict vlSymsp);
    void _ctor_var_reset();
  public:
    static void _eval(VExercise2__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif // VL_DEBUG
  public:
    static void _eval_initial(VExercise2__Syms* __restrict vlSymsp);
    static void _eval_settle(VExercise2__Syms* __restrict vlSymsp);
    static void _sequent__TOP__1(VExercise2__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(VExercise2__Syms* __restrict vlSymsp);
    static void traceChgThis(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis__1(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceInitThis(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceInitThis__1(VExercise2__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceInit (VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull (VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg  (VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(128);

#endif // guard
