// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Primary design header
//
// This header should be included by all source files instantiating the design.
// The class here is then constructed to instantiate the design.
// See the Verilator manual for examples.

#ifndef _VExercise1_H_
#define _VExercise1_H_

#include "verilated.h"

class VExercise1__Syms;
class VerilatedVcd;

//----------

VL_MODULE(VExercise1) {
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
    VL_IN8(io_mask_2,0,0);
    VL_IN8(io_mask_3,0,0);
    VL_IN8(io_dataIn_0,7,0);
    VL_IN8(io_dataIn_1,7,0);
    VL_IN8(io_dataIn_2,7,0);
    VL_IN8(io_dataIn_3,7,0);
    VL_OUT8(io_dataOut_0,7,0);
    VL_OUT8(io_dataOut_1,7,0);
    VL_OUT8(io_dataOut_2,7,0);
    VL_OUT8(io_dataOut_3,7,0);
    VL_IN16(io_addr,9,0);
    
    // LOCAL SIGNALS
    // Internals; generally not touched by application code
    VL_SIG8(Exercise1__DOT__mem_0_MPORT_16_en_pipe_0,0,0);
    VL_SIG8(Exercise1__DOT__mem_1_MPORT_16_en_pipe_0,0,0);
    VL_SIG8(Exercise1__DOT__mem_2_MPORT_16_en_pipe_0,0,0);
    VL_SIG8(Exercise1__DOT__mem_3_MPORT_16_en_pipe_0,0,0);
    VL_SIG8(Exercise1__DOT__vector_0,7,0);
    VL_SIG8(Exercise1__DOT__vector_1,7,0);
    VL_SIG8(Exercise1__DOT__vector_2,7,0);
    VL_SIG8(Exercise1__DOT__vector_3,7,0);
    VL_SIG8(Exercise1__DOT__Concat,3,0);
    VL_SIG8(Exercise1__DOT___GEN_672,7,0);
    VL_SIG8(Exercise1__DOT___GEN_673,7,0);
    VL_SIG8(Exercise1__DOT___GEN_674,7,0);
    VL_SIG8(Exercise1__DOT___GEN_675,7,0);
    VL_SIG8(Exercise1__DOT___GEN_1034,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1042,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1050,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1058,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1066,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1074,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1082,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1090,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1098,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1106,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1114,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1122,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1130,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1138,0,0);
    VL_SIG8(Exercise1__DOT___GEN_1146,0,0);
    VL_SIG16(Exercise1__DOT__mem_0_MPORT_16_addr_pipe_0,9,0);
    VL_SIG16(Exercise1__DOT__mem_1_MPORT_16_addr_pipe_0,9,0);
    VL_SIG16(Exercise1__DOT__mem_2_MPORT_16_addr_pipe_0,9,0);
    VL_SIG16(Exercise1__DOT__mem_3_MPORT_16_addr_pipe_0,9,0);
    VL_SIG8(Exercise1__DOT__mem_0[1024],7,0);
    VL_SIG8(Exercise1__DOT__mem_1[1024],7,0);
    VL_SIG8(Exercise1__DOT__mem_2[1024],7,0);
    VL_SIG8(Exercise1__DOT__mem_3[1024],7,0);
    
    // LOCAL VARIABLES
    // Internals; generally not touched by application code
    VL_SIG8(__Vclklast__TOP__clock,0,0);
    VL_SIG(__Vm_traceActivity,31,0);
    
    // INTERNAL VARIABLES
    // Internals; generally not touched by application code
    VExercise1__Syms* __VlSymsp;  // Symbol table
    
    // PARAMETERS
    // Parameters marked /*verilator public*/ for use by application code
    
    // CONSTRUCTORS
  private:
    VExercise1& operator= (const VExercise1&);  ///< Copying not allowed
    VExercise1(const VExercise1&);  ///< Copying not allowed
  public:
    /// Construct the model; called by application code
    /// The special name  may be used to make a wrapper with a
    /// single model invisible WRT DPI scope names.
    VExercise1(const char* name="TOP");
    /// Destroy the model; called (often implicitly) by application code
    ~VExercise1();
    /// Trace signals in the model; called by application code
    void trace (VerilatedVcdC* tfp, int levels, int options=0);
    
    // API METHODS
    /// Evaluate the model.  Application must call when inputs change.
    void eval();
    /// Simulation complete, run final blocks.  Application must call on completion.
    void final();
    
    // INTERNAL METHODS
  private:
    static void _eval_initial_loop(VExercise1__Syms* __restrict vlSymsp);
  public:
    void __Vconfigure(VExercise1__Syms* symsp, bool first);
  private:
    static QData _change_request(VExercise1__Syms* __restrict vlSymsp);
  public:
    static void _combo__TOP__3(VExercise1__Syms* __restrict vlSymsp);
  private:
    void _ctor_var_reset();
  public:
    static void _eval(VExercise1__Syms* __restrict vlSymsp);
  private:
#ifdef VL_DEBUG
    void _eval_debug_assertions();
#endif // VL_DEBUG
  public:
    static void _eval_initial(VExercise1__Syms* __restrict vlSymsp);
    static void _eval_settle(VExercise1__Syms* __restrict vlSymsp);
    static void _sequent__TOP__1(VExercise1__Syms* __restrict vlSymsp);
    static void _settle__TOP__2(VExercise1__Syms* __restrict vlSymsp);
    static void traceChgThis(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__2(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__3(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceChgThis__4(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceFullThis__1(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceInitThis(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceInitThis__1(VExercise1__Syms* __restrict vlSymsp, VerilatedVcd* vcdp, uint32_t code);
    static void traceInit (VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceFull (VerilatedVcd* vcdp, void* userthis, uint32_t code);
    static void traceChg  (VerilatedVcd* vcdp, void* userthis, uint32_t code);
} VL_ATTR_ALIGNED(128);

#endif // guard
