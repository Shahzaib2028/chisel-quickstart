// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header

#ifndef _VExercise1__Syms_H_
#define _VExercise1__Syms_H_

#include "verilated.h"

// INCLUDE MODULE CLASSES
#include "VExercise1.h"

// SYMS CLASS
class VExercise1__Syms : public VerilatedSyms {
  public:
    
    // LOCAL STATE
    const char* __Vm_namep;
    bool __Vm_activity;  ///< Used by trace routines to determine change occurred
    bool __Vm_didInit;
    
    // SUBCELL STATE
    VExercise1*                    TOPp;
    
    // CREATORS
    VExercise1__Syms(VExercise1* topp, const char* namep);
    ~VExercise1__Syms() {}
    
    // METHODS
    inline const char* name() { return __Vm_namep; }
    inline bool getClearActivity() { bool r=__Vm_activity; __Vm_activity=false; return r; }
    
} VL_ATTR_ALIGNED(64);

#endif // guard
