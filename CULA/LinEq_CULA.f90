Program LinearEquations
  use cula_lapack
! solving the matrix equation A*x=b using cula
  Implicit none

! declarations, notice single precision
  Real*4 A(3,3), b(3)
  integer i, j, pivot(3), ok
  integer status

! define matrix A
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
  b(1)=-1.3
  b(2)=-0.1
  b(3)=1.8
! Initialize the Accelerator/Start a CULA instance
  status = CULA_INITIALIZE()
! find the solution using the CULA routine SGESV
  status = CULA_SGESV(3, 1, A, 3, pivot, b, 3)
!
! parameters in the order as they appear in the function call
!    order of matrix A, number of right hand sides (b), matrix A,
!    leading dimension of A, array that records pivoting, 
!    result vector b on entry, x on exit, leading dimension of b
!    return value   
! 
! shutdown the CULA instance
  status = CULA_SHUTDOWN()
! write(*,*) the vector x
  do i=1, 3
     write(*,*) b(i)
  end do
end
