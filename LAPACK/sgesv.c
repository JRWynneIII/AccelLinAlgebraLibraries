#include <stdio.h>
#include <stdlib.h>
#include <magma.h>

void sgesv_(int *, int *, float *, int *, int *, float *, int *, int * );

int main()
{
  float *b, *AT;
  float A[3][3];
  int* pivot;
  int i = 0, j = 0, ok, status;
  int m = 3, n = 1, mm = 9, mn = 3;
  int info;

  AT = (float*)malloc(9*sizeof(int));
  b = (float*)malloc(3*sizeof(int));
  pivot = (int*)malloc(3*sizeof(int));


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

  for(int a = 0; a<3; a++)
    for(int j = 0; j<3; j++)
      AT[j+3*a]=A[j][a];

  sgesv_(&m, &n, AT, &m, pivot, b, &m, &info);

  for (int i = 0; i < 3; i++)
        printf("%f\n", b[i]);
  return 0;
}
