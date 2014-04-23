Program LinearEquations
  use cula_lapack
  Implicit none

  Real*4 A(3,3), b(3)
  integer i, j, pivot(3), ok
  integer status

  A(1,1)=3.1
  A(1,2)=1.3
  A(1,3)=-5.7
  A(2,1)=1.0
  A(2,2)=-6.9
  A(2,3)=5.8
  A(3,1)=3.4
  A(3,2)=7.2
  A(3,3)=-8.8

  b(1)=-1.3
  b(2)=-0.1
  b(3)=1.8

  status = CULA_INITIALIZE()
  status = CULA_SGESV(3, 1, A, 3, pivot, b, 3)
  status = CULA_SHUTDOWN()

! write(*,*) the vector x
  do i=1, 3
     write(*,*) b(i)
  end do
end
