all: setEnv clean

.PHONY: setEnv clean

LIBS=-lcuda -lmagma -lmagmablas
OUTPUT=./magma_sgesv

setEnv:
ifdef CRAY_PRGENVINTEL
	$(error PrgEnv-gnu must be loaded!)
endif

ifdef CRAY_PRGENVPGI
	$(error PrgEnv-gnu must be loaded!)
endif

ifdef CRAY_PRGENVCRAY
	$(error PrgEnv-gnu must be loaded!)
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

C_sgesv: setEnv
	cc $(LIBS) sgesv.c -o $(OUTPUT)

clean: 
	rm -f *.o *.mod

