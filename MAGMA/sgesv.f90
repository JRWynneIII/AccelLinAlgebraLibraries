Program LinearEquations
! This solves the matrix equation A*x=b using MAGMA
! Include both the custom magma module (magma.f90) and the ISO_C_BINDING module
! so that the variables that are passed to the magma function are of the right C
! type
  use magma
  use iso_c_binding
  Implicit none

! Declarations, notice single precision
  Real (KIND=C_FLOAT) :: A(3,3), b(3)
  Integer (KIND=C_INT) :: i, j, pivot(3), ok, status

! Define matrix A
  A(1,1)=3.1
  A(1,2)=1.3
  A(1,3)=-5.7
  A(2,1)=1.0
  A(2,2)=-6.9
  A(2,3)=5.8
  A(3,1)=3.4
  A(3,2)=7.2
  A(3,3)=-8.8

! Define vector b, make b a matrix and you can solve multiple
! equations with the same A but different b
  b(1)=-1.3
  b(2)=-0.1
  b(3)=1.8

! Find the solution using the MAGMA routine MAGMA_SGESV
  status = MAGMA_SGESV(3, 1, A, 3, pivot, b, 3, ok)

! Parameters in the order as they appear in the function call
!    order of matrix A, number of right hand sides (b), matrix A,
!    leading dimension of A, array that records pivoting, 
!    result vector b on entry, x on exit, leading dimension of b
!    return value   

! print the vector x
  do i=1, 3
     write(*,*) b(i)
  end do
end
