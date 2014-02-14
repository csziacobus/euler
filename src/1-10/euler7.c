#include <stdio.h>

int
main ()
{
  int sieve[200000]; /* x/ln(x) ~ primes less than x */
  int i;
  int j;
  for (i = 0; i <= 200000; i++)
    sieve[i] = 1;
  for (i = 2; i <= 447; i++) /* sqrt (200000) */
    {
      if (sieve[i])
	{
	  for (j = i*i; j <= 200000; j += i)
	    sieve[j] = 0;
	}
    }
  /* use i and j differently now */
  for (i = 2, j = 0; j < 10001; i++)
    {
      if (sieve[i])
	j++;
    }
  printf ("answer: %d\n", i - 1);
  return 0;
}
  
