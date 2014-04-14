#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include "magma.h"

int main(void)
{
  magma_init();
  double *b, *AT, *b_d, *AT_d;
  double A[3][3];
  int a = 0;
  magma_int_t* pivot;
  magma_int_t i = 0, j = 0, ok, status;
  magma_int_t m = 3, n = 1, mm = 9, mn = 3;
  magma_int_t info;

  AT = (double*)malloc(9*sizeof(double));
  b = (double*)malloc(3*sizeof(double));
  pivot = (magma_int_t*)malloc(3*sizeof(int));

  A[0][0] = 3.1;
  A[0][1] = 1.3;
  A[0][2] = -5.7;
  A[1][0] = 1;
  A[1][1] = -6.9;
  A[1][2] = 5.8;
  A[2][0] = 3.4;
  A[2][1] = 7.2;
  A[2][2] = -8.8;

  b[0] = -1.3;
  b[1] = -0.1;
  b[2] = 1.8;
  for(a = 0; a<3; a++)
    for(j = 0; j<3; j++)
      AT[j+3*a]=A[j][a];

  //Use magma_dmalloc to allocate matrix on device
  magma_dmalloc(&AT_d, m*m);
  magma_dmalloc(&b_d, m);
  //Use magma_dsetmatrix to copy in the values of the matricies on the host to the matricies 
  //allocated on the device from magma_dmalloc
  magma_dsetmatrix( m, m, AT, m, AT_d, m);
  magma_dsetmatrix(m, n, b, m, b_d, m);

  //Run magma_dgesv_gpu to calculate it on the gpu
  magma_dgesv_gpu(m, 1, AT_d, m, pivot, b_d, m, &info);
  //finally use magma_dgetmatrix to copy the matrix b_d back to the host to store in b
  magma_dgetmatrix(m,n,b_d,m,b,m);

  for (i = 0; i < 3; i++)
  {
    printf("%f\n", b[i]);
  }
  return 0;
}
