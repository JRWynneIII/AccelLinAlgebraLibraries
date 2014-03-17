all: clean checkEnv lapack

.PHONY: clean checkEnv lapack

checkEnv:
ifndef CRAY_LIBSCI
	$(error Must load the cray-libsci module!)
endif

lapack: checkEnv
	ftn LinEq.f90 -o ./LinEq

clean:
	rm -f *.o *.mod LinEq
