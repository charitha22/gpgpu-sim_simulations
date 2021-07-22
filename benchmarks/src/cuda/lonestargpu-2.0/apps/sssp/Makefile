TOPLEVEL := ../..
APP=sssp
SRC=main.cu
INC=sssp_ls.h
VARIANTS=sssp sssp-wln sssp-wlc
OTHER_VARIANTS=sssp-tpatm

include ../common.mk

sssp-wln: $(SRC) sssp_worklistn.h ../../include/worklist.h
	$(NVCC) $(EXTRA) -DVARIANT=1 -o $@ $<
	cp $@ $(BIN)

sssp-wlc: $(SRC) sssp_worklistc.h ../../include/worklistc.h
	$(NVCC) $(EXTRA) -DVARIANT=2 -o $@ $<
	cp $@ $(BIN)


include /home/charitha/workspace/cuda-benchmarks/rodinia_3.1/cuda/cfanalyze.config

KERNEL = main

cfanalyze : cfanalyze_sssp  cfanalyze_sssp_wln

cfanalyze_sssp : main.cu sssp_ls.h
	$(CLANG) $(CLANG_FLAGS) $(LL_FLAGS) $(INCLUDES) -DVARIANT=0  $(KERNEL).cu;
	mv $(KERNEL)-$(LL_SUFFIX).ll sssp-$(LL_SUFFIX).ll;

cfanalyze_sssp_wln : main.cu sssp_worklistn.h ../../include/worklist.h
	$(CLANG) $(CLANG_FLAGS) $(LL_FLAGS) $(INCLUDES) -DVARIANT=1  $(KERNEL).cu;
	mv $(KERNEL)-$(LL_SUFFIX).ll sssp_wln-$(LL_SUFFIX).ll;

# cfanalyze_sssp_wlc : main.cu sssp_worklistc.h ../../include/worklistc.h
# 	$(CLANG) $(CLANG_FLAGS) $(LL_FLAGS) $(INCLUDES) -DVARIANT=2  $(KERNEL).cu;
# 	mv $(KERNEL)-$(LL_SUFFIX).ll sssp_wlc-$(LL_SUFFIX).ll;

cfanalyze_pass : cfanalyze_pass_sssp  cfanalyze_pass_sssp_wln

cfanalyze_pass_sssp :  sssp-$(LL_SUFFIX).ll
	$(OPT) $(CFANALYZE_FLAGS) < $^ > /dev/null 

cfanalyze_pass_sssp_wln :  sssp_wln-$(LL_SUFFIX).ll
	$(OPT) $(CFANALYZE_FLAGS) < $^ > /dev/null 

# cfanalyze_pass_sssp_wlc :  sssp_wlc-$(LL_SUFFIX).ll
# 	$(OPT) $(CFANALYZE_FLAGS) < $^ > /dev/null 

cfanalyze_clean :
	rm -f *.ll


