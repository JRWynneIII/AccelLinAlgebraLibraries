# Makefile for LinEq_CULA example

all: clean checkEnv dgesv

include $(CULA_ROOT)/examples/common/common.mk

.PHONY: checkEnv build64 clean

INCLUDES=-I${CULA_INC_PATH}
LIBPATH64=-L${CULA_LIB_PATH_64}

LIBS=-lcula_core -lcula_lapack -lcublas -lcudart -lcuda

checkEnv:	
#Check to see if cray-libsci is loaded
ifdef CRAY_LIBSCI
	$(error Must unload cray-libsci module!)
endif
#Check to see if the CUDA toolkit is loaded
ifndef CUDATOOLKIT_HOME
	$(error Must load the cudatoolkit module!)
endif

ifndef CRAY_PRGENVGNU
	$(error Must have the PrgEnv-gnu environment loaded!)
endif

dgesv: checkEnv
	CC -o ./dgesv dgesv_gpu.cpp $(CFLAGS) $(INCLUDES) $(LIBPATH64) $(LIBS) 

clean:
	rm -f LinEq_CULA 
	rm -f *.mod *.o
