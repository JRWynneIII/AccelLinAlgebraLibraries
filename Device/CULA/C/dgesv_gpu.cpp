#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <cuda_runtime.h>
#include <cula_lapack_device.h>

using namespace std;

void checkStatus(culaStatus status)
{
    char buf[256];

    if(!status)
        return;

    culaGetErrorInfoString(status, culaGetErrorInfo(), buf, sizeof(buf));
    printf("%s\n", buf);

    culaShutdown();
    exit(EXIT_FAILURE);
}

int main(void)
{
  culaDeviceDouble b[3], *b_d, *A_d, *AT;
  culaDeviceDouble A[3][3];
  culaDeviceInt* pivot, *piv_d;
  culaStatus status;
  int i = 0, j = 0, ok;
  int a = 0;
  int m = 3, n = 1, mm = 9, mn = 3;
  int info;

  AT = (culaDeviceDouble*)malloc(9*sizeof(culaDeviceDouble));
  pivot = (culaDeviceInt*)malloc(3*sizeof(culaDeviceInt));

  cudaMalloc((void**)&A_d, m*m*sizeof(culaDeviceDouble));
  cudaMalloc((void**)&b_d, m*n*sizeof(culaDeviceDouble));

  status = culaInitialize();
  checkStatus(status);

  A[0][0] = (culaDeviceDouble)3.1;
  A[0][1] = (culaDeviceDouble)1.3;
  A[0][2] = (culaDeviceDouble)-5.7;
  A[1][0] = (culaDeviceDouble)1;
  A[1][1] = (culaDeviceDouble)-6.9;
  A[1][2] = (culaDeviceDouble)5.8;
  A[2][0] = (culaDeviceDouble)3.4;
  A[2][1] = (culaDeviceDouble)7.2;
  A[2][2] = (culaDeviceDouble)-8.8;

  b[0] = (culaDeviceDouble)-1.3;
  b[1] = (culaDeviceDouble)-0.1;
  b[2] = (culaDeviceDouble)1.8;

  for(a = 0; a<3; a++)
    for(j = 0; j<3; j++)
      AT[j+3*a]=A[j][a];

  cudaMemcpy(A_d, AT, m*m*sizeof(culaDeviceDouble), cudaMemcpyHostToDevice);
  cudaMemcpy(b_d, b, m*n*sizeof(culaDeviceDouble), cudaMemcpyHostToDevice);
  cudaMemcpy(piv_d, pivot, m*n*sizeof(culaDeviceInt), cudaMemcpyHostToDevice);
  status = culaDeviceDgesv(m, n, AT, m, piv_d, b, m);
  checkStatus(status);
  culaShutdown();
  cudaMemcpy(b, b_d, m*n*sizeof(culaDeviceDouble), cudaMemcpyDeviceToHost);
  
  for (i = 0; i < 3; i++)
  {
        printf("%f\n", b[i]);
  }
  fflush(stdout);
}
