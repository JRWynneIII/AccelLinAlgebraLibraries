#include <stdio.h>
#include <stdlib.h>
#include <cula.h>

void main()
{
  culaFloat b[3], *AT;
  culaFloat A[3][3];
  culaInt* pivot;
  int i = 0, j = 0, ok, status;
  int a = 0;
  int m = 3, n = 1, mm = 9, mn = 3;
  int info;

  AT = (culaFloat*)malloc(9*sizeof(culaFloat));
  pivot = (culaInt*)malloc(3*sizeof(culaInt));


  A[0][0] = (culaFloat)3.1;
  A[0][1] = (culaFloat)1.3;
  A[0][2] = (culaFloat)-5.7;
  A[1][0] = (culaFloat)1;
  A[1][1] = (culaFloat)-6.9;
  A[1][2] = (culaFloat)5.8;
  A[2][0] = (culaFloat)3.4;
  A[2][1] = (culaFloat)7.2;
  A[2][2] = (culaFloat)-8.8;

  b[0] = (culaFloat)-1.3;
  b[1] = (culaFloat)-0.1;
  b[2] = (culaFloat)1.8;

  for(a = 0; a<3; a++)
    for(j = 0; j<3; j++)
      AT[j+3*a]=A[j][a];

  culaInitialize();
  culaSgesv(m, n, AT, m, pivot, b, m);
  culaShutdown();
  for (i = 0; i < 3; i++)
  {
        printf("%f\n", b[i]);
  }
  fflush(stdout);
}
