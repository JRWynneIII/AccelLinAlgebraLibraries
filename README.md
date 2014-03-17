Accelerated Linear Algebra Libaries
=======================

This repository contains code that will show how to use various accelerated linear algebra libraries (MAGMA and CULA) with Fortran on Titan. Using the accelerated linear algebra libraries over the CPU versions will take advantage of Titan's NVIDIA GPUs which when used correctly can make your code execute faster and more efficiently.

###CULA
-------
CULA is a CUDA accelerated linear algebra library availible from [www.culatools.com](www.culatools.com). Its availible on Titan in the `cula-dense` module (versions R13 through R16a. R14 is the default version on Titan).

####Compiling
Before you can compile your CULA code on Titan, you must first remove the `cray-libsci` module by running:
```
$ module unload cray-libsci
```


>Note: Every time the programming environment is changed, this module is reloaded and must be unloaded!


After doing this, the CULA and CUDA modules must be loaded into your environment. To do this, simply run:
```
$ module load cula-dense
$ module load cudatoolkit
```
or you can also complete this in one step
```
$ module load cuda-dense cudatoolkit
```

>Note: If you want to use a different version of CULA with your code, simply replace `cula-dense` with `cula-dense/R16a` to load the R16a version, for example

Next, to actually compile your CULA code, you need to use the `-lcula_core` `-lcula_lapack` `-lcublas` `-lcudart` flags to tell the compiler wrapper to link in the correct libraries (Note: Depending on the version of CULA being used, the `-lcula_lapack_fortran` flag must also be used with your Fortran code). Next, using the `-L` and `-I` flags, you need to tell the compiler and linker where the include directory and library directory is located. These paths are already provided in the `$CULA_INC_PATH` and `$CULA_LIB_PATH_64` environment variables for your include and library directories respectively.

If your CULA code is written in Fortran, you need to compile and link the CULA interface module provided with this repository in `CULA/cula_lapack.f90`. This will give you access to all the CULA C functions and subroutines in Fortran.

One final thing to keep in mind, If you're compling your Fortran CULA code with the `PrgEnv-cray` programming environment loaded, you need to use the `-em` flag so that the compiler will recognize that one of the files is a module to be used in the other

So finally, when compiling your CULA Fortran code, it will look like this 
```
$ ftn -o ./LinEq_CULA cula_lapack.f90  LinEq_CULA.f90 -I$CULA_INC_PATH -L$CULA_LIB_PATH_64 -lcula_core -lcula_lapack -lcublas -lcudart
```

You can also use the Makefile provided and run
```
$ make sgesv
```

for the SGESV example code or
```
$ make sgeqrf
```
for the SGEQRF example code.

####Running

To run this code in an interactive job, copy the executable (in this case `LinEq_CULA`) to your scratch space on ATLAS
```
$ cp LinEq_CULA $MEMBERWORK/<PROJID>
```
Replace `<PROJID>` with your project ID directory

Next, the `cula-dense` module needs to be loaded in your runtime environment so that your CULA code has access to the shared libraries. Make sure you load the same version that you compiled and linked against!
```
$ module load cula-dense
```

Finally launch the executable using aprun
```
$ aprun -n1 ./LinEq_CULA
```

###MAGMA
---------
MAGMA is an open source GPU accelerated Linear Algebra library provided by the University of Tennessee. Its availible on Titan in the `magma-1.3` and `magma-1.1` modules.

####Compiling
Compiling MAGMA Fortran code for Titan is similar to compiling CULA Fortran code. First the CUDA and MAGMA modules need to be loaded. This is accomplished by running either
```
$ module load cudatoolkit
$ module load magma
```
or by running
```
$ module load cudatoolkit magma
```
Either way you do this, the CUDA module needs to be loaded BEFORE the MAGMA module. 
>Its important to note here that you must NOT unload the `cray-libsci` module
>If you attempt to compile without `cray-libsci` loaded, it will fail to link the appropriate libraries

Next, the `PrgEnv-gnu` programming environment needs to be loaded instead of the Intel, Cray, or the default PGI environments. MAGMA will only work with the GNU compilers. Do do this run:
```
$ module swap PrgEnv-pgi PrgEnv-gnu
```

Replace `PrgEnv-pgi` with the apprpriate programming environment thats already loaded.

When you compile your Fortran code for MAGMA, you need to use the `-lcuda` `-lmagma` and `-lmagmablas` flags. Also, in a seperate module, the MAGMA routines that you use need to have a matching Interface block. This is needed because MAGMA is a C library, so we can't directly link it to our Fortran code. The `MAGMA_SGESV()` Interface block is located in the `magma` module inside `MAGMA/magma.f90` in this repository. 

Finally to compile it, we simply run
```
$ ftn magma.f90 -lcuda -lmagma -lmagmablas sgesv.f90 -o ./magma_sgesv
```

Where `magma.f90` is the file containing the Interface blocks. This can also be accomplished by using the Makefile provided in the `MAGMA` directory in this repository.

Simply run 
```
$ make
```

from inside the `MAGMA` directory. Next, just like with the CULA example, copy the generated executable to your scratch space
```
$ cp magma_sgesv $MEMBERWORK/<PROJID>
```

####Running
To execute this code from an interactive job, simply change directory into your scratch space and launch it via aprun.
```
$ aprun -n1 ./magma_sgesv
```
No other modules need to be loaded or unloaded in your runtime environment for it to run correctly.

An example of the output you should expect from running either the CULA or MAGMA SGESV code in this repository sholud look like this:
```
   1.00000012    
   1.00000036    
   1.00000036    
Application 4634293 resources: utime ~3s, stime ~1s, Rss ~155520, inblocks ~706, outblocks ~960
```
