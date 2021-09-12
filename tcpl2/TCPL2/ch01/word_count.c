# include <stdio.h>

#define IN 1
#define OUT 0

int main()
{
  //this program counts the ff
  //nl = line
  //nw = word
  //nc = character
  int c, nl, nw, nc, state;

  state = OUT;
  //sets all 3 variables to 0
  nl = nw = nc = 0;
  //assignment is associated from RIGHT TO LEFT
  //like as if we've written
  //nl = (nw = (nc = 0));
  while ((c = getchar()) != EOF){
    ++nc;
    if(c == '\n')
      ++nl;
    //the operator \\ means OR
    //these expressions are evaluated from LEFT TO RIGHT
    if(c == ' ' || c =='\n' || c == '\t')
      state = OUT;
    //ELSE means an alternative action to be made
    else if(state == OUT){
      state = IN;
      ++nw;
    }
  }
  printf("%d %d %d\n", nl, nw, nc);
}
