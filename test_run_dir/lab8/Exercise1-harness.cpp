
#include "VExercise1.h"
#include "verilated.h"
#include "veri_api.h"
#if VM_TRACE
#include "verilated_vcd_c.h"
#endif
#include <iostream>
class Exercise1_api_t: public sim_api_t<VerilatorDataWrapper*> {
    public:
    Exercise1_api_t(VExercise1* _dut) {
        dut = _dut;
        main_time = 0L;
        is_exit = false;
#if VM_TRACE
        tfp = NULL;
#endif
    }
    void init_sim_data() {
        sim_data.inputs.clear();
        sim_data.outputs.clear();
        sim_data.signals.clear();

        sim_data.inputs.push_back(new VerilatorCData(&(dut->clock)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->reset)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_dataIn_0)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_dataIn_1)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_dataIn_2)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_dataIn_3)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_mask_0)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_mask_1)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_mask_2)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_mask_3)));
        sim_data.inputs.push_back(new VerilatorSData(&(dut->io_addr)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_write)));
        sim_data.inputs.push_back(new VerilatorCData(&(dut->io_enable)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_dataOut_0)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_dataOut_1)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_dataOut_2)));
        sim_data.outputs.push_back(new VerilatorCData(&(dut->io_dataOut_3)));
        sim_data.signals.push_back(new VerilatorCData(&(dut->reset)));
        sim_data.signal_map["Exercise1.reset"] = 0;
    }
#if VM_TRACE
     void init_dump(VerilatedVcdC* _tfp) { tfp = _tfp; }
#endif
    inline bool exit() { return is_exit; }

    // required for sc_time_stamp()
    virtual inline double get_time_stamp() {
        return main_time;
    }

    private:
    VExercise1* dut;
    bool is_exit;
    vluint64_t main_time;
#if VM_TRACE
    VerilatedVcdC* tfp;
#endif
    virtual inline size_t put_value(VerilatorDataWrapper* &sig, uint64_t* data, bool force=false) {
        return sig->put_value(data);
    }
    virtual inline size_t get_value(VerilatorDataWrapper* &sig, uint64_t* data) {
        return sig->get_value(data);
    }
    virtual inline size_t get_chunk(VerilatorDataWrapper* &sig) {
        return sig->get_num_words();
    }
    virtual inline void reset() {
        dut->reset = 1;
        step();
    }
    virtual inline void start() {
        dut->reset = 0;
    }
    virtual inline void finish() {
        dut->eval();
        is_exit = true;
    }
    virtual inline void step() {
        dut->clock = 0;
        dut->eval();
#if VM_TRACE
        if (tfp) tfp->dump(main_time);
#endif
        main_time++;
        dut->clock = 1;
        dut->eval();
#if VM_TRACE
        if (tfp) tfp->dump(main_time);
#endif
        main_time++;
    }
    virtual inline void update() {
        // This seems to force a full eval of circuit, so registers with alternate clocks are update correctly
        dut->eval();
        // This was the original call, did not refresh registers when some  other clock transitioned
        // dut->_eval_settle(dut->__VlSymsp);
    }
};

// The following isn't strictly required unless we emit (possibly indirectly) something
// requiring a time-stamp (such as an assert).
static Exercise1_api_t * _Top_api;
double sc_time_stamp () { return _Top_api->get_time_stamp(); }

// Override Verilator definition so first $finish ends simulation
// Note: VL_USER_FINISH needs to be defined when compiling Verilator code
void vl_finish(const char* filename, int linenum, const char* hier) {
  Verilated::flushCall();

  exit(0);
}

int main(int argc, char **argv, char **env) {
    Verilated::commandArgs(argc, argv);
    VExercise1* top = new VExercise1;
    std::string vcdfile = "test_run_dir/lab8/Exercise1.vcd";
    std::vector<std::string> args(argv+1, argv+argc);
    std::vector<std::string>::const_iterator it;
    for (it = args.begin() ; it != args.end() ; it++) {
        if (it->find("+waveform=") == 0) vcdfile = it->c_str()+10;
    }
#if VM_TRACE || VM_COVERAGE
    Verilated::traceEverOn(true);
#endif
#if VM_TRACE
    VL_PRINTF("Enabling waves..");
    VerilatedVcdC* tfp = new VerilatedVcdC;
    top->trace(tfp, 99);
    tfp->open(vcdfile.c_str());
#endif
    Exercise1_api_t api(top);
    _Top_api = &api; /* required for sc_time_stamp() */
    api.init_sim_data();
    api.init_channels();
#if VM_TRACE
    api.init_dump(tfp);
#endif
    while(!api.exit()) api.tick();
#if VM_TRACE
    if (tfp) tfp->close();
    delete tfp;
#endif
#if VM_COVERAGE
    VL_PRINTF("Writing Coverage..");
    Verilated::mkdir("test_run_dir/lab8/logs");
    VerilatedCov::write("test_run_dir/lab8/logs/coverage.dat");
#endif
    delete top;
    exit(0);
}
