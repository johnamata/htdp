# include <stdio.h>

//count blanks, tabs, and newlines

int main(){
  int i, blanks, tabs, newlines;
  blanks = 0, tabs =0, newlines = 0;
  while ((i=getchar()) != EOF){
    if (i == '\t')
      ++tabs;
    if (i == ' ')
      ++blanks;
    if (i == '\n')
      ++newlines;
  }
  printf("blanks: %d | tabs: %d | newlines: %d\n", blanks, tabs, newlines);
}
