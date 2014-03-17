Accelerated Linear Algebra Libaries
=======================

This repository contains code that will show how to use various accelerated linear algebra libraries (MAGMA and CULA) with Fortran on Titan. Using the accelerated linear algebra libraries over the CPU versions will take advantage of Titan's NVIDIA GPUs which when used correctly can make your code execute faster and more efficiently.

###MAGMA
---------
MAGMA is an open source GPU accelerated Linear Algebra library provided by the University of Tennessee. Its availible on Titan in the `magma-1.3` and `magma-1.1` modules.

####Compiling
Before compiling the MAGMA Fortran code, the CUDA and MAGMA modules need to be loaded. This is accomplished by running either
```
$ module load cudatoolkit
$ module load magma
```
or by running
```
$ module load cudatoolkit magma
```
Either way this is done, the CUDA module needs to be loaded before the MAGMA module. 

Next, the `PrgEnv-gnu` programming environment needs to be loaded instead of the Intel, Cray, or the default PGI environments. MAGMA will only work with the GNU compilers. To do this run:
```
$ module swap PrgEnv-pgi PrgEnv-gnu
```

Replace `PrgEnv-pgi` with the apprpriate programming environment thats already loaded.

When compiling Fortran code for MAGMA, the `-lcuda` `-lmagma` and `-lmagmablas` flags need to be used. Also, in a seperate module, the MAGMA routines that are used in the code need to have a matching Interface block. This is needed because MAGMA is a C library, so we can't directly link it to our Fortran code. The `MAGMA_SGESV()` Interface block is located in the `magma` module inside `MAGMA/magma.f90` in this repository. See the comments in the `magma` module file for more information on writing interface blocks for other MAGMA routines

Finally to compile it, run
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


###CULA
-------
CULA is a CUDA accelerated linear algebra library availible from [www.culatools.com](www.culatools.com). Its availible on Titan in the `cula-dense` module (versions R13 through R16a. R14 is the default version on Titan).

####Compiling
Before compiling any CULA code on Titan, the `cray-libsci` module must be removed from the compilation environment by running:
```
$ module unload cray-libsci
```


>Note: Every time the programming environment is changed, this module is reloaded and must be unloaded!


After doing this, the CULA and CUDA modules must be loaded into the compilation environment. To do this, run:
```
$ module load cula-dense
$ module load cudatoolkit
```
or this can be completed in one step
```
$ module load cuda-dense cudatoolkit
```

>Note: If you want to use a different version of CULA with your code, simply replace `cula-dense` with `cula-dense/R16a` to load the R16a version, for example

Next, to actually compile the CULA code, the `-lcula_core` `-lcula_lapack` `-lcublas` `-lcudart` flags need to be used to tell the compiler wrapper to link in the correct libraries 

>Note: Depending on the version of CULA being used, the `-lcula_lapack_fortran` flag must also be used with your Fortran code. 

Next, using the `-L` and `-I` flags, tell the compiler and linker where the include directory and library directory is located. These paths are already provided in the `$CULA_INC_PATH` and `$CULA_LIB_PATH_64` environment variables for the include and library directories respectively.

If the CULA code is written in Fortran, you need to compile and link the CULA interface module provided with this repository in `CULA/cula_lapack.f90`. This will give the Fortran code access to all the CULA C functions and subroutines.

One final thing to keep in mind, If the `PrgEnv-cray` programming environment is loaded,  use the `-em` flag so that the compiler will recognize that one of the files is a module to be used in the other

So finally, when compiling the CULA Fortran code, it will look like this 
```
$ ftn -o ./LinEq_CULA cula_lapack.f90  LinEq_CULA.f90 -I$CULA_INC_PATH -L$CULA_LIB_PATH_64 -lcula_core -lcula_lapack -lcublas -lcudart
```

Alternatively, its possible to use the Makefile provided and run
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

Next, the `cula-dense` module needs to be loaded in the runtime environment so that the CULA code has access to the shared libraries. 
```
$ module load cula-dense
```

>Make sure to load the same version that you compiled and linked against!

Finally launch the executable using aprun
```
$ aprun -n1 ./LinEq_CULA
```
An example of the expected output from running either the CULA or MAGMA SGESV code in this repository sholud look like this:
```
   1.00000012    
   1.00000036    
   1.00000036    
Application 4634293 resources: utime ~3s, stime ~1s, Rss ~155520, inblocks ~706, outblocks ~960
```


>NOTE: The file `CULA/cula_lapack.f90` does not belong to me, it was taken from the CULA examples and edited by me.
