# Makefile for LinEq_CULA example

all: clean checkEnv sgesv

include $(CULA_ROOT)/examples/common/common.mk

.PHONY: checkEnv build64 clean

INCLUDES=-I${CULA_INC_PATH}
LIBPATH64=-L${CULA_LIB_PATH_64}

LIBS=-lcula_core -lcula_lapack -lcublas -lcudart -lcula_lapack_pgfortran
MODULES=./cula_lapack_device_pgfortran.cuf ./cula_lapack.f90

checkEnv:	
ifndef CRAY_PRGENVPGI
	$(error Must have the PrgEnv-pgi environment loaded!)
endif
#Check to see if cray-libsci is loaded
ifdef CRAY_LIBSCI
	$(error Must unload cray-libsci module!)
endif
#Check to see if the CUDA toolkit is loaded
ifndef CUDATOOLKIT_HOME
	$(error Must load the cudatoolkit module!)
endif

sgesv: checkEnv dgesv_gpu.cuf
	ftn -o ./dgesv $(MODULES) dgesv_gpu.cuf $(CFLAGS) $(INCLUDES) $(LIBPATH64) $(LIBS) 

clean:
	rm -f LinEq_CULA 
	rm -f *.mod *.o
