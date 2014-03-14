# Makefile for LinEq_CULA example

include $(CULA_ROOT)/examples/common/common.mk

INCLUDES=-I${CULA_INC_PATH}
LIBPATH32=-L${CULA_LIB_PATH_32}
LIBPATH64=-L${CULA_LIB_PATH_64}

LIBS=-lcula_core -lcula_lapack -lcublas -lcudart
MODULES=./cula_lapack.f90
SRC=./LinEq_CULA.f90

CFLAGS=""
INTEL=false

ifdef CRAY_PRGENVGNU
	CFLAGS=-m64
endif
ifdef CRAY_PRGENVINTEL
	CFLAGS=-m64
	INTEL=true
endif
ifdef CRAY_PRGENVPGI
	CFLAGS=-m64
endif
ifdef CRAY_PRGENVCRAY
	CFLAGS=-em
endif

#$(if ifeq $(INTEL) true, @echo "Load the PrgEnv-intel module in your runtime environment!", @echo "")

usage:
	@echo "To build this example, type one of:"
	@echo ""
	@echo "    make build32"
	@echo "    make build64"
	@echo ""
	@echo "where '32' and '64' represent the platform you wish to build for"

build32:
	ftn $(CFLAGS) -o $(MEMBERWORK)/stf007/LinEq_CULA $(MODULES) $(SRC) $(CFLAGS) $(INCLUDES) $(LIBPATH32) $(LIBS)

build64:
	ftn $(CFLAGS) -o $(MEMBERWORK)/stf007/LinEq_CULA $(MODULES) $(SRC) $(CFLAGS) $(INCLUDES) $(LIBPATH64) $(LIBS) 

clean:
	rm -f LinEq_CULA
	rm -f *.mod

