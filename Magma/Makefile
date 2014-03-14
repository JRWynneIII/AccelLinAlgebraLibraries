all: setEnv build clean

.PHONY: setEnv build clean

LIBS=-lcuda -lmagma -lmagmablas
MAGMAMODULE=./magma.f90
SRC=sgesv.f90
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


build: setEnv
	ftn $(MAGMAMODULE) $(LIBS) $(SRC) -o $(OUTPUT)

clean: 
	rm -f *.o *.mod

