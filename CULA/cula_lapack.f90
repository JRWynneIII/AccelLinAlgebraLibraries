! This file contains the host interface declarations for all supported Fortran
! compilers.
!
! This file does not declare complete dimensions for routines because many
! routines have variable dimensions which are impossible to declare fully.
! Please consult the API Reference document for full details of expected
! arguments.

module cula_lapack
    use ISO_C_BINDING
    implicit none
    ! culaStatus culaSbdsqr(char uplo, int n, int ncvt, int nru, int ncc, culaFloat* d, culaFloat* e, culaFloat* vt, int ldvt, culaFloat* u, int ldu, culaFloat* c, int ldc);
    interface
        integer(C_INT) function cula_sbdsqr(uplo,n,ncvt,nru,ncc,d,e,vt,ldvt,u,ldu,c,ldc) &
            BIND(C,NAME="culaSbdsqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: ncvt
            integer(C_INT), value :: nru
            integer(C_INT), value :: ncc
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            integer(C_INT), value :: ldvt
            real(C_FLOAT), dimension(ldvt,*) :: vt
            integer(C_INT), value :: ldu
            real(C_FLOAT), dimension(ldu,*) :: u
            integer(C_INT), value :: ldc
            real(C_FLOAT), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaDbdsqr(char uplo, int n, int ncvt, int nru, int ncc, culaDouble* d, culaDouble* e, culaDouble* vt, int ldvt, culaDouble* u, int ldu, culaDouble* c, int ldc);
    interface
        integer(C_INT) function cula_dbdsqr(uplo,n,ncvt,nru,ncc,d,e,vt,ldvt,u,ldu,c,ldc) &
            BIND(C,NAME="culaDbdsqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: ncvt
            integer(C_INT), value :: nru
            integer(C_INT), value :: ncc
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            integer(C_INT), value :: ldvt
            real(C_DOUBLE), dimension(ldvt,*) :: vt
            integer(C_INT), value :: ldu
            real(C_DOUBLE), dimension(ldu,*) :: u
            integer(C_INT), value :: ldc
            real(C_DOUBLE), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaCbdsqr(char uplo, int n, int ncvt, int nru, int ncc, culaFloat* d, culaFloat* e, culaFloatComplex* vt, int ldvt, culaFloatComplex* u, int ldu, culaFloatComplex* c, int ldc);
    interface
        integer(C_INT) function cula_cbdsqr(uplo,n,ncvt,nru,ncc,d,e,vt,ldvt,u,ldu,c,ldc) &
            BIND(C,NAME="culaCbdsqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: ncvt
            integer(C_INT), value :: nru
            integer(C_INT), value :: ncc
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            integer(C_INT), value :: ldvt
            complex(C_FLOAT_COMPLEX), dimension(ldvt,*) :: vt
            integer(C_INT), value :: ldu
            complex(C_FLOAT_COMPLEX), dimension(ldu,*) :: u
            integer(C_INT), value :: ldc
            complex(C_FLOAT_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaZbdsqr(char uplo, int n, int ncvt, int nru, int ncc, culaDouble* d, culaDouble* e, culaDoubleComplex* vt, int ldvt, culaDoubleComplex* u, int ldu, culaDoubleComplex* c, int ldc);
    interface
        integer(C_INT) function cula_zbdsqr(uplo,n,ncvt,nru,ncc,d,e,vt,ldvt,u,ldu,c,ldc) &
            BIND(C,NAME="culaZbdsqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: ncvt
            integer(C_INT), value :: nru
            integer(C_INT), value :: ncc
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            integer(C_INT), value :: ldvt
            complex(C_DOUBLE_COMPLEX), dimension(ldvt,*) :: vt
            integer(C_INT), value :: ldu
            complex(C_DOUBLE_COMPLEX), dimension(ldu,*) :: u
            integer(C_INT), value :: ldc
            complex(C_DOUBLE_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaSgbtrf(int m, int n, int kl, int ku, culaFloat* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_sgbtrf(m,n,kl,ku,a,lda,ipiv) &
            BIND(C,NAME="culaSgbtrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaDgbtrf(int m, int n, int kl, int ku, culaDouble* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_dgbtrf(m,n,kl,ku,a,lda,ipiv) &
            BIND(C,NAME="culaDgbtrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaCgbtrf(int m, int n, int kl, int ku, culaFloatComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_cgbtrf(m,n,kl,ku,a,lda,ipiv) &
            BIND(C,NAME="culaCgbtrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaZgbtrf(int m, int n, int kl, int ku, culaDoubleComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_zgbtrf(m,n,kl,ku,a,lda,ipiv) &
            BIND(C,NAME="culaZgbtrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaSgbtrs(char trans, int n, int kl, int ku, int nrhs, culaFloat* ab, int ldab, culaInt* ipiv, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_sgbtrs(trans,n,kl,ku,nrhs,ab,ldab,ipiv,b,ldb) &
            BIND(C,NAME="culaSgbtrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: n
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: ldab
            real(C_FLOAT), dimension(ldab,*) :: ab
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDgbtrs(char trans, int n, int kl, int ku, int nrhs, culaDouble* ab, int ldab, culaInt* ipiv, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dgbtrs(trans,n,kl,ku,nrhs,ab,ldab,ipiv,b,ldb) &
            BIND(C,NAME="culaDgbtrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: n
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: ldab
            real(C_DOUBLE), dimension(ldab,*) :: ab
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCgbtrs(char trans, int n, int kl, int ku, int nrhs, culaFloatComplex* ab, int ldab, culaInt* ipiv, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_cgbtrs(trans,n,kl,ku,nrhs,ab,ldab,ipiv,b,ldb) &
            BIND(C,NAME="culaCgbtrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: n
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: ldab
            complex(C_FLOAT_COMPLEX), dimension(ldab,*) :: ab
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZgbtrs(char trans, int n, int kl, int ku, int nrhs, culaDoubleComplex* ab, int ldab, culaInt* ipiv, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zgbtrs(trans,n,kl,ku,nrhs,ab,ldab,ipiv,b,ldb) &
            BIND(C,NAME="culaZgbtrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: n
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: ldab
            complex(C_DOUBLE_COMPLEX), dimension(ldab,*) :: ab
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaSgebrd(int m, int n, culaFloat* a, int lda, culaFloat* d, culaFloat* e, culaFloat* tauq, culaFloat* taup);
    interface
        integer(C_INT) function cula_sgebrd(m,n,a,lda,d,e,tauq,taup) &
            BIND(C,NAME="culaSgebrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            real(C_FLOAT), dimension(*) :: tauq
            real(C_FLOAT), dimension(*) :: taup
        end function
    end interface

    ! culaStatus culaDgebrd(int m, int n, culaDouble* a, int lda, culaDouble* d, culaDouble* e, culaDouble* tauq, culaDouble* taup);
    interface
        integer(C_INT) function cula_dgebrd(m,n,a,lda,d,e,tauq,taup) &
            BIND(C,NAME="culaDgebrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            real(C_DOUBLE), dimension(*) :: tauq
            real(C_DOUBLE), dimension(*) :: taup
        end function
    end interface

    ! culaStatus culaCgebrd(int m, int n, culaFloatComplex* a, int lda, culaFloat* d, culaFloat* e, culaFloatComplex* tauq, culaFloatComplex* taup);
    interface
        integer(C_INT) function cula_cgebrd(m,n,a,lda,d,e,tauq,taup) &
            BIND(C,NAME="culaCgebrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            complex(C_FLOAT_COMPLEX), dimension(*) :: tauq
            complex(C_FLOAT_COMPLEX), dimension(*) :: taup
        end function
    end interface

    ! culaStatus culaZgebrd(int m, int n, culaDoubleComplex* a, int lda, culaDouble* d, culaDouble* e, culaDoubleComplex* tauq, culaDoubleComplex* taup);
    interface
        integer(C_INT) function cula_zgebrd(m,n,a,lda,d,e,tauq,taup) &
            BIND(C,NAME="culaZgebrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tauq
            complex(C_DOUBLE_COMPLEX), dimension(*) :: taup
        end function
    end interface

    ! culaStatus culaSgeev(char jobvl, char jobvr, int n, culaFloat* a, int lda, culaFloat* wr, culaFloat* wi, culaFloat* vl, int ldvl, culaFloat* vr, int ldvr);
    interface
        integer(C_INT) function cula_sgeev(jobvl,jobvr,n,a,lda,wr,wi,vl,ldvl,vr,ldvr) &
            BIND(C,NAME="culaSgeev")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobvl
            character(C_CHAR), value :: jobvr
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: wr
            real(C_FLOAT), dimension(*) :: wi
            integer(C_INT), value :: ldvl
            real(C_FLOAT), dimension(ldvl,*) :: vl
            integer(C_INT), value :: ldvr
            real(C_FLOAT), dimension(ldvr,*) :: vr
        end function
    end interface

    ! culaStatus culaDgeev(char jobvl, char jobvr, int n, culaDouble* a, int lda, culaDouble* wr, culaDouble* wi, culaDouble* vl, int ldvl, culaDouble* vr, int ldvr);
    interface
        integer(C_INT) function cula_dgeev(jobvl,jobvr,n,a,lda,wr,wi,vl,ldvl,vr,ldvr) &
            BIND(C,NAME="culaDgeev")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobvl
            character(C_CHAR), value :: jobvr
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: wr
            real(C_DOUBLE), dimension(*) :: wi
            integer(C_INT), value :: ldvl
            real(C_DOUBLE), dimension(ldvl,*) :: vl
            integer(C_INT), value :: ldvr
            real(C_DOUBLE), dimension(ldvr,*) :: vr
        end function
    end interface

    ! culaStatus culaCgeev(char jobvl, char jobvr, int n, culaFloatComplex* a, int lda, culaFloatComplex* w, culaFloatComplex* vl, int ldvl, culaFloatComplex* vr, int ldvr);
    interface
        integer(C_INT) function cula_cgeev(jobvl,jobvr,n,a,lda,w,vl,ldvl,vr,ldvr) &
            BIND(C,NAME="culaCgeev")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobvl
            character(C_CHAR), value :: jobvr
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: w
            integer(C_INT), value :: ldvl
            complex(C_FLOAT_COMPLEX), dimension(ldvl,*) :: vl
            integer(C_INT), value :: ldvr
            complex(C_FLOAT_COMPLEX), dimension(ldvr,*) :: vr
        end function
    end interface

    ! culaStatus culaZgeev(char jobvl, char jobvr, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* w, culaDoubleComplex* vl, int ldvl, culaDoubleComplex* vr, int ldvr);
    interface
        integer(C_INT) function cula_zgeev(jobvl,jobvr,n,a,lda,w,vl,ldvl,vr,ldvr) &
            BIND(C,NAME="culaZgeev")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobvl
            character(C_CHAR), value :: jobvr
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: w
            integer(C_INT), value :: ldvl
            complex(C_DOUBLE_COMPLEX), dimension(ldvl,*) :: vl
            integer(C_INT), value :: ldvr
            complex(C_DOUBLE_COMPLEX), dimension(ldvr,*) :: vr
        end function
    end interface

    ! culaStatus culaSgehrd(int n, int ilo, int ihi, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sgehrd(n,ilo,ihi,a,lda,tau) &
            BIND(C,NAME="culaSgehrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: ilo
            integer(C_INT), value :: ihi
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDgehrd(int n, int ilo, int ihi, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dgehrd(n,ilo,ihi,a,lda,tau) &
            BIND(C,NAME="culaDgehrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: ilo
            integer(C_INT), value :: ihi
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCgehrd(int n, int ilo, int ihi, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cgehrd(n,ilo,ihi,a,lda,tau) &
            BIND(C,NAME="culaCgehrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: ilo
            integer(C_INT), value :: ihi
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZgehrd(int n, int ilo, int ihi, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zgehrd(n,ilo,ihi,a,lda,tau) &
            BIND(C,NAME="culaZgehrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: ilo
            integer(C_INT), value :: ihi
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSgelqf(int m, int n, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sgelqf(m,n,a,lda,tau) &
            BIND(C,NAME="culaSgelqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDgelqf(int m, int n, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dgelqf(m,n,a,lda,tau) &
            BIND(C,NAME="culaDgelqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCgelqf(int m, int n, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cgelqf(m,n,a,lda,tau) &
            BIND(C,NAME="culaCgelqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZgelqf(int m, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zgelqf(m,n,a,lda,tau) &
            BIND(C,NAME="culaZgelqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSgels(char trans, int m, int n, int nrhs, culaFloat* a, int lda, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_sgels(trans,m,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaSgels")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDgels(char trans, int m, int n, int nrhs, culaDouble* a, int lda, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dgels(trans,m,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaDgels")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCgels(char trans, int m, int n, int nrhs, culaFloatComplex* a, int lda, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_cgels(trans,m,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaCgels")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZgels(char trans, int m, int n, int nrhs, culaDoubleComplex* a, int lda, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zgels(trans,m,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaZgels")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaSgeqlf(int m, int n, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sgeqlf(m,n,a,lda,tau) &
            BIND(C,NAME="culaSgeqlf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDgeqlf(int m, int n, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dgeqlf(m,n,a,lda,tau) &
            BIND(C,NAME="culaDgeqlf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCgeqlf(int m, int n, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cgeqlf(m,n,a,lda,tau) &
            BIND(C,NAME="culaCgeqlf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZgeqlf(int m, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zgeqlf(m,n,a,lda,tau) &
            BIND(C,NAME="culaZgeqlf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSgeqrf(int m, int n, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sgeqrf(m,n,a,lda,tau) &
            BIND(C,NAME="culaSgeqrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDgeqrf(int m, int n, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dgeqrf(m,n,a,lda,tau) &
            BIND(C,NAME="culaDgeqrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCgeqrf(int m, int n, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cgeqrf(m,n,a,lda,tau) &
            BIND(C,NAME="culaCgeqrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZgeqrf(int m, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zgeqrf(m,n,a,lda,tau) &
            BIND(C,NAME="culaZgeqrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSgeqrfp(int m, int n, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sgeqrfp(m,n,a,lda,tau) &
            BIND(C,NAME="culaSgeqrfp")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDgeqrfp(int m, int n, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dgeqrfp(m,n,a,lda,tau) &
            BIND(C,NAME="culaDgeqrfp")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCgeqrfp(int m, int n, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cgeqrfp(m,n,a,lda,tau) &
            BIND(C,NAME="culaCgeqrfp")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZgeqrfp(int m, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zgeqrfp(m,n,a,lda,tau) &
            BIND(C,NAME="culaZgeqrfp")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSgeqrs(int m, int n, int nrhs, culaFloat* a, int lda, culaFloat* tau, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_sgeqrs(m,n,nrhs,a,lda,tau,b,ldb) &
            BIND(C,NAME="culaSgeqrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDgeqrs(int m, int n, int nrhs, culaDouble* a, int lda, culaDouble* tau, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dgeqrs(m,n,nrhs,a,lda,tau,b,ldb) &
            BIND(C,NAME="culaDgeqrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCgeqrs(int m, int n, int nrhs, culaFloatComplex* a, int lda, culaFloatComplex* tau, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_cgeqrs(m,n,nrhs,a,lda,tau,b,ldb) &
            BIND(C,NAME="culaCgeqrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZgeqrs(int m, int n, int nrhs, culaDoubleComplex* a, int lda, culaDoubleComplex* tau, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zgeqrs(m,n,nrhs,a,lda,tau,b,ldb) &
            BIND(C,NAME="culaZgeqrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaSgerqf(int m, int n, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sgerqf(m,n,a,lda,tau) &
            BIND(C,NAME="culaSgerqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDgerqf(int m, int n, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dgerqf(m,n,a,lda,tau) &
            BIND(C,NAME="culaDgerqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCgerqf(int m, int n, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cgerqf(m,n,a,lda,tau) &
            BIND(C,NAME="culaCgerqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZgerqf(int m, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zgerqf(m,n,a,lda,tau) &
            BIND(C,NAME="culaZgerqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSgesv(int n, int nrhs, culaFloat* a, int lda, culaInt* ipiv, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_sgesv(n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaSgesv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDgesv(int n, int nrhs, culaDouble* a, int lda, culaInt* ipiv, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dgesv(n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaDgesv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCgesv(int n, int nrhs, culaFloatComplex* a, int lda, culaInt* ipiv, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_cgesv(n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaCgesv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZgesv(int n, int nrhs, culaDoubleComplex* a, int lda, culaInt* ipiv, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zgesv(n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaZgesv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDsgesv(int n, int nrhs, culaDouble* a, int lda, culaInt* ipiv, culaDouble* b, int ldb, culaDouble* x, int ldx, int* iter);
    interface
        integer(C_INT) function cula_dsgesv(n,nrhs,a,lda,ipiv,b,ldb,x,ldx,iter) &
            BIND(C,NAME="culaDsgesv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
            integer(C_INT), value :: ldx
            real(C_DOUBLE), dimension(ldx,*) :: x
            integer(C_INT), dimension(*) :: iter
        end function
    end interface

    ! culaStatus culaZcgesv(int n, int nrhs, culaDoubleComplex* a, int lda, culaInt* ipiv, culaDoubleComplex* b, int ldb, culaDoubleComplex* x, int ldx, int* iter);
    interface
        integer(C_INT) function cula_zcgesv(n,nrhs,a,lda,ipiv,b,ldb,x,ldx,iter) &
            BIND(C,NAME="culaZcgesv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
            integer(C_INT), value :: ldx
            complex(C_DOUBLE_COMPLEX), dimension(ldx,*) :: x
            integer(C_INT), dimension(*) :: iter
        end function
    end interface

    ! culaStatus culaSgesdd(char jobz, int m, int n, culaFloat* a, int lda, culaFloat* s, culaFloat* u, int ldu, culaFloat* vt, int ldvt);
    interface
        integer(C_INT) function cula_sgesdd(jobz,m,n,a,lda,s,u,ldu,vt,ldvt) &
            BIND(C,NAME="culaSgesdd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: s
            integer(C_INT), value :: ldu
            real(C_FLOAT), dimension(ldu,*) :: u
            integer(C_INT), value :: ldvt
            real(C_FLOAT), dimension(ldvt,*) :: vt
        end function
    end interface

    ! culaStatus culaDgesdd(char jobz, int m, int n, culaDouble* a, int lda, culaDouble* s, culaDouble* u, int ldu, culaDouble* vt, int ldvt);
    interface
        integer(C_INT) function cula_dgesdd(jobz,m,n,a,lda,s,u,ldu,vt,ldvt) &
            BIND(C,NAME="culaDgesdd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: s
            integer(C_INT), value :: ldu
            real(C_DOUBLE), dimension(ldu,*) :: u
            integer(C_INT), value :: ldvt
            real(C_DOUBLE), dimension(ldvt,*) :: vt
        end function
    end interface

    ! culaStatus culaCgesdd(char jobz, int m, int n, culaFloatComplex* a, int lda, culaFloat* s, culaFloatComplex* u, int ldu, culaFloatComplex* vt, int ldvt);
    interface
        integer(C_INT) function cula_cgesdd(jobz,m,n,a,lda,s,u,ldu,vt,ldvt) &
            BIND(C,NAME="culaCgesdd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: s
            integer(C_INT), value :: ldu
            complex(C_FLOAT_COMPLEX), dimension(ldu,*) :: u
            integer(C_INT), value :: ldvt
            complex(C_FLOAT_COMPLEX), dimension(ldvt,*) :: vt
        end function
    end interface

    ! culaStatus culaZgesdd(char jobz, int m, int n, culaDoubleComplex* a, int lda, culaDouble* s, culaDoubleComplex* u, int ldu, culaDoubleComplex* vt, int ldvt);
    interface
        integer(C_INT) function cula_zgesdd(jobz,m,n,a,lda,s,u,ldu,vt,ldvt) &
            BIND(C,NAME="culaZgesdd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: s
            integer(C_INT), value :: ldu
            complex(C_DOUBLE_COMPLEX), dimension(ldu,*) :: u
            integer(C_INT), value :: ldvt
            complex(C_DOUBLE_COMPLEX), dimension(ldvt,*) :: vt
        end function
    end interface

    ! culaStatus culaSgesvd(char jobu, char jobvt, int m, int n, culaFloat* a, int lda, culaFloat* s, culaFloat* u, int ldu, culaFloat* vt, int ldvt);
    interface
        integer(C_INT) function cula_sgesvd(jobu,jobvt,m,n,a,lda,s,u,ldu,vt,ldvt) &
            BIND(C,NAME="culaSgesvd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobu
            character(C_CHAR), value :: jobvt
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: s
            integer(C_INT), value :: ldu
            real(C_FLOAT), dimension(ldu,*) :: u
            integer(C_INT), value :: ldvt
            real(C_FLOAT), dimension(ldvt,*) :: vt
        end function
    end interface

    ! culaStatus culaDgesvd(char jobu, char jobvt, int m, int n, culaDouble* a, int lda, culaDouble* s, culaDouble* u, int ldu, culaDouble* vt, int ldvt);
    interface
        integer(C_INT) function cula_dgesvd(jobu,jobvt,m,n,a,lda,s,u,ldu,vt,ldvt) &
            BIND(C,NAME="culaDgesvd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobu
            character(C_CHAR), value :: jobvt
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: s
            integer(C_INT), value :: ldu
            real(C_DOUBLE), dimension(ldu,*) :: u
            integer(C_INT), value :: ldvt
            real(C_DOUBLE), dimension(ldvt,*) :: vt
        end function
    end interface

    ! culaStatus culaCgesvd(char jobu, char jobvt, int m, int n, culaFloatComplex* a, int lda, culaFloat* s, culaFloatComplex* u, int ldu, culaFloatComplex* vt, int ldvt);
    interface
        integer(C_INT) function cula_cgesvd(jobu,jobvt,m,n,a,lda,s,u,ldu,vt,ldvt) &
            BIND(C,NAME="culaCgesvd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobu
            character(C_CHAR), value :: jobvt
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: s
            integer(C_INT), value :: ldu
            complex(C_FLOAT_COMPLEX), dimension(ldu,*) :: u
            integer(C_INT), value :: ldvt
            complex(C_FLOAT_COMPLEX), dimension(ldvt,*) :: vt
        end function
    end interface

    ! culaStatus culaZgesvd(char jobu, char jobvt, int m, int n, culaDoubleComplex* a, int lda, culaDouble* s, culaDoubleComplex* u, int ldu, culaDoubleComplex* vt, int ldvt);
    interface
        integer(C_INT) function cula_zgesvd(jobu,jobvt,m,n,a,lda,s,u,ldu,vt,ldvt) &
            BIND(C,NAME="culaZgesvd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobu
            character(C_CHAR), value :: jobvt
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: s
            integer(C_INT), value :: ldu
            complex(C_DOUBLE_COMPLEX), dimension(ldu,*) :: u
            integer(C_INT), value :: ldvt
            complex(C_DOUBLE_COMPLEX), dimension(ldvt,*) :: vt
        end function
    end interface

    ! culaStatus culaSgetrf(int m, int n, culaFloat* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_sgetrf(m,n,a,lda,ipiv) &
            BIND(C,NAME="culaSgetrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaDgetrf(int m, int n, culaDouble* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_dgetrf(m,n,a,lda,ipiv) &
            BIND(C,NAME="culaDgetrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaCgetrf(int m, int n, culaFloatComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_cgetrf(m,n,a,lda,ipiv) &
            BIND(C,NAME="culaCgetrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaZgetrf(int m, int n, culaDoubleComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_zgetrf(m,n,a,lda,ipiv) &
            BIND(C,NAME="culaZgetrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaSgetri(int n, culaFloat* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_sgetri(n,a,lda,ipiv) &
            BIND(C,NAME="culaSgetri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaDgetri(int n, culaDouble* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_dgetri(n,a,lda,ipiv) &
            BIND(C,NAME="culaDgetri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaCgetri(int n, culaFloatComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_cgetri(n,a,lda,ipiv) &
            BIND(C,NAME="culaCgetri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaZgetri(int n, culaDoubleComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_zgetri(n,a,lda,ipiv) &
            BIND(C,NAME="culaZgetri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaSgetrs(char trans, int n, int nrhs, culaFloat* a, int lda, culaInt* ipiv, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_sgetrs(trans,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaSgetrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDgetrs(char trans, int n, int nrhs, culaDouble* a, int lda, culaInt* ipiv, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dgetrs(trans,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaDgetrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCgetrs(char trans, int n, int nrhs, culaFloatComplex* a, int lda, culaInt* ipiv, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_cgetrs(trans,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaCgetrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZgetrs(char trans, int n, int nrhs, culaDoubleComplex* a, int lda, culaInt* ipiv, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zgetrs(trans,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaZgetrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: trans
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaSgglse(int m, int n, int p, culaFloat* a, int lda, culaFloat* b, int ldb, culaFloat* c, culaFloat* d, culaFloat* x);
    interface
        integer(C_INT) function cula_sgglse(m,n,p,a,lda,b,ldb,c,d,x) &
            BIND(C,NAME="culaSgglse")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: p
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
            real(C_FLOAT), dimension(*) :: c
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: x
        end function
    end interface

    ! culaStatus culaDgglse(int m, int n, int p, culaDouble* a, int lda, culaDouble* b, int ldb, culaDouble* c, culaDouble* d, culaDouble* x);
    interface
        integer(C_INT) function cula_dgglse(m,n,p,a,lda,b,ldb,c,d,x) &
            BIND(C,NAME="culaDgglse")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: p
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
            real(C_DOUBLE), dimension(*) :: c
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: x
        end function
    end interface

    ! culaStatus culaCgglse(int m, int n, int p, culaFloatComplex* a, int lda, culaFloatComplex* b, int ldb, culaFloatComplex* c, culaFloatComplex* d, culaFloatComplex* x);
    interface
        integer(C_INT) function cula_cgglse(m,n,p,a,lda,b,ldb,c,d,x) &
            BIND(C,NAME="culaCgglse")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: p
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
            complex(C_FLOAT_COMPLEX), dimension(*) :: c
            complex(C_FLOAT_COMPLEX), dimension(*) :: d
            complex(C_FLOAT_COMPLEX), dimension(*) :: x
        end function
    end interface

    ! culaStatus culaZgglse(int m, int n, int p, culaDoubleComplex* a, int lda, culaDoubleComplex* b, int ldb, culaDoubleComplex* c, culaDoubleComplex* d, culaDoubleComplex* x);
    interface
        integer(C_INT) function cula_zgglse(m,n,p,a,lda,b,ldb,c,d,x) &
            BIND(C,NAME="culaZgglse")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: p
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
            complex(C_DOUBLE_COMPLEX), dimension(*) :: c
            complex(C_DOUBLE_COMPLEX), dimension(*) :: d
            complex(C_DOUBLE_COMPLEX), dimension(*) :: x
        end function
    end interface

    ! culaStatus culaSggrqf(int m, int p, int n, culaFloat* a, int lda, culaFloat* taua, culaFloat* b, int ldb, culaFloat* taub);
    interface
        integer(C_INT) function cula_sggrqf(m,p,n,a,lda,taua,b,ldb,taub) &
            BIND(C,NAME="culaSggrqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: p
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: taua
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
            real(C_FLOAT), dimension(*) :: taub
        end function
    end interface

    ! culaStatus culaDggrqf(int m, int p, int n, culaDouble* a, int lda, culaDouble* taua, culaDouble* b, int ldb, culaDouble* taub);
    interface
        integer(C_INT) function cula_dggrqf(m,p,n,a,lda,taua,b,ldb,taub) &
            BIND(C,NAME="culaDggrqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: p
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: taua
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
            real(C_DOUBLE), dimension(*) :: taub
        end function
    end interface

    ! culaStatus culaCggrqf(int m, int p, int n, culaFloatComplex* a, int lda, culaFloatComplex* taua, culaFloatComplex* b, int ldb, culaFloatComplex* taub);
    interface
        integer(C_INT) function cula_cggrqf(m,p,n,a,lda,taua,b,ldb,taub) &
            BIND(C,NAME="culaCggrqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: p
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: taua
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
            complex(C_FLOAT_COMPLEX), dimension(*) :: taub
        end function
    end interface

    ! culaStatus culaZggrqf(int m, int p, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* taua, culaDoubleComplex* b, int ldb, culaDoubleComplex* taub);
    interface
        integer(C_INT) function cula_zggrqf(m,p,n,a,lda,taua,b,ldb,taub) &
            BIND(C,NAME="culaZggrqf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: p
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: taua
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
            complex(C_DOUBLE_COMPLEX), dimension(*) :: taub
        end function
    end interface

    ! culaStatus culaSlacpy(char uplo, int m, int n, culaFloat* a, int lda, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_slacpy(uplo,m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaSlacpy")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDlacpy(char uplo, int m, int n, culaDouble* a, int lda, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dlacpy(uplo,m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaDlacpy")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaClacpy(char uplo, int m, int n, culaFloatComplex* a, int lda, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_clacpy(uplo,m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaClacpy")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZlacpy(char uplo, int m, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zlacpy(uplo,m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaZlacpy")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaSlag2d(int m, int n, culaFloat* a, int lda, culaDouble* sa, int ldsa);
    interface
        integer(C_INT) function cula_slag2d(m,n,a,lda,sa,ldsa) &
            BIND(C,NAME="culaSlag2d")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: ldsa
            real(C_DOUBLE), dimension(ldsa,*) :: sa
        end function
    end interface

    ! culaStatus culaDlag2s(int m, int n, culaDouble* a, int lda, culaFloat* sa, int ldsa);
    interface
        integer(C_INT) function cula_dlag2s(m,n,a,lda,sa,ldsa) &
            BIND(C,NAME="culaDlag2s")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldsa
            real(C_FLOAT), dimension(ldsa,*) :: sa
        end function
    end interface

    ! culaStatus culaClag2z(int m, int n, culaFloatComplex* a, int lda, culaDoubleComplex* sa, int ldsa);
    interface
        integer(C_INT) function cula_clag2z(m,n,a,lda,sa,ldsa) &
            BIND(C,NAME="culaClag2z")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldsa
            complex(C_DOUBLE_COMPLEX), dimension(ldsa,*) :: sa
        end function
    end interface

    ! culaStatus culaZlag2c(int m, int n, culaDoubleComplex* a, int lda, culaFloatComplex* sa, int ldsa);
    interface
        integer(C_INT) function cula_zlag2c(m,n,a,lda,sa,ldsa) &
            BIND(C,NAME="culaZlag2c")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldsa
            complex(C_FLOAT_COMPLEX), dimension(ldsa,*) :: sa
        end function
    end interface

    ! culaStatus culaSlange(char norm, int m, int n, culaFloat* a, int lda, culaFloat* result);
    interface
        integer(C_INT) function cula_slange(norm,m,n,a,lda,result) &
            BIND(C,NAME="culaSlange")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: norm
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: result
        end function
    end interface

    ! culaStatus culaDlange(char norm, int m, int n, culaDouble* a, int lda, culaDouble* result);
    interface
        integer(C_INT) function cula_dlange(norm,m,n,a,lda,result) &
            BIND(C,NAME="culaDlange")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: norm
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: result
        end function
    end interface

    ! culaStatus culaClange(char norm, int m, int n, culaFloatComplex* a, int lda, culaFloat* result);
    interface
        integer(C_INT) function cula_clange(norm,m,n,a,lda,result) &
            BIND(C,NAME="culaClange")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: norm
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: result
        end function
    end interface

    ! culaStatus culaZlange(char norm, int m, int n, culaDoubleComplex* a, int lda, culaDouble* result);
    interface
        integer(C_INT) function cula_zlange(norm,m,n,a,lda,result) &
            BIND(C,NAME="culaZlange")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: norm
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: result
        end function
    end interface

    ! culaStatus culaSlanhe(char norm, char uplo, int n, culaFloat* a, int lda, culaFloat* result);
    interface
        integer(C_INT) function cula_slanhe(norm,uplo,n,a,lda,result) &
            BIND(C,NAME="culaSlanhe")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: norm
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: result
        end function
    end interface

    ! culaStatus culaDlanhe(char norm, char uplo, int n, culaDouble* a, int lda, culaDouble* result);
    interface
        integer(C_INT) function cula_dlanhe(norm,uplo,n,a,lda,result) &
            BIND(C,NAME="culaDlanhe")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: norm
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: result
        end function
    end interface

    ! culaStatus culaClanhe(char norm, char uplo, int n, culaFloatComplex* a, int lda, culaFloat* result);
    interface
        integer(C_INT) function cula_clanhe(norm,uplo,n,a,lda,result) &
            BIND(C,NAME="culaClanhe")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: norm
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: result
        end function
    end interface

    ! culaStatus culaZlanhe(char norm, char uplo, int n, culaDoubleComplex* a, int lda, culaDouble* result);
    interface
        integer(C_INT) function cula_zlanhe(norm,uplo,n,a,lda,result) &
            BIND(C,NAME="culaZlanhe")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: norm
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: result
        end function
    end interface

    ! culaStatus culaSlar2v(int n, culaFloat* x, culaFloat* y, culaFloat* z, int incx, culaFloat* c, culaFloat* s, int incc);
    interface
        integer(C_INT) function cula_slar2v(n,x,y,z,incx,c,s,incc) &
            BIND(C,NAME="culaSlar2v")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            real(C_FLOAT), dimension(*) :: x
            real(C_FLOAT), dimension(*) :: y
            real(C_FLOAT), dimension(*) :: z
            integer(C_INT), value :: incx
            real(C_FLOAT), dimension(*) :: c
            real(C_FLOAT), dimension(*) :: s
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaDlar2v(int n, culaDouble* x, culaDouble* y, culaDouble* z, int incx, culaDouble* c, culaDouble* s, int incc);
    interface
        integer(C_INT) function cula_dlar2v(n,x,y,z,incx,c,s,incc) &
            BIND(C,NAME="culaDlar2v")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            real(C_DOUBLE), dimension(*) :: x
            real(C_DOUBLE), dimension(*) :: y
            real(C_DOUBLE), dimension(*) :: z
            integer(C_INT), value :: incx
            real(C_DOUBLE), dimension(*) :: c
            real(C_DOUBLE), dimension(*) :: s
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaClar2v(int n, culaFloatComplex* x, culaFloatComplex* y, culaFloatComplex* z, int incx, culaFloat* c, culaFloatComplex* s, int incc);
    interface
        integer(C_INT) function cula_clar2v(n,x,y,z,incx,c,s,incc) &
            BIND(C,NAME="culaClar2v")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            complex(C_FLOAT_COMPLEX), dimension(*) :: x
            complex(C_FLOAT_COMPLEX), dimension(*) :: y
            complex(C_FLOAT_COMPLEX), dimension(*) :: z
            integer(C_INT), value :: incx
            real(C_FLOAT), dimension(*) :: c
            complex(C_FLOAT_COMPLEX), dimension(*) :: s
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaZlar2v(int n, culaDoubleComplex* x, culaDoubleComplex* y, culaDoubleComplex* z, int incx, culaDouble* c, culaDoubleComplex* s, int incc);
    interface
        integer(C_INT) function cula_zlar2v(n,x,y,z,incx,c,s,incc) &
            BIND(C,NAME="culaZlar2v")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            complex(C_DOUBLE_COMPLEX), dimension(*) :: x
            complex(C_DOUBLE_COMPLEX), dimension(*) :: y
            complex(C_DOUBLE_COMPLEX), dimension(*) :: z
            integer(C_INT), value :: incx
            real(C_DOUBLE), dimension(*) :: c
            complex(C_DOUBLE_COMPLEX), dimension(*) :: s
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaSlarfb(char side, char trans, char direct, char storev, int m, int n, int k, culaFloat* v, int ldv, culaFloat* t, int ldt, culaFloat* c, int ldc);
    interface
        integer(C_INT) function cula_slarfb(side,trans,direct,storev,m,n,k,v,ldv,t,ldt,c,ldc) &
            BIND(C,NAME="culaSlarfb")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            character(C_CHAR), value :: direct
            character(C_CHAR), value :: storev
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: ldv
            real(C_FLOAT), dimension(ldv,*) :: v
            integer(C_INT), value :: ldt
            real(C_FLOAT), dimension(ldt,*) :: t
            integer(C_INT), value :: ldc
            real(C_FLOAT), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaDlarfb(char side, char trans, char direct, char storev, int m, int n, int k, culaDouble* v, int ldv, culaDouble* t, int ldt, culaDouble* c, int ldc);
    interface
        integer(C_INT) function cula_dlarfb(side,trans,direct,storev,m,n,k,v,ldv,t,ldt,c,ldc) &
            BIND(C,NAME="culaDlarfb")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            character(C_CHAR), value :: direct
            character(C_CHAR), value :: storev
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: ldv
            real(C_DOUBLE), dimension(ldv,*) :: v
            integer(C_INT), value :: ldt
            real(C_DOUBLE), dimension(ldt,*) :: t
            integer(C_INT), value :: ldc
            real(C_DOUBLE), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaClarfb(char side, char trans, char direct, char storev, int m, int n, int k, culaFloatComplex* v, int ldv, culaFloatComplex* t, int ldt, culaFloatComplex* c, int ldc);
    interface
        integer(C_INT) function cula_clarfb(side,trans,direct,storev,m,n,k,v,ldv,t,ldt,c,ldc) &
            BIND(C,NAME="culaClarfb")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            character(C_CHAR), value :: direct
            character(C_CHAR), value :: storev
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: ldv
            complex(C_FLOAT_COMPLEX), dimension(ldv,*) :: v
            integer(C_INT), value :: ldt
            complex(C_FLOAT_COMPLEX), dimension(ldt,*) :: t
            integer(C_INT), value :: ldc
            complex(C_FLOAT_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaZlarfb(char side, char trans, char direct, char storev, int m, int n, int k, culaDoubleComplex* v, int ldv, culaDoubleComplex* t, int ldt, culaDoubleComplex* c, int ldc);
    interface
        integer(C_INT) function cula_zlarfb(side,trans,direct,storev,m,n,k,v,ldv,t,ldt,c,ldc) &
            BIND(C,NAME="culaZlarfb")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            character(C_CHAR), value :: direct
            character(C_CHAR), value :: storev
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: ldv
            complex(C_DOUBLE_COMPLEX), dimension(ldv,*) :: v
            integer(C_INT), value :: ldt
            complex(C_DOUBLE_COMPLEX), dimension(ldt,*) :: t
            integer(C_INT), value :: ldc
            complex(C_DOUBLE_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaSlarfg(int n, culaFloat* alpha, culaFloat* x, int incx, culaFloat* tau);
    interface
        integer(C_INT) function cula_slarfg(n,alpha,x,incx,tau) &
            BIND(C,NAME="culaSlarfg")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            real(C_FLOAT), dimension(*) :: alpha
            real(C_FLOAT), dimension(*) :: x
            integer(C_INT), value :: incx
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDlarfg(int n, culaDouble* alpha, culaDouble* x, int incx, culaDouble* tau);
    interface
        integer(C_INT) function cula_dlarfg(n,alpha,x,incx,tau) &
            BIND(C,NAME="culaDlarfg")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            real(C_DOUBLE), dimension(*) :: alpha
            real(C_DOUBLE), dimension(*) :: x
            integer(C_INT), value :: incx
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaClarfg(int n, culaFloatComplex* alpha, culaFloatComplex* x, int incx, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_clarfg(n,alpha,x,incx,tau) &
            BIND(C,NAME="culaClarfg")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            complex(C_FLOAT_COMPLEX), dimension(*) :: alpha
            complex(C_FLOAT_COMPLEX), dimension(*) :: x
            integer(C_INT), value :: incx
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZlarfg(int n, culaDoubleComplex* alpha, culaDoubleComplex* x, int incx, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zlarfg(n,alpha,x,incx,tau) &
            BIND(C,NAME="culaZlarfg")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            complex(C_DOUBLE_COMPLEX), dimension(*) :: alpha
            complex(C_DOUBLE_COMPLEX), dimension(*) :: x
            integer(C_INT), value :: incx
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSlargv(int n, culaFloat* x, int incx, culaFloat* y, int incy, culaFloat* c, int incc);
    interface
        integer(C_INT) function cula_slargv(n,x,incx,y,incy,c,incc) &
            BIND(C,NAME="culaSlargv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            real(C_FLOAT), dimension(*) :: x
            integer(C_INT), value :: incx
            real(C_FLOAT), dimension(*) :: y
            integer(C_INT), value :: incy
            real(C_FLOAT), dimension(*) :: c
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaDlargv(int n, culaDouble* x, int incx, culaDouble* y, int incy, culaDouble* c, int incc);
    interface
        integer(C_INT) function cula_dlargv(n,x,incx,y,incy,c,incc) &
            BIND(C,NAME="culaDlargv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            real(C_DOUBLE), dimension(*) :: x
            integer(C_INT), value :: incx
            real(C_DOUBLE), dimension(*) :: y
            integer(C_INT), value :: incy
            real(C_DOUBLE), dimension(*) :: c
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaClargv(int n, culaFloatComplex* x, int incx, culaFloatComplex* y, int incy, culaFloat* c, int incc);
    interface
        integer(C_INT) function cula_clargv(n,x,incx,y,incy,c,incc) &
            BIND(C,NAME="culaClargv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            complex(C_FLOAT_COMPLEX), dimension(*) :: x
            integer(C_INT), value :: incx
            complex(C_FLOAT_COMPLEX), dimension(*) :: y
            integer(C_INT), value :: incy
            real(C_FLOAT), dimension(*) :: c
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaZlargv(int n, culaDoubleComplex* x, int incx, culaDoubleComplex* y, int incy, culaDouble* c, int incc);
    interface
        integer(C_INT) function cula_zlargv(n,x,incx,y,incy,c,incc) &
            BIND(C,NAME="culaZlargv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            complex(C_DOUBLE_COMPLEX), dimension(*) :: x
            integer(C_INT), value :: incx
            complex(C_DOUBLE_COMPLEX), dimension(*) :: y
            integer(C_INT), value :: incy
            real(C_DOUBLE), dimension(*) :: c
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaSlartv(int n, culaFloat* x, int incx, culaFloat* y, int incy, culaFloat* c, culaFloat* s, int incc);
    interface
        integer(C_INT) function cula_slartv(n,x,incx,y,incy,c,s,incc) &
            BIND(C,NAME="culaSlartv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            real(C_FLOAT), dimension(*) :: x
            integer(C_INT), value :: incx
            real(C_FLOAT), dimension(*) :: y
            integer(C_INT), value :: incy
            real(C_FLOAT), dimension(*) :: c
            real(C_FLOAT), dimension(*) :: s
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaDlartv(int n, culaDouble* x, int incx, culaDouble* y, int incy, culaDouble* c, culaDouble* s, int incc);
    interface
        integer(C_INT) function cula_dlartv(n,x,incx,y,incy,c,s,incc) &
            BIND(C,NAME="culaDlartv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            real(C_DOUBLE), dimension(*) :: x
            integer(C_INT), value :: incx
            real(C_DOUBLE), dimension(*) :: y
            integer(C_INT), value :: incy
            real(C_DOUBLE), dimension(*) :: c
            real(C_DOUBLE), dimension(*) :: s
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaClartv(int n, culaFloatComplex* x, int incx, culaFloatComplex* y, int incy, culaFloat* c, culaFloatComplex* s, int incc);
    interface
        integer(C_INT) function cula_clartv(n,x,incx,y,incy,c,s,incc) &
            BIND(C,NAME="culaClartv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            complex(C_FLOAT_COMPLEX), dimension(*) :: x
            integer(C_INT), value :: incx
            complex(C_FLOAT_COMPLEX), dimension(*) :: y
            integer(C_INT), value :: incy
            real(C_FLOAT), dimension(*) :: c
            complex(C_FLOAT_COMPLEX), dimension(*) :: s
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaZlartv(int n, culaDoubleComplex* x, int incx, culaDoubleComplex* y, int incy, culaDouble* c, culaDoubleComplex* s, int incc);
    interface
        integer(C_INT) function cula_zlartv(n,x,incx,y,incy,c,s,incc) &
            BIND(C,NAME="culaZlartv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            complex(C_DOUBLE_COMPLEX), dimension(*) :: x
            integer(C_INT), value :: incx
            complex(C_DOUBLE_COMPLEX), dimension(*) :: y
            integer(C_INT), value :: incy
            real(C_DOUBLE), dimension(*) :: c
            complex(C_DOUBLE_COMPLEX), dimension(*) :: s
            integer(C_INT), value :: incc
        end function
    end interface

    ! culaStatus culaSlascl(char type, int kl, int ku, culaFloat cfrom, culaFloat cto, int m, int n, culaFloat* a, int lda);
    interface
        integer(C_INT) function cula_slascl(type,kl,ku,cfrom,cto,m,n,a,lda) &
            BIND(C,NAME="culaSlascl")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: type
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            real(C_FLOAT) :: cfrom
            real(C_FLOAT) :: cto
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaDlascl(char type, int kl, int ku, culaDouble cfrom, culaDouble cto, int m, int n, culaDouble* a, int lda);
    interface
        integer(C_INT) function cula_dlascl(type,kl,ku,cfrom,cto,m,n,a,lda) &
            BIND(C,NAME="culaDlascl")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: type
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            real(C_DOUBLE), value :: cfrom
            real(C_DOUBLE), value :: cto
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaClascl(char type, int kl, int ku, culaFloat cfrom, culaFloat cto, int m, int n, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_clascl(type,kl,ku,cfrom,cto,m,n,a,lda) &
            BIND(C,NAME="culaClascl")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: type
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            real(C_FLOAT) :: cfrom
            real(C_FLOAT) :: cto
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZlascl(char type, int kl, int ku, culaDouble cfrom, culaDouble cto, int m, int n, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_zlascl(type,kl,ku,cfrom,cto,m,n,a,lda) &
            BIND(C,NAME="culaZlascl")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: type
            integer(C_INT), value :: kl
            integer(C_INT), value :: ku
            real(C_DOUBLE), value :: cfrom
            real(C_DOUBLE), value :: cto
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaSlaset(char uplo, int m, int n, culaFloat alpha, culaFloat beta, culaFloat* a, int lda);
    interface
        integer(C_INT) function cula_slaset(uplo,m,n,alpha,beta,a,lda) &
            BIND(C,NAME="culaSlaset")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            real(C_FLOAT) :: alpha
            real(C_FLOAT) :: beta
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaDlaset(char uplo, int m, int n, culaDouble alpha, culaDouble beta, culaDouble* a, int lda);
    interface
        integer(C_INT) function cula_dlaset(uplo,m,n,alpha,beta,a,lda) &
            BIND(C,NAME="culaDlaset")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            real(C_DOUBLE), value :: alpha
            real(C_DOUBLE), value :: beta
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaClaset(char uplo, int m, int n, culaFloatComplex alpha, culaFloatComplex beta, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_claset(uplo,m,n,alpha,beta,a,lda) &
            BIND(C,NAME="culaClaset")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            complex(C_FLOAT_COMPLEX) :: alpha
            complex(C_FLOAT_COMPLEX) :: beta
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZlaset(char uplo, int m, int n, culaDoubleComplex alpha, culaDoubleComplex beta, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_zlaset(uplo,m,n,alpha,beta,a,lda) &
            BIND(C,NAME="culaZlaset")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            complex(C_DOUBLE_COMPLEX), value :: alpha
            complex(C_DOUBLE_COMPLEX), value :: beta
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaSlasr(char side, char pivot, char direct, int m, int n, culaFloat* c, culaFloat* s, culaFloat* a, int lda);
    interface
        integer(C_INT) function cula_slasr(side,pivot,direct,m,n,c,s,a,lda) &
            BIND(C,NAME="culaSlasr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: pivot
            character(C_CHAR), value :: direct
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            real(C_FLOAT), dimension(*) :: c
            real(C_FLOAT), dimension(*) :: s
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaDlasr(char side, char pivot, char direct, int m, int n, culaDouble* c, culaDouble* s, culaDouble* a, int lda);
    interface
        integer(C_INT) function cula_dlasr(side,pivot,direct,m,n,c,s,a,lda) &
            BIND(C,NAME="culaDlasr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: pivot
            character(C_CHAR), value :: direct
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            real(C_DOUBLE), dimension(*) :: c
            real(C_DOUBLE), dimension(*) :: s
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaClasr(char side, char pivot, char direct, int m, int n, culaFloat* c, culaFloat* s, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_clasr(side,pivot,direct,m,n,c,s,a,lda) &
            BIND(C,NAME="culaClasr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: pivot
            character(C_CHAR), value :: direct
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            real(C_FLOAT), dimension(*) :: c
            real(C_FLOAT), dimension(*) :: s
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZlasr(char side, char pivot, char direct, int m, int n, culaDouble* c, culaDouble* s, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_zlasr(side,pivot,direct,m,n,c,s,a,lda) &
            BIND(C,NAME="culaZlasr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: pivot
            character(C_CHAR), value :: direct
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            real(C_DOUBLE), dimension(*) :: c
            real(C_DOUBLE), dimension(*) :: s
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaSlaswp(int n, culaFloat* a, int lda, int kdim, int k2, culaInt* ipiv, int incx);
    interface
        integer(C_INT) function cula_slaswp(n,a,lda,kdim,k2,ipiv,incx) &
            BIND(C,NAME="culaSlaswp")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: kdim
            integer(C_INT), value :: k2
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: incx
        end function
    end interface

    ! culaStatus culaDlaswp(int n, culaDouble* a, int lda, int kdim, int k2, culaInt* ipiv, int incx);
    interface
        integer(C_INT) function cula_dlaswp(n,a,lda,kdim,k2,ipiv,incx) &
            BIND(C,NAME="culaDlaswp")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: kdim
            integer(C_INT), value :: k2
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: incx
        end function
    end interface

    ! culaStatus culaClaswp(int n, culaFloatComplex* a, int lda, int kdim, int k2, culaInt* ipiv, int incx);
    interface
        integer(C_INT) function cula_claswp(n,a,lda,kdim,k2,ipiv,incx) &
            BIND(C,NAME="culaClaswp")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: kdim
            integer(C_INT), value :: k2
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: incx
        end function
    end interface

    ! culaStatus culaZlaswp(int n, culaDoubleComplex* a, int lda, int kdim, int k2, culaInt* ipiv, int incx);
    interface
        integer(C_INT) function cula_zlaswp(n,a,lda,kdim,k2,ipiv,incx) &
            BIND(C,NAME="culaZlaswp")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: kdim
            integer(C_INT), value :: k2
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: incx
        end function
    end interface

    ! culaStatus culaSlaswpcol(int n, culaFloat* a, int lda, int kdim, int k2, culaInt* ipiv, int incx);
    interface
        integer(C_INT) function cula_slaswpcol(n,a,lda,kdim,k2,ipiv,incx) &
            BIND(C,NAME="culaSlaswpcol")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: kdim
            integer(C_INT), value :: k2
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: incx
        end function
    end interface

    ! culaStatus culaDlaswpcol(int n, culaDouble* a, int lda, int kdim, int k2, culaInt* ipiv, int incx);
    interface
        integer(C_INT) function cula_dlaswpcol(n,a,lda,kdim,k2,ipiv,incx) &
            BIND(C,NAME="culaDlaswpcol")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: kdim
            integer(C_INT), value :: k2
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: incx
        end function
    end interface

    ! culaStatus culaClaswpcol(int n, culaFloatComplex* a, int lda, int kdim, int k2, culaInt* ipiv, int incx);
    interface
        integer(C_INT) function cula_claswpcol(n,a,lda,kdim,k2,ipiv,incx) &
            BIND(C,NAME="culaClaswpcol")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: kdim
            integer(C_INT), value :: k2
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: incx
        end function
    end interface

    ! culaStatus culaZlaswpcol(int n, culaDoubleComplex* a, int lda, int kdim, int k2, culaInt* ipiv, int incx);
    interface
        integer(C_INT) function cula_zlaswpcol(n,a,lda,kdim,k2,ipiv,incx) &
            BIND(C,NAME="culaZlaswpcol")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: kdim
            integer(C_INT), value :: k2
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: incx
        end function
    end interface

    ! culaStatus culaSlat2d(char uplo, int n, culaFloat* a, int lda, culaDouble* sa, int ldsa);
    interface
        integer(C_INT) function cula_slat2d(uplo,n,a,lda,sa,ldsa) &
            BIND(C,NAME="culaSlat2d")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: ldsa
            real(C_DOUBLE), dimension(ldsa,*) :: sa
        end function
    end interface

    ! culaStatus culaDlat2s(char uplo, int n, culaDouble* a, int lda, culaFloat* sa, int ldsa);
    interface
        integer(C_INT) function cula_dlat2s(uplo,n,a,lda,sa,ldsa) &
            BIND(C,NAME="culaDlat2s")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldsa
            real(C_FLOAT), dimension(ldsa,*) :: sa
        end function
    end interface

    ! culaStatus culaClat2z(char uplo, int n, culaFloatComplex* a, int lda, culaDoubleComplex* sa, int ldsa);
    interface
        integer(C_INT) function cula_clat2z(uplo,n,a,lda,sa,ldsa) &
            BIND(C,NAME="culaClat2z")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldsa
            complex(C_DOUBLE_COMPLEX), dimension(ldsa,*) :: sa
        end function
    end interface

    ! culaStatus culaZlat2c(char uplo, int n, culaDoubleComplex* a, int lda, culaFloatComplex* sa, int ldsa);
    interface
        integer(C_INT) function cula_zlat2c(uplo,n,a,lda,sa,ldsa) &
            BIND(C,NAME="culaZlat2c")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldsa
            complex(C_FLOAT_COMPLEX), dimension(ldsa,*) :: sa
        end function
    end interface

    ! culaStatus culaSorgbr(char vect, int m, int n, int k, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sorgbr(vect,m,n,k,a,lda,tau) &
            BIND(C,NAME="culaSorgbr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: vect
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDorgbr(char vect, int m, int n, int k, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dorgbr(vect,m,n,k,a,lda,tau) &
            BIND(C,NAME="culaDorgbr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: vect
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCungbr(char vect, int m, int n, int k, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cungbr(vect,m,n,k,a,lda,tau) &
            BIND(C,NAME="culaCungbr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: vect
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZungbr(char vect, int m, int n, int k, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zungbr(vect,m,n,k,a,lda,tau) &
            BIND(C,NAME="culaZungbr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: vect
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSorghr(int n, int ilo, int ihi, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sorghr(n,ilo,ihi,a,lda,tau) &
            BIND(C,NAME="culaSorghr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: ilo
            integer(C_INT), value :: ihi
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDorghr(int n, int ilo, int ihi, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dorghr(n,ilo,ihi,a,lda,tau) &
            BIND(C,NAME="culaDorghr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: ilo
            integer(C_INT), value :: ihi
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCunghr(int n, int ilo, int ihi, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cunghr(n,ilo,ihi,a,lda,tau) &
            BIND(C,NAME="culaCunghr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: ilo
            integer(C_INT), value :: ihi
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZunghr(int n, int ilo, int ihi, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zunghr(n,ilo,ihi,a,lda,tau) &
            BIND(C,NAME="culaZunghr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: ilo
            integer(C_INT), value :: ihi
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSorglq(int m, int n, int k, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sorglq(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaSorglq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDorglq(int m, int n, int k, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dorglq(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaDorglq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCunglq(int m, int n, int k, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cunglq(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaCunglq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZunglq(int m, int n, int k, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zunglq(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaZunglq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSorgql(int m, int n, int k, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sorgql(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaSorgql")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDorgql(int m, int n, int k, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dorgql(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaDorgql")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCungql(int m, int n, int k, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cungql(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaCungql")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZungql(int m, int n, int k, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zungql(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaZungql")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSorgqr(int m, int n, int k, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sorgqr(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaSorgqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDorgqr(int m, int n, int k, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dorgqr(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaDorgqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCungqr(int m, int n, int k, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cungqr(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaCungqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZungqr(int m, int n, int k, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zungqr(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaZungqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSorgrq(int m, int n, int k, culaFloat* a, int lda, culaFloat* tau);
    interface
        integer(C_INT) function cula_sorgrq(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaSorgrq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDorgrq(int m, int n, int k, culaDouble* a, int lda, culaDouble* tau);
    interface
        integer(C_INT) function cula_dorgrq(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaDorgrq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaCungrq(int m, int n, int k, culaFloatComplex* a, int lda, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_cungrq(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaCungrq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZungrq(int m, int n, int k, culaDoubleComplex* a, int lda, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zungrq(m,n,k,a,lda,tau) &
            BIND(C,NAME="culaZungrq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSormlq(char side, char trans, int m, int n, int k, culaFloat* a, int lda, culaFloat* tau, culaFloat* c, int ldc);
    interface
        integer(C_INT) function cula_sormlq(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaSormlq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
            integer(C_INT), value :: ldc
            real(C_FLOAT), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaDormlq(char side, char trans, int m, int n, int k, culaDouble* a, int lda, culaDouble* tau, culaDouble* c, int ldc);
    interface
        integer(C_INT) function cula_dormlq(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaDormlq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
            integer(C_INT), value :: ldc
            real(C_DOUBLE), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaCunmlq(char side, char trans, int m, int n, int k, culaFloatComplex* a, int lda, culaFloatComplex* tau, culaFloatComplex* c, int ldc);
    interface
        integer(C_INT) function cula_cunmlq(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaCunmlq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldc
            complex(C_FLOAT_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaZunmlq(char side, char trans, int m, int n, int k, culaDoubleComplex* a, int lda, culaDoubleComplex* tau, culaDoubleComplex* c, int ldc);
    interface
        integer(C_INT) function cula_zunmlq(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaZunmlq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldc
            complex(C_DOUBLE_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaSormql(char side, char trans, int m, int n, int k, culaFloat* a, int lda, culaFloat* tau, culaFloat* c, int ldc);
    interface
        integer(C_INT) function cula_sormql(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaSormql")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
            integer(C_INT), value :: ldc
            real(C_FLOAT), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaDormql(char side, char trans, int m, int n, int k, culaDouble* a, int lda, culaDouble* tau, culaDouble* c, int ldc);
    interface
        integer(C_INT) function cula_dormql(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaDormql")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
            integer(C_INT), value :: ldc
            real(C_DOUBLE), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaCunmql(char side, char trans, int m, int n, int k, culaFloatComplex* a, int lda, culaFloatComplex* tau, culaFloatComplex* c, int ldc);
    interface
        integer(C_INT) function cula_cunmql(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaCunmql")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldc
            complex(C_FLOAT_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaZunmql(char side, char trans, int m, int n, int k, culaDoubleComplex* a, int lda, culaDoubleComplex* tau, culaDoubleComplex* c, int ldc);
    interface
        integer(C_INT) function cula_zunmql(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaZunmql")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldc
            complex(C_DOUBLE_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaSormqr(char side, char trans, int m, int n, int k, culaFloat* a, int lda, culaFloat* tau, culaFloat* c, int ldc);
    interface
        integer(C_INT) function cula_sormqr(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaSormqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
            integer(C_INT), value :: ldc
            real(C_FLOAT), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaDormqr(char side, char trans, int m, int n, int k, culaDouble* a, int lda, culaDouble* tau, culaDouble* c, int ldc);
    interface
        integer(C_INT) function cula_dormqr(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaDormqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
            integer(C_INT), value :: ldc
            real(C_DOUBLE), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaCunmqr(char side, char trans, int m, int n, int k, culaFloatComplex* a, int lda, culaFloatComplex* tau, culaFloatComplex* c, int ldc);
    interface
        integer(C_INT) function cula_cunmqr(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaCunmqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldc
            complex(C_FLOAT_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaZunmqr(char side, char trans, int m, int n, int k, culaDoubleComplex* a, int lda, culaDoubleComplex* tau, culaDoubleComplex* c, int ldc);
    interface
        integer(C_INT) function cula_zunmqr(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaZunmqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldc
            complex(C_DOUBLE_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaSormrq(char side, char trans, int m, int n, int k, culaFloat* a, int lda, culaFloat* tau, culaFloat* c, int ldc);
    interface
        integer(C_INT) function cula_sormrq(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaSormrq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: tau
            integer(C_INT), value :: ldc
            real(C_FLOAT), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaDormrq(char side, char trans, int m, int n, int k, culaDouble* a, int lda, culaDouble* tau, culaDouble* c, int ldc);
    interface
        integer(C_INT) function cula_dormrq(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaDormrq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: tau
            integer(C_INT), value :: ldc
            real(C_DOUBLE), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaCunmrq(char side, char trans, int m, int n, int k, culaFloatComplex* a, int lda, culaFloatComplex* tau, culaFloatComplex* c, int ldc);
    interface
        integer(C_INT) function cula_cunmrq(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaCunmrq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldc
            complex(C_FLOAT_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaZunmrq(char side, char trans, int m, int n, int k, culaDoubleComplex* a, int lda, culaDoubleComplex* tau, culaDoubleComplex* c, int ldc);
    interface
        integer(C_INT) function cula_zunmrq(side,trans,m,n,k,a,lda,tau,c,ldc) &
            BIND(C,NAME="culaZunmrq")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: side
            character(C_CHAR), value :: trans
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: k
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldc
            complex(C_DOUBLE_COMPLEX), dimension(ldc,*) :: c
        end function
    end interface

    ! culaStatus culaSpbtrf(char uplo, int n, int kd, culaFloat* ab, int ldab);
    interface
        integer(C_INT) function cula_spbtrf(uplo,n,kd,ab,ldab) &
            BIND(C,NAME="culaSpbtrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: kd
            integer(C_INT), value :: ldab
            real(C_FLOAT), dimension(ldab,*) :: ab
        end function
    end interface

    ! culaStatus culaDpbtrf(char uplo, int n, int kd, culaDouble* ab, int ldab);
    interface
        integer(C_INT) function cula_dpbtrf(uplo,n,kd,ab,ldab) &
            BIND(C,NAME="culaDpbtrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: kd
            integer(C_INT), value :: ldab
            real(C_DOUBLE), dimension(ldab,*) :: ab
        end function
    end interface

    ! culaStatus culaCpbtrf(char uplo, int n, int kd, culaFloatComplex* ab, int ldab);
    interface
        integer(C_INT) function cula_cpbtrf(uplo,n,kd,ab,ldab) &
            BIND(C,NAME="culaCpbtrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: kd
            integer(C_INT), value :: ldab
            complex(C_FLOAT_COMPLEX), dimension(ldab,*) :: ab
        end function
    end interface

    ! culaStatus culaZpbtrf(char uplo, int n, int kd, culaDoubleComplex* ab, int ldab);
    interface
        integer(C_INT) function cula_zpbtrf(uplo,n,kd,ab,ldab) &
            BIND(C,NAME="culaZpbtrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: kd
            integer(C_INT), value :: ldab
            complex(C_DOUBLE_COMPLEX), dimension(ldab,*) :: ab
        end function
    end interface

    ! culaStatus culaSposv(char uplo, int n, int nrhs, culaFloat* a, int lda, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_sposv(uplo,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaSposv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDposv(char uplo, int n, int nrhs, culaDouble* a, int lda, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dposv(uplo,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaDposv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCposv(char uplo, int n, int nrhs, culaFloatComplex* a, int lda, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_cposv(uplo,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaCposv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZposv(char uplo, int n, int nrhs, culaDoubleComplex* a, int lda, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zposv(uplo,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaZposv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDsposv(char uplo, int n, int nrhs, culaDouble* a, int lda, culaDouble* b, int ldb, culaDouble* x, int ldx, int* iter);
    interface
        integer(C_INT) function cula_dsposv(uplo,n,nrhs,a,lda,b,ldb,x,ldx,iter) &
            BIND(C,NAME="culaDsposv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
            integer(C_INT), value :: ldx
            real(C_DOUBLE), dimension(ldx,*) :: x
            integer(C_INT), dimension(*) :: iter
        end function
    end interface

    ! culaStatus culaZcposv(char uplo, int n, int nrhs, culaDoubleComplex* a, int lda, culaDoubleComplex* b, int ldb, culaDoubleComplex* x, int ldx, int* iter);
    interface
        integer(C_INT) function cula_zcposv(uplo,n,nrhs,a,lda,b,ldb,x,ldx,iter) &
            BIND(C,NAME="culaZcposv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
            integer(C_INT), value :: ldx
            complex(C_DOUBLE_COMPLEX), dimension(ldx,*) :: x
            integer(C_INT), dimension(*) :: iter
        end function
    end interface

    ! culaStatus culaSpotrf(char uplo, int n, culaFloat* a, int lda);
    interface
        integer(C_INT) function cula_spotrf(uplo,n,a,lda) &
            BIND(C,NAME="culaSpotrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaDpotrf(char uplo, int n, culaDouble* a, int lda);
    interface
        integer(C_INT) function cula_dpotrf(uplo,n,a,lda) &
            BIND(C,NAME="culaDpotrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaCpotrf(char uplo, int n, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_cpotrf(uplo,n,a,lda) &
            BIND(C,NAME="culaCpotrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZpotrf(char uplo, int n, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_zpotrf(uplo,n,a,lda) &
            BIND(C,NAME="culaZpotrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaSpotri(char uplo, int n, culaFloat* a, int lda);
    interface
        integer(C_INT) function cula_spotri(uplo,n,a,lda) &
            BIND(C,NAME="culaSpotri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaDpotri(char uplo, int n, culaDouble* a, int lda);
    interface
        integer(C_INT) function cula_dpotri(uplo,n,a,lda) &
            BIND(C,NAME="culaDpotri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaCpotri(char uplo, int n, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_cpotri(uplo,n,a,lda) &
            BIND(C,NAME="culaCpotri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZpotri(char uplo, int n, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_zpotri(uplo,n,a,lda) &
            BIND(C,NAME="culaZpotri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaSpotrs(char uplo, int n, int nrhs, culaFloat* a, int lda, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_spotrs(uplo,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaSpotrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDpotrs(char uplo, int n, int nrhs, culaDouble* a, int lda, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dpotrs(uplo,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaDpotrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCpotrs(char uplo, int n, int nrhs, culaFloatComplex* a, int lda, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_cpotrs(uplo,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaCpotrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZpotrs(char uplo, int n, int nrhs, culaDoubleComplex* a, int lda, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zpotrs(uplo,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaZpotrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaSpptrf(char uplo, int n, culaFloat* ap);
    interface
        integer(C_INT) function cula_spptrf(uplo,n,ap) &
            BIND(C,NAME="culaSpptrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            real(C_FLOAT), dimension(*) :: ap
        end function
    end interface

    ! culaStatus culaDpptrf(char uplo, int n, culaDouble* ap);
    interface
        integer(C_INT) function cula_dpptrf(uplo,n,ap) &
            BIND(C,NAME="culaDpptrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            real(C_DOUBLE), dimension(*) :: ap
        end function
    end interface

    ! culaStatus culaCpptrf(char uplo, int n, culaFloatComplex* ap);
    interface
        integer(C_INT) function cula_cpptrf(uplo,n,ap) &
            BIND(C,NAME="culaCpptrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            complex(C_FLOAT_COMPLEX), dimension(*) :: ap
        end function
    end interface

    ! culaStatus culaZpptrf(char uplo, int n, culaDoubleComplex* ap);
    interface
        integer(C_INT) function cula_zpptrf(uplo,n,ap) &
            BIND(C,NAME="culaZpptrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            complex(C_DOUBLE_COMPLEX), dimension(*) :: ap
        end function
    end interface

    ! culaStatus culaSstebz(char range, char order, int n, float vl, float vu, int il, int iu, float abstol, culaFloat* d, culaFloat* e, int* m, int* nsplit, culaFloat* w, culaInt* isplit, culaInt* iblock);
    interface
        integer(C_INT) function cula_sstebz(rang,order,n,vl,vu,il,iu,abstol,d,e,m,nsplit,w,isplit,iblock) &
            BIND(C,NAME="culaSstebz")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: rang
            character(C_CHAR), value :: order
            integer(C_INT), value :: n
            real(C_FLOAT) :: vl
            real(C_FLOAT) :: vu
            integer(C_INT), value :: il
            integer(C_INT), value :: iu
            real(C_FLOAT) :: abstol
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            integer(C_INT), dimension(*) :: m
            integer(C_INT), dimension(*) :: nsplit
            real(C_FLOAT), dimension(*) :: w
            integer(C_INT), dimension(*) :: isplit
            integer(C_INT), dimension(*) :: iblock
        end function
    end interface

    ! culaStatus culaDstebz(char range, char order, int n, double vl, double vu, int il, int iu, double abstol, culaDouble* d, culaDouble* e, int* m, int* nsplit, culaDouble* w, culaInt* isplit, culaInt* iblock);
    interface
        integer(C_INT) function cula_dstebz(rang,order,n,vl,vu,il,iu,abstol,d,e,m,nsplit,w,isplit,iblock) &
            BIND(C,NAME="culaDstebz")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: rang
            character(C_CHAR), value :: order
            integer(C_INT), value :: n
            real(C_DOUBLE), value :: vl
            real(C_DOUBLE), value :: vu
            integer(C_INT), value :: il
            integer(C_INT), value :: iu
            real(C_DOUBLE), value :: abstol
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            integer(C_INT), dimension(*) :: m
            integer(C_INT), dimension(*) :: nsplit
            real(C_DOUBLE), dimension(*) :: w
            integer(C_INT), dimension(*) :: isplit
            integer(C_INT), dimension(*) :: iblock
        end function
    end interface

    ! culaStatus culaSsteqr(char compz, int n, culaFloat* d, culaFloat* e, culaFloat* z, int ldz);
    interface
        integer(C_INT) function cula_ssteqr(compz,n,d,e,z,ldz) &
            BIND(C,NAME="culaSsteqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: compz
            integer(C_INT), value :: n
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            integer(C_INT), value :: ldz
            real(C_FLOAT), dimension(ldz,*) :: z
        end function
    end interface

    ! culaStatus culaDsteqr(char compz, int n, culaDouble* d, culaDouble* e, culaDouble* z, int ldz);
    interface
        integer(C_INT) function cula_dsteqr(compz,n,d,e,z,ldz) &
            BIND(C,NAME="culaDsteqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: compz
            integer(C_INT), value :: n
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            integer(C_INT), value :: ldz
            real(C_DOUBLE), dimension(ldz,*) :: z
        end function
    end interface

    ! culaStatus culaCsteqr(char compz, int n, culaFloat* d, culaFloat* e, culaFloatComplex* z, int ldz);
    interface
        integer(C_INT) function cula_csteqr(compz,n,d,e,z,ldz) &
            BIND(C,NAME="culaCsteqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: compz
            integer(C_INT), value :: n
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            integer(C_INT), value :: ldz
            complex(C_FLOAT_COMPLEX), dimension(ldz,*) :: z
        end function
    end interface

    ! culaStatus culaZsteqr(char compz, int n, culaDouble* d, culaDouble* e, culaDoubleComplex* z, int ldz);
    interface
        integer(C_INT) function cula_zsteqr(compz,n,d,e,z,ldz) &
            BIND(C,NAME="culaZsteqr")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: compz
            integer(C_INT), value :: n
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            integer(C_INT), value :: ldz
            complex(C_DOUBLE_COMPLEX), dimension(ldz,*) :: z
        end function
    end interface

    ! culaStatus culaSsyev(char jobz, char uplo, int n, culaFloat* a, int lda, culaFloat* w);
    interface
        integer(C_INT) function cula_ssyev(jobz,uplo,n,a,lda,w) &
            BIND(C,NAME="culaSsyev")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: w
        end function
    end interface

    ! culaStatus culaDsyev(char jobz, char uplo, int n, culaDouble* a, int lda, culaDouble* w);
    interface
        integer(C_INT) function cula_dsyev(jobz,uplo,n,a,lda,w) &
            BIND(C,NAME="culaDsyev")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: w
        end function
    end interface

    ! culaStatus culaCheev(char jobz, char uplo, int n, culaFloatComplex* a, int lda, culaFloat* w);
    interface
        integer(C_INT) function cula_cheev(jobz,uplo,n,a,lda,w) &
            BIND(C,NAME="culaCheev")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: w
        end function
    end interface

    ! culaStatus culaZheev(char jobz, char uplo, int n, culaDoubleComplex* a, int lda, culaDouble* w);
    interface
        integer(C_INT) function cula_zheev(jobz,uplo,n,a,lda,w) &
            BIND(C,NAME="culaZheev")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: w
        end function
    end interface

    ! culaStatus culaSsyevx(char jobz, char range, char uplo, int n, culaFloat* a, int lda, culaFloat vl, culaFloat vu, int il, int iu, culaFloat abstol, culaInt* m, culaFloat* w, culaFloat* z, int ldz, culaInt* ifail);
    interface
        integer(C_INT) function cula_ssyevx(jobz,rang,uplo,n,a,lda,vl,vu,il,iu,abstol,m,w,z,ldz,ifail) &
            BIND(C,NAME="culaSsyevx")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: rang
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT) :: vl
            real(C_FLOAT) :: vu
            integer(C_INT), value :: il
            integer(C_INT), value :: iu
            real(C_FLOAT) :: abstol
            integer(C_INT), dimension(*) :: m
            real(C_FLOAT), dimension(*) :: w
            integer(C_INT), value :: ldz
            real(C_FLOAT), dimension(ldz,*) :: z
            integer(C_INT), dimension(*) :: ifail
        end function
    end interface

    ! culaStatus culaDsyevx(char jobz, char range, char uplo, int n, culaDouble* a, int lda, culaDouble vl, culaDouble vu, int il, int iu, culaDouble abstol, culaInt* m, culaDouble* w, culaDouble* z, int ldz, culaInt* ifail);
    interface
        integer(C_INT) function cula_dsyevx(jobz,rang,uplo,n,a,lda,vl,vu,il,iu,abstol,m,w,z,ldz,ifail) &
            BIND(C,NAME="culaDsyevx")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: rang
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), value :: vl
            real(C_DOUBLE), value :: vu
            integer(C_INT), value :: il
            integer(C_INT), value :: iu
            real(C_DOUBLE), value :: abstol
            integer(C_INT), dimension(*) :: m
            real(C_DOUBLE), dimension(*) :: w
            integer(C_INT), value :: ldz
            real(C_DOUBLE), dimension(ldz,*) :: z
            integer(C_INT), dimension(*) :: ifail
        end function
    end interface

    ! culaStatus culaCheevx(char jobz, char range, char uplo, int n, culaFloatComplex* a, int lda, culaFloat vl, culaFloat vu, int il, int iu, culaFloat abstol, culaInt* m, culaFloat* w, culaFloatComplex* z, int ldz, culaInt* ifail);
    interface
        integer(C_INT) function cula_cheevx(jobz,rang,uplo,n,a,lda,vl,vu,il,iu,abstol,m,w,z,ldz,ifail) &
            BIND(C,NAME="culaCheevx")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: rang
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            real(C_FLOAT) :: vl
            real(C_FLOAT) :: vu
            integer(C_INT), value :: il
            integer(C_INT), value :: iu
            real(C_FLOAT) :: abstol
            integer(C_INT), dimension(*) :: m
            real(C_FLOAT), dimension(*) :: w
            integer(C_INT), value :: ldz
            complex(C_FLOAT_COMPLEX), dimension(ldz,*) :: z
            integer(C_INT), dimension(*) :: ifail
        end function
    end interface

    ! culaStatus culaZheevx(char jobz, char range, char uplo, int n, culaDoubleComplex* a, int lda, culaDouble vl, culaDouble vu, int il, int iu, culaDouble abstol, culaInt* m, culaDouble* w, culaDoubleComplex* z, int ldz, culaInt* ifail);
    interface
        integer(C_INT) function cula_zheevx(jobz,rang,uplo,n,a,lda,vl,vu,il,iu,abstol,m,w,z,ldz,ifail) &
            BIND(C,NAME="culaZheevx")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: rang
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            real(C_DOUBLE), value :: vl
            real(C_DOUBLE), value :: vu
            integer(C_INT), value :: il
            integer(C_INT), value :: iu
            real(C_DOUBLE), value :: abstol
            integer(C_INT), dimension(*) :: m
            real(C_DOUBLE), dimension(*) :: w
            integer(C_INT), value :: ldz
            complex(C_DOUBLE_COMPLEX), dimension(ldz,*) :: z
            integer(C_INT), dimension(*) :: ifail
        end function
    end interface

    ! culaStatus culaSsyrdb(char jobz, char uplo, int n, int kd, culaFloat* a, int lda, culaFloat* d, culaFloat* e, culaFloat* tau, culaFloat* z, int ldz);
    interface
        integer(C_INT) function cula_ssyrdb(jobz,uplo,n,kd,a,lda,d,e,tau,z,ldz) &
            BIND(C,NAME="culaSsyrdb")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: kd
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            real(C_FLOAT), dimension(*) :: tau
            integer(C_INT), value :: ldz
            real(C_FLOAT), dimension(ldz,*) :: z
        end function
    end interface

    ! culaStatus culaDsyrdb(char jobz, char uplo, int n, int kd, culaDouble* a, int lda, culaDouble* d, culaDouble* e, culaDouble* tau, culaDouble* z, int ldz);
    interface
        integer(C_INT) function cula_dsyrdb(jobz,uplo,n,kd,a,lda,d,e,tau,z,ldz) &
            BIND(C,NAME="culaDsyrdb")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: kd
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            real(C_DOUBLE), dimension(*) :: tau
            integer(C_INT), value :: ldz
            real(C_DOUBLE), dimension(ldz,*) :: z
        end function
    end interface

    ! culaStatus culaCherdb(char jobz, char uplo, int n, int kd, culaFloatComplex* a, int lda, culaFloat* d, culaFloat* e, culaFloatComplex* tau, culaFloatComplex* z, int ldz);
    interface
        integer(C_INT) function cula_cherdb(jobz,uplo,n,kd,a,lda,d,e,tau,z,ldz) &
            BIND(C,NAME="culaCherdb")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: kd
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldz
            complex(C_FLOAT_COMPLEX), dimension(ldz,*) :: z
        end function
    end interface

    ! culaStatus culaZherdb(char jobz, char uplo, int n, int kd, culaDoubleComplex* a, int lda, culaDouble* d, culaDouble* e, culaDoubleComplex* tau, culaDoubleComplex* z, int ldz);
    interface
        integer(C_INT) function cula_zherdb(jobz,uplo,n,kd,a,lda,d,e,tau,z,ldz) &
            BIND(C,NAME="culaZherdb")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: jobz
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: kd
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
            integer(C_INT), value :: ldz
            complex(C_DOUBLE_COMPLEX), dimension(ldz,*) :: z
        end function
    end interface

    ! culaStatus culaSsysv(char uplo, int n, int nrhs, culaFloat* a, int lda, culaInt* ipiv, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_ssysv(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaSsysv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDsysv(char uplo, int n, int nrhs, culaDouble* a, int lda, culaInt* ipiv, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dsysv(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaDsysv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCsysv(char uplo, int n, int nrhs, culaFloatComplex* a, int lda, culaInt* ipiv, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_csysv(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaCsysv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZsysv(char uplo, int n, int nrhs, culaDoubleComplex* a, int lda, culaInt* ipiv, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zsysv(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaZsysv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaChesv(char uplo, int n, int nrhs, culaFloatComplex* a, int lda, culaInt* ipiv, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_chesv(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaChesv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZhesv(char uplo, int n, int nrhs, culaDoubleComplex* a, int lda, culaInt* ipiv, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zhesv(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaZhesv")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaSsytrd(char uplo, int n, culaFloat* a, int lda, culaFloat* d, culaFloat* e, culaFloat* tau);
    interface
        integer(C_INT) function cula_ssytrd(uplo,n,a,lda,d,e,tau) &
            BIND(C,NAME="culaSsytrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            real(C_FLOAT), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaDsytrd(char uplo, int n, culaDouble* a, int lda, culaDouble* d, culaDouble* e, culaDouble* tau);
    interface
        integer(C_INT) function cula_dsytrd(uplo,n,a,lda,d,e,tau) &
            BIND(C,NAME="culaDsytrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            real(C_DOUBLE), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaChetrd(char uplo, int n, culaFloatComplex* a, int lda, culaFloat* d, culaFloat* e, culaFloatComplex* tau);
    interface
        integer(C_INT) function cula_chetrd(uplo,n,a,lda,d,e,tau) &
            BIND(C,NAME="culaChetrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            real(C_FLOAT), dimension(*) :: d
            real(C_FLOAT), dimension(*) :: e
            complex(C_FLOAT_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaZhetrd(char uplo, int n, culaDoubleComplex* a, int lda, culaDouble* d, culaDouble* e, culaDoubleComplex* tau);
    interface
        integer(C_INT) function cula_zhetrd(uplo,n,a,lda,d,e,tau) &
            BIND(C,NAME="culaZhetrd")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            real(C_DOUBLE), dimension(*) :: d
            real(C_DOUBLE), dimension(*) :: e
            complex(C_DOUBLE_COMPLEX), dimension(*) :: tau
        end function
    end interface

    ! culaStatus culaSsytrf(char uplo, int n, culaFloat* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_ssytrf(uplo,n,a,lda,ipiv) &
            BIND(C,NAME="culaSsytrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaDsytrf(char uplo, int n, culaDouble* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_dsytrf(uplo,n,a,lda,ipiv) &
            BIND(C,NAME="culaDsytrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaCsytrf(char uplo, int n, culaFloatComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_csytrf(uplo,n,a,lda,ipiv) &
            BIND(C,NAME="culaCsytrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaZsytrf(char uplo, int n, culaDoubleComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_zsytrf(uplo,n,a,lda,ipiv) &
            BIND(C,NAME="culaZsytrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaChetrf(char uplo, int n, culaFloatComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_chetrf(uplo,n,a,lda,ipiv) &
            BIND(C,NAME="culaChetrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaZhetrf(char uplo, int n, culaDoubleComplex* a, int lda, culaInt* ipiv);
    interface
        integer(C_INT) function cula_zhetrf(uplo,n,a,lda,ipiv) &
            BIND(C,NAME="culaZhetrf")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
        end function
    end interface

    ! culaStatus culaSsytrs(char uplo, int n, int nrhs, culaFloat* a, int lda, culaInt* ipiv, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_ssytrs(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaSsytrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDsytrs(char uplo, int n, int nrhs, culaDouble* a, int lda, culaInt* ipiv, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dsytrs(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaDsytrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCsytrs(char uplo, int n, int nrhs, culaFloatComplex* a, int lda, culaInt* ipiv, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_csytrs(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaCsytrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZsytrs(char uplo, int n, int nrhs, culaDoubleComplex* a, int lda, culaInt* ipiv, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zsytrs(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaZsytrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaChetrs(char uplo, int n, int nrhs, culaFloatComplex* a, int lda, culaInt* ipiv, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_chetrs(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaChetrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZhetrs(char uplo, int n, int nrhs, culaDoubleComplex* a, int lda, culaInt* ipiv, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zhetrs(uplo,n,nrhs,a,lda,ipiv,b,ldb) &
            BIND(C,NAME="culaZhetrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), dimension(*) :: ipiv
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaStrtri(char uplo, char diag, int n, culaFloat* a, int lda);
    interface
        integer(C_INT) function cula_strtri(uplo,diag,n,a,lda) &
            BIND(C,NAME="culaStrtri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: diag
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaDtrtri(char uplo, char diag, int n, culaDouble* a, int lda);
    interface
        integer(C_INT) function cula_dtrtri(uplo,diag,n,a,lda) &
            BIND(C,NAME="culaDtrtri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: diag
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaCtrtri(char uplo, char diag, int n, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_ctrtri(uplo,diag,n,a,lda) &
            BIND(C,NAME="culaCtrtri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: diag
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZtrtri(char uplo, char diag, int n, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_ztrtri(uplo,diag,n,a,lda) &
            BIND(C,NAME="culaZtrtri")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: diag
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaStrtrs(char uplo, char trans, char diag, int n, int nrhs, culaFloat* a, int lda, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_strtrs(uplo,trans,diag,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaStrtrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: trans
            character(C_CHAR), value :: diag
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDtrtrs(char uplo, char trans, char diag, int n, int nrhs, culaDouble* a, int lda, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dtrtrs(uplo,trans,diag,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaDtrtrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: trans
            character(C_CHAR), value :: diag
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCtrtrs(char uplo, char trans, char diag, int n, int nrhs, culaFloatComplex* a, int lda, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_ctrtrs(uplo,trans,diag,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaCtrtrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: trans
            character(C_CHAR), value :: diag
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZtrtrs(char uplo, char trans, char diag, int n, int nrhs, culaDoubleComplex* a, int lda, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_ztrtrs(uplo,trans,diag,n,nrhs,a,lda,b,ldb) &
            BIND(C,NAME="culaZtrtrs")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: trans
            character(C_CHAR), value :: diag
            integer(C_INT), value :: n
            integer(C_INT), value :: nrhs
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCgeConjugate(int m, int n, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_cge_conjugate(m,n,a,lda) &
            BIND(C,NAME="culaCgeConjugate")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZgeConjugate(int m, int n, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_zge_conjugate(m,n,a,lda) &
            BIND(C,NAME="culaZgeConjugate")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaCtrConjugate(char uplo, char diag, int m, int n, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_ctr_conjugate(uplo,diag,m,n,a,lda) &
            BIND(C,NAME="culaCtrConjugate")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: diag
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZtrConjugate(char uplo, char diag, int m, int n, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_ztr_conjugate(uplo,diag,m,n,a,lda) &
            BIND(C,NAME="culaZtrConjugate")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            character(C_CHAR), value :: uplo
            character(C_CHAR), value :: diag
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaSgeNancheck(int m, int n, culaFloat* a, int lda);
    interface
        integer(C_INT) function cula_sge_nancheck(m,n,a,lda) &
            BIND(C,NAME="culaSgeNancheck")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaDgeNancheck(int m, int n, culaDouble* a, int lda);
    interface
        integer(C_INT) function cula_dge_nancheck(m,n,a,lda) &
            BIND(C,NAME="culaDgeNancheck")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaCgeNancheck(int m, int n, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_cge_nancheck(m,n,a,lda) &
            BIND(C,NAME="culaCgeNancheck")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZgeNancheck(int m, int n, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_zge_nancheck(m,n,a,lda) &
            BIND(C,NAME="culaZgeNancheck")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaSgeTranspose(int m, int n, culaFloat* a, int lda, culaFloat* b, int ldb);
    interface
        integer(C_INT) function cula_sge_transpose(m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaSgeTranspose")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_FLOAT), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaDgeTranspose(int m, int n, culaDouble* a, int lda, culaDouble* b, int ldb);
    interface
        integer(C_INT) function cula_dge_transpose(m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaDgeTranspose")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            real(C_DOUBLE), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCgeTranspose(int m, int n, culaFloatComplex* a, int lda, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_cge_transpose(m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaCgeTranspose")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZgeTranspose(int m, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zge_transpose(m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaZgeTranspose")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaSgeTransposeInplace(int n, culaFloat* a, int lda);
    interface
        integer(C_INT) function cula_sge_transpose_inplace(n,a,lda) &
            BIND(C,NAME="culaSgeTransposeInplace")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_FLOAT), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaDgeTransposeInplace(int n, culaDouble* a, int lda);
    interface
        integer(C_INT) function cula_dge_transpose_inplace(n,a,lda) &
            BIND(C,NAME="culaDgeTransposeInplace")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            real(C_DOUBLE), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaCgeTransposeInplace(int n, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_cge_transpose_inplace(n,a,lda) &
            BIND(C,NAME="culaCgeTransposeInplace")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZgeTransposeInplace(int n, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_zge_transpose_inplace(n,a,lda) &
            BIND(C,NAME="culaZgeTransposeInplace")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaCgeTransposeConjugate(int m, int n, culaFloatComplex* a, int lda, culaFloatComplex* b, int ldb);
    interface
        integer(C_INT) function cula_cge_transpose_conjugate(m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaCgeTransposeConjugate")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_FLOAT_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaZgeTransposeConjugate(int m, int n, culaDoubleComplex* a, int lda, culaDoubleComplex* b, int ldb);
    interface
        integer(C_INT) function cula_zge_transpose_conjugate(m,n,a,lda,b,ldb) &
            BIND(C,NAME="culaZgeTransposeConjugate")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: m
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
            integer(C_INT), value :: ldb
            complex(C_DOUBLE_COMPLEX), dimension(ldb,*) :: b
        end function
    end interface

    ! culaStatus culaCgeTransposeConjugateInplace(int n, culaFloatComplex* a, int lda);
    interface
        integer(C_INT) function cula_cge_transpose_conjugate_inplace(n,a,lda) &
            BIND(C,NAME="culaCgeTransposeConjugateInplace")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_FLOAT_COMPLEX), dimension(lda,*) :: a
        end function
    end interface

    ! culaStatus culaZgeTransposeConjugateInplace(int n, culaDoubleComplex* a, int lda);
    interface
        integer(C_INT) function cula_zge_transpose_conjugate_inplace(n,a,lda) &
            BIND(C,NAME="culaZgeTransposeConjugateInplace")
            ! Consult the API Reference for all array sizes
            use ISO_C_BINDING
            integer(C_INT), value :: n
            integer(C_INT), value :: lda
            complex(C_DOUBLE_COMPLEX), dimension(lda,*) :: a
        end function
    end interface
   
    interface
      integer(C_INT) function cula_initialize() BIND (C,NAME="culaInitialize")
        use iso_c_binding
      end function
    end interface

    interface
      integer(C_INT) function cula_shutdown() BIND (C,NAME="culaShutdown")
        use iso_c_binding
      end function
    end interface

end module

