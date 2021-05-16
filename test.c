#include <stdio.h>
#include "special_numbers.h"

int main() {
  int result;
  int num = 2;

  result = findsquare(num);
  printf("calling findsquare: Square of %i is %i\n", num, result);
  
  return 0;
}
