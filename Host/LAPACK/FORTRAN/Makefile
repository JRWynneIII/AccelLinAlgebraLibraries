all: clean checkEnv fortran_lapack C_lapack

.PHONY: clean checkEnv fortran_lapack C_lapack

checkEnv:
ifndef CRAY_LIBSCI
	$(error Must load the cray-libsci module!)
endif

fortran_lapack: checkEnv
	ftn LinEq.f90 -o ./LinEq

C_lapack: checkEnv
	cc sgesv.c -o ./LinEq

clean:
	rm -f *.o *.mod LinEq
