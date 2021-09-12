# include <stdio.h>
//program counts characters

int main(){
  long nc; //we use long instead of int
  //on some machines, int is 16 bits and max value is 32767
  nc = 0;
  while (getchar() != EOF)
    //this also counts the newline character
    ++nc; //++ operators means increment by one, and equivalent to:
  //nc = nc + 1;
  printf("%ld\n", nc);
}
