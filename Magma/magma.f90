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
end module
