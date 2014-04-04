! This module is used to provide FORTRAN interfaces to the C functions and
! routines provided by MAGMA. To accomplish this, the ISO_C_BINDING module needs
! to be included so that all the variables are the right types for the C
! functions.
module magma
  Interface
      Integer function magma_sgesv(n, nrhs, A, ida, ipiv,B, idb, info) BIND (C, NAME="magma_sgesv")
        use iso_c_binding
        Implicit none
        integer (c_int),value::n
        integer (c_int),value::nrhs
        real (c_float)::A(*)
        integer (c_int),value::ida
        integer (c_int)::ipiv(*)
        real (c_float)::B(*)
        integer (c_int),value::idb
        integer (c_int)::info
      end function
   end Interface
   Interface
      Integer function magma_dgesv_gpu(n, nrhs, dA, ldda, ipiv, dB, lddb, info) BIND (C, NAME="magma_dgesv_gpu")
        use iso_c_binding
        use cudafor
        implicit none
        integer (c_int),value::n
        integer (c_int),value::nrhs
        real (c_double),device,dimension(:)::dA(*)
        integer (c_int),value::ldda
        integer (c_int)::ipiv(*)
        real (c_double),device,dimension(:)::dB(*)
        integer (c_int),value::lddb
        integer (c_int)::info
      end function
    end interface
end module
