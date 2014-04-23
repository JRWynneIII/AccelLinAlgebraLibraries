all: setEnv C_dgesv clean

.PHONY: setEnv clean

LIBS=-lcuda -lmagma -lmagmablas
OUTPUT=./magma_dgesv


setDev:
ifdef CRAY_PRGENVINTEL
	$(error PrgEnv-pgi must be loaded!)
endif

ifdef CRAY_PRGENVCRAY
	$(error PrgEnv-pgi must be loaded!)
endif
ifdef GCC_VERSION
	$(error PrgEnv-pgi must be loaded!)
endif
ifndef CRAY_LIBSCI
	$(error Must load the cray-libsci module!)
endif
#Check to see if the CUDA toolkit is loaded
ifndef CUDATOOLKIT_HOME
	$(error Must load the cudatoolkit module!)
endif

ifndef MAGMA_INC
	$(error Must load the MAGMA module!)
endif

C_dgesv: setEnv
	CC $(LIBS) dgesv_gpu.c -o $(OUTPUT)

clean: 
	rm -f *.o *.mod

