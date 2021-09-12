# include <stdio.h>

#define IN 1
#define OUT 0

int main()
//tried a lot of characters and it counts
//tried entering no characters (ending with CTRL + D), and it gets 0 0 0
//entered just 'a' and got 1 1 2
//entered '  a  a  ' and got 1 2 9
{
  int c, nl, nw, nc, state;

  state = OUT;
  nl = nw = nc = 0;
  while ((c = getchar()) != EOF){
    ++nc;
    if(c == '\n')
      ++nl;
    if(c == ' ' || c =='\n' || c == '\t')
      state = OUT;
    else if(state == OUT){
      state = IN;
      ++nw;
    }
  }
  printf("%d %d %d\n", nl, nw, nc);
}
