#include <stdio.h>

int main(){
  printf("hello, world\c");
  //will print:
  //hello, worldc
}
/*
following error/warning message in terminal as we added \c:

exercise_1-2.c:4:23: warning: unknown escape sequence '\c'
      [-Wunknown-escape-sequence]
  printf("hello, world\c");
                      ^~
1 warning generated.

*/
