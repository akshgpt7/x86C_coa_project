#include <stdio.h>
#include "number_operations.h"

int main() {
  // initializing arguments to pass
  int num = 16;
  int a = 10; int b = 2;


  int root = sqroot(num);
  printf("calling sqroot: square root of %i is %i\n\n", num, root);


  int sq = findsquare(num);
  printf("calling findsquare: square of %i is %i\n\n", num, sq);


  int parity = paritycheck(num);
  if (parity == 0) {
    printf("calling paritycheck: parity of %i is even\n\n", num);
  }
  else {
    printf("calling paritycheck: parity of %i is odd\n\n", num);
  }


  int ans = twotopower(num);
  printf("calling twotopower: 2 raised to the power %i is %i\n\n", num, ans);


  int sum = add(a, b);
  printf("calling add: sum of %i and %i is %i\n\n", a, b, sum);


  int diff = sub(a, b);
  printf("calling sub: difference of %i and %i is %i\n\n", a, b, diff);


  int product = mul(a, b);
  printf("calling mul: product of %i and %i is %i\n\n", a, b, product);


  int quotient = div(a, b);
  printf("calling div: %i divided by %i is %i\n\n", a, b, quotient);

  
  return 0;


}
