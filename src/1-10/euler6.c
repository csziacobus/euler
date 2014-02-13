#include <stdio.h>

int
main()
{
  int i;
  int sum = 0;
  for (i = 0; i <= 100; i++)
    sum += i * i * (i - 1);
  printf("answer; %d\n", sum);
  return 0;
}
