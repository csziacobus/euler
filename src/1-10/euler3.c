#include <stdio.h>

int
main()
{
  long long int in = 600851475143;
  int max;
  int i = 2;
  while (in != 1)
    {
      if (!(in % i))
	max = i;
      while (!(in % i))
	{
	  in /= i;
	}
      i++;
    }
  printf (" answer: %d", max);
  return 0;
}
	  
   
