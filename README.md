Linear Algebra Libaries
=======================

This repository shows how to use various linear algebra libraries (MAGMA, CULA, and LAPACK) on Titan with Fortran and C. MAGMA and CULA are accelerated libraries that take advantage of Titan's GPUs.

###LAPACK
---------

LAPACK is a CPU based linear algebra library. The `cray-libsci` module, which includes LAPACK routines, is included in all of the programming environment modules (`PrgEnv-*`) on Titan. 

####Fortran
------------
#####Compiling
Before compiling the LAPACK Fortran code, make sure that the `cray-libsci` module is loaded in your compile environment. Run this to see what modules are loaded in your environment:
```
$ module list
```

To compile the LAPACK Fortran code, run
```
$ ftn LinEq.f90 -o $MEMBERWORK/<PROJID>/LinEq
```

>Don't forget to replace `<PROJID>` with the appropriate project ID

Because the `cray-libsci` module is loaded by default, all the LAPACK functions are already availible to the complier

#####Running
To run LAPACK code, from your scratch directory, run
```
$ aprun -n1 ./LinEq
```

The executable can also be run inside a batch job. Fisrt verify that the executable is in your scratch directory then edit `titan.example.pbs` to change <PROJID> to the appropriate project id. Save the edited file as `titan.pbs`. Next, copy the `titan.pbs` file from the LAPACK folder to your scratch directory. Finally, change into that directory and run:
```
$ qsub titan.pbs
```

####C
------
#####Compiling
Before compiling the LAPACK C code, make sure that the `cray-libsci` module is loaded into your environment. To see a list of all the modules you have loaded, run:
```
$ module list
```

To compile the LAPACK C code, run:
```
$ cc sgesv.c -o $MEMBERWORK/<PROJID>/LinEq
```
>Don't forget to replace `<PROJID>` with the appropriate project ID

#####Running
To run the compiled LAPACK code, from your scratch directory, run:
```
$ aprun -n1 ./LinEq
```

The executable can also be run inside a batch job. Fisrt verify that the executable is in your scratch directory then edit `titan.example.pbs` to change <PROJID> to the appropriate project id. Save the edited file as `titan.pbs`. Next, copy the `titan.pbs` file from the LAPACK folder to your scratch directory. Finally, change into that directory and run 
```
$ qsub titan.pbs
```

###MAGMA
---------
MAGMA is an open source, GPU accelerated, Linear Algebra library provided by the Innovative Computing Laboratory at the University of Tennessee. It's availible on Titan in the `magma-1.3` and `magma-1.1` modules.

####Fortran
-----------
#####Compiling
Before compiling MAGMA Fortran code, the CUDA and MAGMA modules need to be loaded. This is accomplished by running 
```
$ module load cudatoolkit magma
```
This will first load the CUDA toolkit then the MAGMA module. MAGMA needs access to the CUDA toolkit in order to work, because MAGMA is GPU accelerated. Because of this, the CUDA toolkit needs to be loaded before the MAGMA module.

Next, the `PrgEnv-gnu` programming environment needs to be loaded instead of the Intel, Cray, or the default PGI environments. MAGMA will only work with the GNU compilers. To do this run:
```
$ module swap PrgEnv-pgi PrgEnv-gnu
```
Replace `PrgEnv-pgi` with the apprpriate programming environment thats already loaded.
> NOTE: If the MAGMA code contains any CUDA FORTRAN code other than the MAGMA calls, use the PGI environment (`PrgEnv-pgi`) instead of the GNU environment (`PrgEnv-gnu`). In all other cases, use the GNU environment.

When compiling Fortran code for MAGMA, the `-lcuda` `-lmagma` and `-lmagmablas` flags need to be used. Also, in a seperate module, the MAGMA routines that are used in the code need to have a matching Interface block. This is needed because MAGMA is a C library, so we can't directly link it to our Fortran code. The `MAGMA_SGESV()` Interface block is located in the `magma` module inside `MAGMA/magma.f90` in this repository. See the comments in the `magma` module file for more information on writing interface blocks for other MAGMA routines

Finally, to compile it, run:
```
$ ftn magma.f90 -lcuda -lmagma -lmagmablas sgesv.f90 -o $MEMBERWORK/<PROJID>/magma_sgesv
```

`magma.f90` is the file containing the module of Interface blocks.

This can also be accomplished by using the Makefile provided in the `MAGMA` directory in this repository.

From inside the `MAGMA` directory, simply run 
```
$ make fortran_sgesv
```

Next, just like with the previous example, copy the generated executable to your scratch space
```
$ cp magma_sgesv $MEMBERWORK/<PROJID>
```

The process for compiling the device interface version of the example is exactly the same, except use `magma.cuf` instead of `magma.f90` and use `dgesv_gpu.cuf` instead of `sgesv.f90`. Also, because the device interface example contains CUDA FORTRAN code, the PGI programming environment (`PrgEnv-pgi`) needs to be loaded instead of the GNU environment.

Also, to compile the device interface example, simple run: 
```
$ make fortran_device
```

#####Running
To execute this code from an interactive job, simply change directory into your scratch space and launch it via aprun.
```
$ aprun -n1 ./magma_sgesv
```

