Program DeviceInterfaceCula
  use cudafor
  use cula_lapack_device
  use cula_lapack
  implicit none

  real :: A(3,3), b(3)
  real, device, dimension(:,:), allocatable :: A_d
  real, device, dimension(:), allocatable :: b_d
  integer, device, dimension(:), allocatable :: piv_d
  integer :: i, j, pivot(3), status
    
  allocate(A_d(3,3))
  allocate(b_d(3))
  allocate(piv_d(3))

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

  A_d = A
  b_d = b
  piv_d = pivot
  
  status = CULA_INITIALIZE()
  status = CULA_DEVICE_DGESV(3,1,A_d,3,piv_d,b_d,3)
  
  status = CULA_SHUTDOWN()

  b = b_d

  do i = 1, 3
    write(*,*) b(i)
  enddo
end
