all: setDev C_dgesv clean

.PHONY: setDev clean

LIBS=-lcuda -lmagma -lmagmablas
OUTPUT=./magma_dgesv


setDev:
ifndef CRAY_PRGENVGNU
	$(error Must load the PrgEnv-gnu environment!)
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

C_dgesv: setDev
	CC $(LIBS) dgesv_gpu.c -o $(OUTPUT)

clean: 
	rm -f *.o *.mod

