#include <stdio.h>

int
main()
{
  int sum = 2;
  int term_1 = 1;
  int term_2 = 2;
  int term_sum;
  while (term_sum < 4000000)
    {
      term_sum = term_1 + term_2;
      term_1 = term_2;
      term_2 = term_sum;
      if (term_sum % 2 == 0)
	sum += term_sum;
    }
  printf("answer: %d\n", sum);
  return 0;
}
	
