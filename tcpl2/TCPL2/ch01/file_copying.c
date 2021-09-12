# include <stdio.h>

int main(){
  int c;
  //getchar() read sthe next input  character
  c = getchar();
  //!= means not equal to
  //EOF means "End Of Line"
  //note that running it in the terminal, hitting enter or return (on mac) wont mean it's the end of line
  //to simulate EOF in the terminal, you type control + D
  while (c!=EOF){
    //putchar prints a character
    putchar(c);
    c=getchar();
  }
  //note that c is an int
  //we do this because EOF in <stdio.h> is AN INTEGER
  //we use int instead of char for variable c so that we can handle EOF
  //granted, we can still use char here but using int is better to hold EOF in addition to any possible char
}
