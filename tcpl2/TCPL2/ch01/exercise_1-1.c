# include <stdio.h>

int main(){
  printf("hello, world\n");
  printf("hello, world");
  printf("\n");
  printf("hello,");
  printf(" world");
  printf("\n");
  //following will print an error:
  //printf(hello, world
  // ");
}