The executable can also be run inside a batch job. Fisrt verify that the executable is in your scratch directory then edit `titan.example.pbs` to change <PROJID> to the appropriate project id. Save the edited file as `titan.pbs`. Next, copy the `titan.pbs` file from the MAGMA folder to your scratch directory. Finally, change into that directory and run 
```
$ qsub titan.pbs
```


####C
-----
#####Compiling
Before compiling the MAGMA C code, the CUDA and MAGMA moduels must be loaded. Simply run:
```
$ module load cudatoolkit magma
```

Next, change your programming environment to the GNU environment. MAGMA will only work correctly with the GNU compilers. To do this, run:
```
$ module swap PrgEnv-pgi PrgEnv-gnu
```
Replace `PrgEnv-pgi` with whichever programming environment is already loaded.

Because MAGMA is a C library, there is no need for any kind of interface block. To compile the MAGMA C code, simply run:
```
$ cc -lcuda -lmagma -lmagmablas sgesv.c -o $MEMBERWORK/<PROJID>/magma_sgesv
```
Also, running this from the MAGMA folder will compile it for you:
```
$ make C_sgesv
```
After running the make command, make sure to copy the resulting executable to your scratch directory!

#####Running
To execute this code from an interactive job, simply change directory into your scratch space and launch it via aprun
```
$ aprun -n1 ./magma_sgesv
```

The executable can also be run inside a batch job. Fisrt verify that the executable is in your scratch directory then edit `titan.example.pbs` to change <PROJID> to the appropriate project id. Save the edited file as `titan.pbs`. Next, copy the `titan.pbs` file from the MAGMA folder to your scratch directory. Finally, change into that directory and run 
```
$ qsub titan.pbs
```


###CULA
-------
CULA is a CUDA accelerated, linear algebra library availible from [www.culatools.com](www.culatools.com). Its availible on Titan in the `cula-dense` module (versions R13 through R16a. R14 is the default version on Titan).
####Fortran
-----------
#####Compiling
Before compiling any CULA code on Titan, the `cray-libsci` module must be removed from the compilation environment by running:
```
$ module unload cray-libsci
```


>Note: Every time the programming environment is changed, this module is reloaded and must be unloaded!


After doing this, the CULA and CUDA modules must be loaded into the compilation environment. To do this, run:

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

Alternatively, its possible to use the provided Makefile and run
```
$ make sgesv
```

#####Running

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

The executable can also be run inside a batch job. Fisrt verify that the executable is in your scratch directory then edit `titan.example.pbs` to change <PROJID> to the appropriate project id. Save the edited file as `titan.pbs`. Next, copy the `titan.pbs` file from the CULA folder to your scratch directory. Finally, change into that directory and run 
```
$ qsub titan.pbs
```

####C
-----
#####Compiling
Before compiling any CULA code on Titan, the `cray-libsci` module must be removed from the compilation environment. To do this run:
```
$ module unload cray-libsci
```
>Note: Every time the programming environment is changed, the module must be re-unloaded as it is loaded with the new environment

Next, the CULA and CUDA modules need to be loaded. To do this, run:
```
$ module load cula-dense cudatoolkit
```
>If a different version of CULA is required, simply replace `cula-dense` with, for instance, `cula-dense/R16a` for the R16a version of CULA

To compile the CULA code, it needs to be linked agains all the cula libraries. This is done by compiling with `-lcula_core -lcula_lapack -lcublas -lcudart`. Along with this, the compiler needs to know where the libraries and include files exist. The `-I$CULA_INC_PATH -L$CULA_LIB_PATH_64` flags are used to do this. Finally run:
```
$ cc LinEq_CULA.c -o $MEMBERWORK/<PROJID>/LinEq_CULA -lcula_core -lcula_lapack -lcublas -lcudart -I$CULA_INC_PATH -L$CULA_LIB_PATH_64
```
Or use the provided Makefile to compile it by running:
```
$ make C_sgesv
```
#####Running
To run this in an interactive job, simply verify that the executable is in your scratch directory on ATLAS and run:
```
$ aprun -n1 ./LinEq_CULA
```

The executable can also be run inside a batch job. Fisrt verify that the executable is in your scratch directory then edit `titan.example.pbs` to change <PROJID> to the appropriate project id. Save the edited file as `titan.pbs`. Next, copy the `titan.pbs` file from the CULA folder to your scratch directory. Finally, change into that directory and run 
```
$ qsub titan.pbs
```


An example of the expected output from running either the LAPACK, CULA or MAGMA code in this repository should look like this:
```
   1.00000012    
   1.00000036    
   1.00000036    
Application 4634293 resources: utime ~3s, stime ~1s, Rss ~155520, inblocks ~706, outblocks ~960
```

###Cloning this repository
To clone this repository into your work space on Titan, the git module must first be loaded
```
$ module load git
```

Next, simply just run
```
$ git clone https://github.com/JRWynneIII/AccelLinAlgebraLibaries.git
```

This will clone the repository into a folder in your present working directory named `AccelLinAlgebraLibraries`


>NOTE: The file `CULA/cula_lapack.f90` does not belong to me, it was taken from the CULA examples and edited by me.
