# include <stdio.h>
//this counts the number of lines of a program
int main(){
  int c, nl;
  nl = 0;
  while ((c=getchar()) != EOF)
    //== is equality operator and distinct from = assignment operator
    if(c=='\n') //'\n' newline character corresponds to 10 in ASCII
      ++nl;
  printf("%d\n", nl);
}
