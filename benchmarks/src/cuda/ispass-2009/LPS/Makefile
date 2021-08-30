ROCM_HOME := /opt/rocm
LLVM_HOME := /local/scratch/a/ksundar/llvm-project-rocm/build
COMMAND_GEN_SCRIPT := $(LLVM_HOME)/../scripts/gen_compile_command.py
# --------------------------------------------------------------------------------------------------
SRC_DIR := src
BUILD_DIR := tmp
# --------------------------------------------------------------------------------------------------
# Executable
HIP_EXECUTABLE := laplace3d.hip
CFM_EXECUTABLE := laplace3d.cfm
BF_EXECUTABLE  := laplace3d.bf
# --------------------------------------------------------------------------------------------------
# Compiler command
HIPCC := $(ROCM_HOME)/bin/hipcc
# Compiler flags
HIPCC_FLAGS := -O3 
# --------------------------------------------------------------------------------------------------
all: $(HIP_EXECUTABLE) $(CFM_EXECUTABLE) $(BF_EXECUTABLE)

init:
	mkdir -p $(BUILD_DIR) 

clean:
	rm -f $(HIP_EXECUTABLE) $(CFM_EXECUTABLE) $(BF_EXECUTABLE)
	rm -f .*.dot 
	rm -rf ./tmp

$(HIP_EXECUTABLE): $(SRC_DIR)/laplace3d.hip.cpp init
	$(HIPCC) -### $(HIPCC_FLAGS) $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
                    --ptx-opt-level=O0 --disable-pass > ./tmp/compile_command_$(notdir $@).sh

	. ./tmp/compile_command_$(notdir $@).sh

$(CFM_EXECUTABLE): $(SRC_DIR)/laplace3d.hip.cpp init 
	$(HIPCC) -### $(HIPCC_FLAGS) $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
            		--ptx-opt-level=O0 > ./tmp/compile_command_cfm_$(notdir $@).sh

	. ./tmp/compile_command_cfm_$(notdir $@).sh

$(BF_EXECUTABLE): $(SRC_DIR)/laplace3d.hip.cpp init 
	$(HIPCC) -### $(HIPCC_FLAGS) $< -o $@ 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
            		--ptx-opt-level=O0 --cfmelder-options=--run-cfmelding-once > ./tmp/compile_command_bf_$(notdir $@).sh

	. ./tmp/compile_command_bf_$(notdir $@).sh
