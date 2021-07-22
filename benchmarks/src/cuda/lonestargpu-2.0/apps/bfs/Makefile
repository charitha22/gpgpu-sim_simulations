TOPLEVEL := ../..
APP=bfs
SRC=main.cu 
INC=bfs_ls.h
B40_DIR=./back40computing/
B40C_INC=-I $(B40_DIR) -I $(B40_DIR)/test/ 
VARIANTS=bfs bfs-atomic bfs-wlc bfs-wlw bfs-wla

include ../common.mk

bfs-atomic: $(SRC) bfs_topo_atomic.h
	$(NVCC) $(EXTRA) -DVARIANT=1 -o $@ $<
	cp $@ $(BIN)

bfs-merrill: $(SRC) bfs_merrill.h $(B40_DIR)
	$(NVCC) $(EXTRA) $(B40C_INC) -DVARIANT=2 -o $@ $<
	cp $@ $(BIN)

bfs-wlw: $(SRC) bfs_worklistw.h ../../include/worklist.h
	$(NVCC) $(EXTRA) $(B40C_INC) -DVARIANT=3 -o $@ $<
	cp $@ $(BIN)

bfs-wla: $(SRC) bfs_worklista.h
	$(NVCC) $(EXTRA) -DVARIANT=5 -o $@ $<
	cp $@ $(BIN)

bfs-wlc: $(SRC) bfs_worklistc.h ../../include/worklistc.h
	$(NVCC) $(EXTRA) -DVARIANT=6 -o $@ $<
	cp $@ $(BIN)


include /home/charitha/workspace/cuda-benchmarks/rodinia_3.1/cuda/cfanalyze.config


KERNEL = main
DISABLE_WARNINGS=-w
 
cfanalyze : cfanalyze_bfs-atomic cfanalyze_bfs-wlw cfanalyze_bfs-wla 

cfanalyze_bfs : $(addsuffix .cu, $(KERNEL)) bfs_ls.h
	$(CLANG) $(CLANG_FLAGS)  $(LL_FLAGS) $(INCLUDES) -DVARIANT=0 $(KERNEL).cu
	mv $(KERNEL)-$(LL_SUFFIX).ll bfs-$(KERNEL)-$(LL_SUFFIX).ll

cfanalyze_bfs-atomic : $(addsuffix .cu, $(KERNEL)) bfs_topo_atomic.h
	$(CLANG) $(CLANG_FLAGS)  $(LL_FLAGS) $(INCLUDES) -DVARIANT=1 $(KERNEL).cu
	mv $(KERNEL)-$(LL_SUFFIX).ll bfs-atomic-$(KERNEL)-$(LL_SUFFIX).ll

# cfanalyze_bfs-merrill : $(addsuffix .cu, $(KERNELS)) bfs_merrill.h
	# $(foreach KERNEL, $(KERNELS), $(CLANG) $(DISABLE_WARNINGS) $(CLANG_FLAGS)  $(LL_FLAGS) $(INCLUDES) $(B40C_INC) -DVARIANT=2 $(KERNEL).cu;)
cfanalyze_bfs-wlw : $(addsuffix .cu, $(KERNEL)) bfs_worklistw.h ../../include/worklist.h
	$(CLANG) $(CLANG_FLAGS)  $(LL_FLAGS) $(INCLUDES) -DVARIANT=3 $(KERNEL).cu
	mv $(KERNEL)-$(LL_SUFFIX).ll bfs-wlw-$(KERNEL)-$(LL_SUFFIX).ll

cfanalyze_bfs-wla : $(addsuffix .cu, $(KERNEL)) bfs_worklista.h
	$(CLANG) $(CLANG_FLAGS)  $(LL_FLAGS) $(INCLUDES) -DVARIANT=5 $(KERNEL).cu
	mv $(KERNEL)-$(LL_SUFFIX).ll bfs-wla-$(KERNEL)-$(LL_SUFFIX).ll

# cfanalyze_bfs-wlc : $(addsuffix .cu, $(KERNEL)) bfs_worklistc.h ../../include/worklistc.h
# 	$(CLANG) $(CLANG_FLAGS)  $(LL_FLAGS) $(INCLUDES) -DVARIANT=6 $(KERNEL).cu
# 	mv $(KERNEL)-$(LL_SUFFIX).ll bfs-wlc-$(KERNEL)-$(LL_SUFFIX).ll


cfanalyze_pass : cfanalyze_pass_bfs-atomic cfanalyze_pass_bfs-wlw cfanalyze_pass_bfs-wla

cfanalyze_pass_bfs : $(addprefix bfs-, $(addsuffix -$(LL_SUFFIX).ll, $(KERNEL)))
	$(OPT) $(CFANALYZE_FLAGS) < $^ > /dev/null 

cfanalyze_pass_bfs-atomic : $(addprefix bfs-atomic-, $(addsuffix -$(LL_SUFFIX).ll, $(KERNEL)))
	$(OPT) $(CFANALYZE_FLAGS) < $^ > /dev/null 

cfanalyze_pass_bfs-wlw : $(addprefix bfs-wlw-, $(addsuffix -$(LL_SUFFIX).ll, $(KERNEL)))
	$(OPT) $(CFANALYZE_FLAGS) < $^ > /dev/null 

cfanalyze_pass_bfs-wla : $(addprefix bfs-wla-, $(addsuffix -$(LL_SUFFIX).ll, $(KERNEL)))
	$(OPT) $(CFANALYZE_FLAGS) < $^ > /dev/null 

cfanalyze_clean :
	rm -f *.ll

