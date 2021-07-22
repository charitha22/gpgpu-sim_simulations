TOPLEVEL := ../..
APP=nsp
SRC=newsp.cu
SUPPORT=genformula

include ../common.mk

genformula: genformula.c
	$(CC) -O -o $@ $<


include /home/charitha/workspace/cuda-benchmarks/rodinia_3.1/cuda/cfanalyze.config

KERNELS =  newsp

cfanalyze : $(addsuffix .cu, $(KERNELS))
	$(foreach KERNEL, $(KERNELS), $(CLANG) $(CLANG_FLAGS) $(LL_FLAGS) $(INCLUDES)  $(KERNEL).cu;)

cfanalyze_pass : $(addsuffix .ll, $(KERNELS))
	$(foreach KERNEL, $(KERNELS), $(OPT) $(CFANALYZE_FLAGS) < $(KERNEL)-$(LL_SUFFIX).ll > /dev/null ;)

cfanalyze_clean :
	rm -f *.ll
