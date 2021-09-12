#include <stdio.h>

//count digits, white space, and others

int main(){
  int c, i, nwhite, nother;
  //declares ndigit to be an array of 10 integers
  int ndigit[10];
  //array subscripts always start with 0 in c
  //for example: ndigit[0], ndigit[1], ..., ndigit[69]
  nwhite = nother = 0;
  for(i = 0; i < 10; ++i)
    ndigit[i] = 0;

  while((c = getchar()) != EOF)
    //the following if else branches are what we call multiway branches
    //determines whether the character in c is a digit
    if(c >= '0' && c <= '9')
      //if it is, then the numeric value is c - '0'
      ++ndigit[c-'0'];
  //following determines if character is a digit, white space, tab
    else if (c == ' ' || c == '\n' || c == '\t')
      //or something else
      ++nwhite;
    else
      ++nother;
  printf("digits =");
  for(i = 0; i < 10; ++i)
    printf(" %d", ndigit[i]);
  printf(", white space = %d, other = %d\n", nwhite, nother);
}
