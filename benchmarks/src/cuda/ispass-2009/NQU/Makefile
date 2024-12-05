################################################################################
#
# Copyright 1993-2006 NVIDIA Corporation.  All rights reserved.
#
# NOTICE TO USER:   
#
# This source code is subject to NVIDIA ownership rights under U.S. and 
# international Copyright laws.  
#
# NVIDIA MAKES NO REPRESENTATION ABOUT THE SUITABILITY OF THIS SOURCE 
# CODE FOR ANY PURPOSE.  IT IS PROVIDED "AS IS" WITHOUT EXPRESS OR 
# IMPLIED WARRANTY OF ANY KIND.  NVIDIA DISCLAIMS ALL WARRANTIES WITH 
# REGARD TO THIS SOURCE CODE, INCLUDING ALL IMPLIED WARRANTIES OF 
# MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A PARTICULAR PURPOSE.   
# IN NO EVENT SHALL NVIDIA BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL, 
# OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS 
# OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE 
# OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE 
# OR PERFORMANCE OF THIS SOURCE CODE.  
#
# U.S. Government End Users.  This source code is a "commercial item" as 
# that term is defined at 48 C.F.R. 2.101 (OCT 1995), consisting  of 
# "commercial computer software" and "commercial computer software 
# documentation" as such terms are used in 48 C.F.R. 12.212 (SEPT 1995) 
# and is provided to the U.S. Government only as a commercial end item.  
# Consistent with 48 C.F.R.12.212 and 48 C.F.R. 227.7202-1 through 
# 227.7202-4 (JUNE 1995), all U.S. Government End Users acquire the 
# source code with only those rights set forth herein.
#
################################################################################
#
# Build script for project
#
################################################################################

# Add source files here
#EXECUTABLE	:= ispass-2009-NQU
 #Cuda source files (compiled with cudacc)
#CUFILES		:= nqueen.cu
 #C/C++ source files (compiled with gcc / c++)
#CCFILES		:= 

#GPGPUSIM_ROOT  := ..

#INCLUDES= -I ../../common/inc
#LIBDIR=../../common/lib
#OMIT_CUTIL_LIB=0

###############################################################################
 #Rules and targets

#include ../../common/common.mk

# nqueens : 	nqueen.hip.cpp
# 	hipcc nqueen.hip.cpp -O0 -I../../common/inc/ -L../../common/lib/ -lcutil_x86_64 -o nqueen


ROCM_HOME = /opt/rocm/
LLVM_HOME := /home/min/a/cgusthin/git/llvm-project-rocm/build_cfm
COMMAND_GEN_SCRIPT := $(LLVM_HOME)/../scripts/gen_compile_command.py


# clang
HIPCC := $(ROCM_HOME)/bin/hipcc
HIPCC_FLAGS := -O3 -I../../common/inc/ -L../../common/lib/ -lcutil_x86_64


SRC = nqueen.hip.cpp
HIP_EXECUTABLE = nqueen.hip
CFM_EXECUTABLE = nqueen.cfm
BF_EXECUTABLE = nqueen.bf

all : $(HIP_EXECUTABLE) $(CFM_EXECUTABLE) $(BF_EXECUTABLE)

$(CFM_EXECUTABLE) : $(SRC)
	mkdir -p tmp
	$(HIPCC) -###   $< -o $@ $(HIPCC_FLAGS) 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
			 --ptx-opt-level=O0 --cfmelder-options="-stats" > ./tmp/compile_command_cfm.sh
	. ./tmp/compile_command_cfm.sh

$(HIP_EXECUTABLE) : $(SRC)
	mkdir -p tmp
	$(HIPCC) -###   $< -o $@ $(HIPCC_FLAGS) 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
			 --ptx-opt-level=O0 --disable-pass > ./tmp/compile_command.sh
	. ./tmp/compile_command.sh

$(BF_EXECUTABLE) : $(SRC)
	mkdir -p tmp
	$(HIPCC) -###  $< -o $@ $(HIPCC_FLAGS) 2>&1 | python3 $(COMMAND_GEN_SCRIPT) --llvm-home=$(LLVM_HOME) --output-loc=./tmp \
			 --ptx-opt-level=O0 --cfmelder-options="--run-branch-fusion-only" >  ./tmp/compile_command_bf.sh
	. ./tmp/compile_command_bf.sh


clean :
	rm -rf $(HIP_EXECUTABLE) $(CFM_EXECUTABLE) $(BF_EXECUTABLE) ./tmp *.o

rocprof_clean:
	rm -f *.db *.csv *.sysinfo.txt *.json ./tmp_metrics/*



