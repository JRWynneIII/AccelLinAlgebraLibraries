PROGRAM CULA_TEST
  use cula_lapack
  INTRINSIC          MAX, MIN

  INTEGER M, N, K, info, lda, lwork, status
  PARAMETER ( M = 8, N = 8, K = 8, lwork = 8*64  )

  REAL A(M, N)
  REAL TAU(K)
  REAL work(lwork)
  A(1,1)=3.1
  A(1,2)=1.3
  A(1,3)=-5.7
  A(2,1)=1.0
  A(2,2)=-6.9
  A(2,3)=5.8
  A(3,1)=3.4
  A(3,2)=7.2
  A(3,3)=-8.8
  ! define vector b, make b a matrix and you can solve multiple
  ! equations with the same A but different b

  status = CULA_SGEQRF(M, N, A, M, TAU)
  WRITE(*,*) A
END

