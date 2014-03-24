#include <stdio.h>
#include <stdlib.h>
#include <magma.h>

int main()
{
  float *b, *AT;
  float A[3][3];
  int a = 0;
  magma_int_t* pivot;
  magma_int_t i = 0, j = 0, ok, status;
  magma_int_t m = 3, n = 1, mm = 9, mn = 3;
  magma_int_t info;

  AT = (float*)malloc(9*sizeof(int));
  b = (float*)malloc(3*sizeof(int));
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

  magma_sgesv(m, n, AT, m, pivot, b, m, &info);

  for (i = 0; i < 3; i++)
        printf("%f\n", b[i]);
  return 0;
}
